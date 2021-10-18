/*  Software for the enhanced keyboard controlled kernal switch
 *  by Jaystonian, 2021
 *  
 *  Based upon the work of Sven Peterson's keyboard controlled kernal switch Rev0.2, 2020
 *  
 *  Revision History 
 *  Rev. 1.00: initial release
 */

#include <EEPROM.h>

enum PinMap { //ATMEGA328P
    _PD0 = 0,     _PD1, /* 1*/  _PD2, /* 2*/  _PD3, /* 3*/
    _PD4, /* 4*/  _PD5, /* 5*/  _PD6, /* 6*/  _PD7, /* 7*/
    _PB0, /* 8*/  _PB1, /* 9*/  _PB2, /*10*/  _PB3, /*11*/
    _PB4, /*12*/  _PB5, /*13*/  _PC0, /*14*/  _PC1, /*15*/
    _PC2, /*16*/  _PC3, /*17*/  _PC4, /*18*/  _PC5, /*19*/
    _PB6, /*20*/  _PB7, /*21*/  _PC6  /*22*/
};

/* MODE OF USE

 For resets: Holding RESTORE for 1.5s resets, 3.0s is EXROM reset

{when mode is 23 or 32}
 Restore+(1-2) = Reset with preset KERNAL selection
 Restore+(3-4) = Reset with preset Utility selection
 Restore+(9) = increment kernal (and reset)
 Restore+(0) = increment utility (and reset)
 
 Store(5,6,7,8)
 Restore+(5-6) = Save current Kernal as preset in 1 or 2 (no reset)
 Restore+(7-8) = Save current Utility as preset in 3 or 4 (no reset)

 Keys 1,2,5,6,9 are for Kernal-side outputs (aka KAddrA value)
 Keys 3,4,7,8,0 are for Utility-side outputs (aka KAddrB value)

{when mode is 14 or 41}
-- increment is only needed for one, acting as a toggle

*/

// Configuration (This device only has 5 lines for output)
#define CONFIG_23 //AB=KAddrA, CDE=KAddrB
//#define CONFIG_32 //AB=KAddrA, CDE=KAddrB
//#define CONFIG_14 //A=KAddrA, BCDE=KAddrB
//#define CONFIG_41 //ABCD=KAddrA, E=KAddrB

const int cnRestoreCount = 2000; // count appr. 2 seconds for RestoreKey before Reset
const int cnExromCount = 3000;   // limit for EXROM reset
const int cnSwitchDelay = 2000;  // give some delay to release the RESTORE key
const int cnLoopDelay = 1000;    // delay ~1ms per loop
const int cnScanDelay = 10000;   // delay in ms before reset for no scan activity
const int cnScanLoopInc = 33;   // delay in ms during scan loop
const int cnResetDelay1 = 100;
const int cnResetDelay2 = 300;
const int cnResetDelay3 = 300;

#ifdef CONFIG_23
const byte MAX_SELECT_A = 3; //2 lines
const byte MAX_SELECT_B = 7; //3 lines
#endif
 
#ifdef CONFIG_32
const byte MAX_SELECT_A = 7; //4 lines
const byte MAX_SELECT_B = 3; //2 lines
#endif

#ifdef CONFIG_14
const byte MAX_SELECT_A = 1; //1 line
const byte MAX_SELECT_B = 15; //4 lines
#endif

#ifdef CONFIG_41
const byte MAX_SELECT_A = 15; //4 lines
const byte MAX_SELECT_B = 1; //1 line
#endif

// C64 Keyboard Mapping
const int cnRow0 = _PD2;        // Row signal, input, active low, INT0
const int cnRow3 = _PD3;        // Row signal, input, active low, INT1
const int cnCol1 = _PC0;        // input, column signal, active low
const int cnCol2 = _PC1;        // input, column signal, active low
const int cnCol3 = _PC2;        // input, column signal, active low
const int cnCol4 = _PC3;        // input, column signal, active low
const int cnCol7 = _PC4;        // input, column signal, active low

// Selector Output
const int cnKSW_A = _PB1;
const int cnKSW_B = _PB0;
const int cnKSW_C = _PD7;
const int cnKSW_D = _PD6;
const int cnKSW_E = _PD5;

const int cnRESET = _PD4;     // output, RESET signal for the C64
const int cnRESTORE = _PC5;   // input, RESTORE key, active low
const int cnEXROM = _PB2;     // /EXROM Pin connected to pin header J4, pin 5 


// other constants
#define EEPROMAddrA 0        // EEPROM Address of last kernal selection (KAddrA)
#define EEPROMAddrB 1        // EEPROM Address of last kernal selection (KAddrB)
#define EEPROMAddrS 2        // EEPROM Addresses of stored selections (0..3)

// variables
byte KAddrA = 0;             // Address bits for selected Kernal
byte KAddrB = 0;             // Address bits for selected Utility
byte byteRead = 0;
bool RestoreKey = 0;         // holds the info if the restore key is pressed 
bool bUtility = 0;
bool oldRestoreKey = 0;      // remeber the old status to compare
int  countup = 0;            // counter for restore key time measurement
byte key = 128;              // calculate the Key
char buf[128];
bool bInc = false;
byte columns;                // variable for reading out the column
int scan_cnt = 0;            // 5000 miliseconds without scan changing to kernal #1 and resetting
int scan_found = 0;          // flag for keybioard activity detected
bool exrom_mode = 0;         // exrom reset: 0 => no, 1 => yes

// Data Exchange variables for ISR (have to be volatile)
volatile bool NumPressed = 0;  // ISR flag for number pressed
volatile bool NumOdd = 0;      // ISR flag for odd numbers. Row0 => odd numbers, Row3 => even numbers
volatile byte ColData = 0x1F;  // column data

void setup() {
  // keyboard scan signals
  pinMode( cnRow0, INPUT_PULLUP);  // pullup required for MOS logic
  pinMode( cnRow3, INPUT_PULLUP);  // pullup required for MOS logic
  pinMode( cnCol1, INPUT_PULLUP);  // pullup required for MOS logic
  pinMode( cnCol2, INPUT_PULLUP);  // pullup required for MOS logic
  pinMode( cnCol3, INPUT_PULLUP);  // pullup required for MOS logic
  pinMode( cnCol4, INPUT_PULLUP);  // pullup required for MOS logic
  pinMode( cnCol7, INPUT_PULLUP);  // pullup required for MOS logic
  pinMode( cnRESTORE, INPUT_PULLUP);  // pullup required for MOS logic
  pinMode( cnEXROM, INPUT );      // it needs to be high impedance, will switch to LOW and OUTPUT when required.
  digitalWrite( cnEXROM, HIGH );

  // last kernal from eeprom
  KAddrA = EEPROM.read(EEPROMAddrA);
  KAddrB = EEPROM.read(EEPROMAddrB);

  // if out of range, the first blocks are selected.
  if (/*(KAddrA < 0) ||*/ (KAddrA > MAX_SELECT_A)) {
    KAddrA = 0;
    EEPROM.write(EEPROMAddrA, KAddrA);
  }
  if (/*(KAddrB < 0) ||*/ (KAddrB > MAX_SELECT_B)) {
    KAddrB = 0;
    EEPROM.write(EEPROMAddrB, KAddrB);
  }
  exrom_mode = 0;                 // initialize exrom mode (for reset). 0 = no exrom reset
  
  // Control outputs (for Kernal Adaptor and C64)
  SetAddressBits();               // set the MS address bits for the kernal ROM
  pinMode( cnKSW_A, OUTPUT );     // make it an output   
  pinMode( cnKSW_B, OUTPUT );     // make it an output   
  pinMode( cnKSW_C, OUTPUT );     // make it an output   
  pinMode( cnKSW_D, OUTPUT );     // make it an output   
  pinMode( cnKSW_E, OUTPUT );     // make it an output   
  digitalWrite( cnRESET, LOW );   // no reset for the C64
  pinMode( cnRESET, OUTPUT );     // make it an output

  scan_cnt = cnScanDelay;         // reset scan countdown
  scan_found = false;             // reset detection flag 
      
  attachInterrupt(digitalPinToInterrupt(cnRow0), ISR_row0, LOW); 
  attachInterrupt(digitalPinToInterrupt(cnRow3), ISR_row3, LOW);
  
  Serial.begin(9600);  // start serial interface
  // output status etc.
  Serial.println( "\nEnhanced C64 Keyboard Kernal Switch v1.00" );

  printf(buf,"Number of Kernals: %u and %u.\n", MAX_SELECT_A, MAX_SELECT_B);
  Serial.print(buf);

  printf(buf,"Current Selection: %u and %u.\n", KAddrA, KAddrB);
  Serial.print(buf);
}

// This function sets the address bits on the pin header
void SetAddressBits() {
   digitalWrite( cnRESET, HIGH );
   delay(50);

#ifdef CONFIG_23
   digitalWrite(cnKSW_A, (KAddrA & 1)?HIGH:LOW);
   digitalWrite(cnKSW_B, (KAddrA & 2)?HIGH:LOW);
   digitalWrite(cnKSW_C, (KAddrB & 1)?HIGH:LOW);
   digitalWrite(cnKSW_D, (KAddrB & 2)?HIGH:LOW);
   digitalWrite(cnKSW_E, (KAddrB & 4)?HIGH:LOW);
#endif
#ifdef CONFIG_32
   digitalWrite(cnKSW_A, (KAddrA & 1)?HIGH:LOW);
   digitalWrite(cnKSW_B, (KAddrA & 2)?HIGH:LOW);
   digitalWrite(cnKSW_C, (KAddrA & 4)?HIGH:LOW);
   digitalWrite(cnKSW_D, (KAddrB & 1)?HIGH:LOW);
   digitalWrite(cnKSW_E, (KAddrB & 2)?HIGH:LOW);
#endif
#ifdef CONFIG_14
   digitalWrite(cnKSW_A, (KAddrA & 1)?HIGH:LOW);
   digitalWrite(cnKSW_B, (KAddrB & 1)?HIGH:LOW);
   digitalWrite(cnKSW_C, (KAddrB & 2)?HIGH:LOW);
   digitalWrite(cnKSW_D, (KAddrB & 4)?HIGH:LOW);
   digitalWrite(cnKSW_E, (KAddrB & 8)?HIGH:LOW);
#endif
#ifdef CONFIG_41
   digitalWrite(cnKSW_A, (KAddrA & 1)?HIGH:LOW);
   digitalWrite(cnKSW_B, (KAddrA & 2)?HIGH:LOW);
   digitalWrite(cnKSW_C, (KAddrA & 4)?HIGH:LOW);
   digitalWrite(cnKSW_D, (KAddrA & 8)?HIGH:LOW);
   digitalWrite(cnKSW_E, (KAddrB & 1)?HIGH:LOW);
#endif

}

void ResetHardware() {
  digitalWrite( cnRESET, HIGH );                        // issue a reset pulse for the C64
  delay( cnResetDelay1 );                               // 100ms delay

  if (exrom_mode) {
    digitalWrite( cnEXROM, LOW );                       // exrom pin low
    pinMode( cnEXROM, OUTPUT );                         // and output
  }
  delay( cnResetDelay2 );                               // pulse duration: 100+300ms

  digitalWrite( cnRESET, LOW );
  if (exrom_mode) {
    delay( cnResetDelay3 );                             // EXROM should be longer LOW than RESET
    pinMode( cnEXROM, INPUT );                          // and input = high impedance (HIZ)
    digitalWrite( cnEXROM, HIGH );                      // exrom pin high
  }

  scan_cnt = cnScanDelay;                               // reset scan countdown
  scan_found = false;                                   // reset detection flag
  
  countup = 0;
}

void SwitchSelection() {
  digitalWrite( cnRESET, HIGH );                            // issue a reset pulse
  SetAddressBits();                                         // set the address bits A15..A13
  printf(buf,"New Selections: %u and %u\n", KAddrA, KAddrB);// send the status to serial
  Serial.print(buf);
  ResetHardware();
  delay(cnSwitchDelay);
}

// Interrupt Service Routine for Row0
void ISR_row0() {
  if (NumPressed == 0) {                       // only process info, after the flag was reset by main routine
     ColData = PINC & 0x1F;                    // read the columns
     scan_found = true;                        // any activity here indicates a working kernal
     NumOdd = 1;                               // cnRow0 has the odd numbers
     if ((ColData != 0x1F) && (ColData !=0)) { // only set the flag, when a number is pressed 
       NumPressed = 1;
     }  
  }
}

// Interrupt Service Routine for Row3
void ISR_row3 () {
  if (NumPressed == 0) {                       // only process info, after the flag was reset by main routine
     ColData = PINC & 0x1F;                    // read the columns
     scan_found = true;                        // any activity here indicates a working kernal
     NumOdd = 0;                               // cnRow3 has the even numbers
     if ((ColData != 0x1F) && (ColData !=0)) { // only set the flag, when a number is pressed 
       NumPressed = 1;
     }  
  }
}

void loop() {
  // find the scan activity to make sure, the selected Kernal is working
  if (!scan_found) {                              // if not yet a scan activity is detected
    columns = PINC & 0x1F;                        // read the column data
    if ((columns != 0x1F)) {                      // activity found?
      scan_found = true;                          // set flag
      Serial.println( "Keyboard scan detected."); 
    }
    else {
      if (scan_cnt > 0) {                         // if the count down is not elapsed
        --scan_cnt;                               // then decrement
        delayMicroseconds( cnScanLoopInc );
      }
      else {
        Serial.println( "No keyboard scan detected.");  // the count down is elapsed!
        KAddrB=KAddrA=0;                                // Reset selections
        EEPROM.write(EEPROMAddrA, KAddrA);              // and save in EEPROM
        EEPROM.write(EEPROMAddrB, KAddrB);              // and save in EEPROM
        SwitchSelection();
      }
    }
  }
  
  // process restore key 
  if (digitalRead( cnRESTORE ) == HIGH) {
     if (RestoreKey) {                // now no RESTORE, but last status was RESTORE => Restore key released
      
        if (countup > cnExromCount) {       // is the limit for EXROM reset reached?
          exrom_mode = 1;
          Serial.print( "EXROM mode: ");
        }
        
        if (countup > cnRestoreCount) {
          Serial.println("Restore key => Reseting");
          ResetHardware();
          exrom_mode = 0;
        }
     }
     RestoreKey = 0;                      // in case the reading is HIGH, the Restore key is not pressed
     countup = 0;                         // restart the count down
  }
  else {
    RestoreKey = 1;                       // in case the restore is pressed, count up
    if (++countup > cnExromCount) {          // time limit for EXROM reached?
       exrom_mode = 1;                    // activate EXROM mode
       Serial.println("EXROM mode: Restore key => Reseting");
       ResetHardware();
       RestoreKey = 0;
       countup = 0;
       exrom_mode = 0;
    }
  }
  
  // The ISR will set NumPressed to 1, in case some number key is pressed 
  // In case something is found, the column data, which was read by the ISR 
  // is being processed here.  
  if (NumPressed == 1) {                     // if a number key is pressed: process the data
    if ((ColData & B00010000) == 0) {        // column 7: "1"
      key = 1;
    }
    else if ((ColData & B00000001) == 0) {   // column 1: "3"
      key = 3;
    }
    else if ((ColData & B00000010) == 0) {   // column 2: "5"
      key = 5;
    }
    else if ((ColData & B00000100) == 0) {   // column 3: "7"
      key = 7;
    }
    else if ((ColData & B00001000) == 0) {   // column 4: "9"
      key = 9;
    }
        
    // The even numbers are on row 3, the odd numbers are on row 1
    // NumOdd is set by the ISR
    if (NumOdd == 0) {                       // the even number are higher by one
      ++key;
    }
    if (key == 10) {                         // in case it is a "0" 
      key = 0;
    }

    printf(buf,"Key %u detected.\n", key);
    Serial.print(buf);

    if(RestoreKey == 1) {    
      if(key > 4 && key < 9) { // 5..8 means store 1..4 with current KAddr
  
        bUtility = (key==7 || key==8);
        printf(buf,"Storing %u into Key %u.\n",bUtility?KAddrB:KAddrA,key-4);
        Serial.print(buf);
        EEPROM.write(EEPROMAddrS+key-5, bUtility?KAddrB:KAddrA);
  
      }else if(key == 9 || key == 0) {
        
        bInc = (key==0); //9=inc kernal,0=inc utility
        if(bInc){ //inc utility
          ++KAddrB;
          if(KAddrB > MAX_SELECT_B)
            KAddrB=0;
          EEPROM.write(EEPROMAddrB, KAddrB);                           // write it to the EEPROM
        }else{ //inc kernal
          ++KAddrA;
          if(KAddrA > MAX_SELECT_A)
            KAddrA = 0;
          EEPROM.write(EEPROMAddrA, KAddrA);                           // write it to the EEPROM
        }
        SwitchSelection();
        
      }else if ((key >= 1) && (key <= 4)) {       // restore pressed and key in range
        bUtility = (key>=3 && key<=4);
        byteRead = EEPROM.read(EEPROMAddrS+key-1);
        if(bUtility)
          EEPROM.write(EEPROMAddrB, byteRead);                           // write it to the EEPROM
        else
          EEPROM.write(EEPROMAddrA, byteRead);                           // write it to the EEPROM      
        SwitchSelection();
        
      }
    }
    else { //!if (NumPressed == 1)
      key = 128;                                                  // reset the key number
    }
    NumPressed = 0;                                               // reset the flag, so the ISR can process key matrix again
  }
  else {
    key = 128;                                                    // reset the key number
  }
  delayMicroseconds( cnLoopDelay );
}
