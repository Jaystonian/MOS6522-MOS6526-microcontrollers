/*  Software for the keyboard controlled kernal switch
 *  by Jaystonian, 2021
 *  
 *  Revision history 
 *  Rev. 0.0: initial release
 */

#define LED
//#define buzzer

enum PinMap { //ATMEGA328P
    _PD0 = 0,     _PD1, /* 1*/  _PD2, /* 2*/  _PD3, /* 3*/
    _PD4, /* 4*/  _PD5, /* 5*/  _PD6, /* 6*/  _PD7, /* 7*/
    _PB0, /* 8*/  _PB1, /* 9*/  _PB2, /*10*/  _PB3, /*11*/
    _PB4, /*12*/  _PB5, /*13*/  _PC0, /*14*/  _PC1, /*15*/
    _PC2, /*16*/  _PC3, /*17*/  _PC4, /*18*/  _PC5, /*19*/
    _PB6, /*20*/  _PB7, /*21*/  _PC6  /*22*/
};

#include <EEPROM.h>

/* MODE OF USE

EPROM A0..A12 for 8KB C64 kernal
EPROM A0..A13 for 16KB C64E kernal
EPROM ..A16 for 128x8KB eprom (010)
EPROM ..A17 for 256x8KB eprom (020)
EPROM ..A18 for 512x8KB eprom (040)
A..E for outputs, use #define for max addressing to compile different version based on device used



OLD
 restore+key for 1.5s = fast reset
 restore+key for 3.0s = full reset

NEW
 Presets(1,2,3,4) stored kernal numbers
 Restore+(1-4) for 1.5s = fast reset 
 Restore+(1-4) for 3.0s = full reset

 Restore+(9) for x = decrement SelectOutput and reset
 Restore+(0) for x = increment SelectOutput and reset
 
 Store(5,6,7,8)
 Restore+(5-8) for > 0.01s = Store Selected Kernal in 1-4 (no reset)

*/

// Configuration
const byte MAX_SELECT = 15; // For rotating output values (0-based, 0..15 = 16)
 
// C64 Keyboard Mapping
const int cnRow0 = _PD2;         // Row signal, input, active low, INT0
const int cnRow3 = _PD3;         // Row signal, input, active low, INT1
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

const int cnC64RESET = _PD4;     // output, RESET signal for the C64
const int cnRESTORE = _PC5;    // input, RESTORE key, active low
const int cnEXROM = _PB2;       // /EXROM Pin connected to pin header J4, pin 5 

const int cnRestoreCount = 2000; // count appr. 2 seconds for RestoreKey before Reset
const int cnExromCount = 3000;   // limit for EXROM reset

// other constants
#define EEPROMAddr 0        // EEPROM Address of last kernal selection (KAddr)
#define StoredAddr (EEPROMAddr+1) // EEPROM Addresses of stored selections (0..3)
#define ScanDelay 10000     // delay in ms before reset for no scan activity

// variables
byte KAddr = 0;             // Address bits for selected Kernal
bool RestoreKey = 0;        // holds the info if the restore key is pressed 
bool oldRestoreKey = 0;     // remeber the old status to compare
int  countup = 0;           // counter for restore key time measurement
byte key = 128;             // calculate the Key
char buf[128];
bool bInc = false;
byte columns;           // variable for reading out the column
int scan_cnt = 0;           // 5000 miliseconds without scan changing to kernal #1 and resetting
int scan_found = 0;         // flag for keybioard activity detected
bool exrom_mode = 0;    // exrom reset: 0 => no, 1 => yes

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
  KAddr = EEPROM.read(EEPROMAddr);

  // if out of range, the first kernal is selected.
  if ((KAddr < 0) || (KAddr > MAX_SELECT)) { //its unsigned but whatever 
    KAddr = 0;
    EEPROM.write(EEPROMAddr, KAddr);
  }
  exrom_mode = 0;                               // initialize exrom mode (for reset). 0 = no exrom reset
  
  // Control outputs (for Kernal Adaptor and C64)
  SetAddressBits( KAddr );        // set the MS address bits for the kernal ROM
  pinMode( cnKSW_A, OUTPUT );     // make it an output   
  pinMode( cnKSW_B, OUTPUT );     // make it an output   
  pinMode( cnKSW_C, OUTPUT );     // make it an output   
  pinMode( cnKSW_D, OUTPUT );     // make it an output   
  pinMode( cnKSW_E, OUTPUT );     // make it an output   
  digitalWrite( cnC64RESET, LOW );  // no reset for the C64
  pinMode( cnC64RESET, OUTPUT );    // make it an output

  scan_cnt = ScanDelay;         // reset scan countdown
  scan_found = false;           // reset detection flag 
      
  attachInterrupt(digitalPinToInterrupt(cnRow0), ISR_row0, LOW); 
  attachInterrupt(digitalPinToInterrupt(cnRow3), ISR_row3, LOW);
  
  Serial.begin(9600);  // start serial interface
  // output status etc.
  Serial.println( "\nEnhanced C64 Keyboard Kernal Switch v1.00" );

  printf(buf,"Number of Kernals: %u\n", MAX_SELECT);
  Serial.print(buf);
  
  printf(buf,"Kernal number: %u\n", KAddr);
  Serial.print(buf);
}

// This function sets the address bits on the pin header J4. Parameter is addr (0..7)
void SetAddressBits( byte addr ) {
   digitalWrite( cnC64RESET, HIGH );
   delay(50);
   
   digitalWrite(cnKSW_A, (addr & 1)?HIGH:LOW);
   digitalWrite(cnKSW_B, (addr & 2)?HIGH:LOW);
   digitalWrite(cnKSW_C, (addr & 4)?HIGH:LOW);
   digitalWrite(cnKSW_D, (addr & 8)?HIGH:LOW);
   digitalWrite(cnKSW_E, (addr & 16)?HIGH:LOW);
   
}

void ResetHardware() {
  digitalWrite( cnC64RESET, HIGH );                            // issue a reset pulse for the C64
  delay( 100 );                                              // 100ms delay

  if (exrom_mode == 1) {
    digitalWrite( cnEXROM, LOW );                             // exrom pin low
    pinMode( cnEXROM, OUTPUT );                               // and output
  }
  delay( 300 );                                              // pulse duration: 100+300ms

  digitalWrite( cnC64RESET, LOW );
  if (exrom_mode == 1) {
    delay( 300 );                                            // EXROM should be 300ms longer LOW than RESET
    pinMode( cnEXROM, INPUT );                                // and input = high impedance (HIZ)
    digitalWrite( cnEXROM, HIGH );                            // exrom pin high
  }

  scan_cnt = ScanDelay;                                    // reset scan countdown
  scan_found = false;                                      // reset detection flag
  
  countup = 0;
}

void SwitchKernal() {
  digitalWrite( cnC64RESET, HIGH );                            // issue a reset pulse for the C64
  SetAddressBits( KAddr );                                   // set the address bits A15..A13
  printf(buf,"New KERNAL number: %u\n", KAddr);       // send the status to serial
  Serial.print(buf);
  ResetHardware();                                                // Reset the C64
  delay( 2000 );                                             // give some delay to release the RESTORE key
}

// Interrupt Service Routine for Row0
void ISR_row0() {
  if (NumPressed == 0) {                  // only process info, after the flag was reset by main routine
     ColData = PINC & 0x1F;               // read the columns
     scan_found = true;                   // any activity here indicates a working kernal
     NumOdd = 1;                          // cnRow0 has the odd numbers
     if ((ColData != 0x1F) && (ColData !=0)) {               // only set the flag, when a number is pressed 
       NumPressed = 1;
     }  
  }
}

// Interrupt Service Routine for Row3
void ISR_row3 () {
  if (NumPressed == 0) {                  // only process info, after the flag was reset by main routine
     ColData = PINC & 0x1F;               // read the columns
     scan_found = true;                   // any activity here indicates a working kernal
     NumOdd = 0;                          // cnRow3 has the even numbers
     if ((ColData != 0x1F) && (ColData !=0)) { // only set the flag, when a number is pressed 
       NumPressed = 1;
     }  
  }
}

void loop() {
  // find the scan activity to make sure, the selected Kernal is working
  if (scan_found == false) {                            // if not yet a scan activity is detected
    columns = PINC & 0x1F;                              // read the column data
    if ((columns != 0x1F)) {                            // activity found?
      scan_found = true;                                // set flag
      Serial.println( "Keyboard scan detected."); 
    }
    else {
      if (scan_cnt > 0) {                               // if the count down is not elapsed
        --scan_cnt;                                     // then decrement
        delayMicroseconds( 33 );
      }
      else {
        Serial.println( "No keyboard scan detected.");  // the count down is elapsed!
        KAddr = 0;                                      // Set Kernal Number 1 (it is assumed, that this is not empty)
        EEPROM.write(EEPROMAddr, KAddr);                // and save in EEPROM
        SwitchKernal();                                 // Switch Kernal Number and reset C64
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
    countup++;
    if (countup > cnExromCount) {          // time limit for EXROM reached?
       exrom_mode = 1;                    // activate EXROM mode
       Serial.println("EXROM mode: Restore key => Reseting");
       ResetHardware();
       RestoreKey = 0;
       countup = 0;
       exrom_mode = 0;
    }
  }
  
  /* The ISR will set NumPressed to 1, in case some number key is pressed 
     In case something is found, the column data, which was read by the ISR 
     is being processed here.  
  */
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
      key++;
    }
    if (key == 10) {                         // in case it is a "0" 
      key = 0;
    }

    //Serial.print("Key ");
    //Serial.print(key);
    //Serial.println(" detected.");
    printf(buf,"Key %u detected.\n", key);
    Serial.print(buf);
    
    if(key > 4 && key < 9) { // 5..8 means store 1..4 with current KAddr

      //StoredSelect[KNumber] replaces KAddr
      //KNumber = key-4; //1..4
      printf(buf,"Storing %u into %u.\n",KAddr,key-4);
      Serial.print(buf);
      EEPROM.write(StoredAddr+key-5, KAddr);
      //StoredSelect[KNumber-1] = KAddr;

    }else if(key == 9 || key == 0) {
      
      bInc = (key==0); //9=down,0=up
      if(bInc){
        ++KAddr;
        if(KAddr > MAX_SELECT)
          KAddr=0;
      }else{
        --KAddr;
        if(KAddr < 0 || KAddr > MAX_SELECT)
          KAddr = MAX_SELECT;
      }
      EEPROM.write(EEPROMAddr, KAddr);                           // write it to the EEPROM
      SwitchKernal();                                            // Switch Kernal Number and reset C64
      
    }else if ((key >= 1) && (key <= 4) && (RestoreKey == 1)) {       // restore pressed and key in range
    
      KAddr = EEPROM.read(StoredAddr+key-1);
      EEPROM.write(EEPROMAddr, KAddr);                           // write it to the EEPROM
      SwitchKernal();                                            // Switch Kernal Number and reset C64
      
    }
    else {
      key = 128;                                                  // reset the key number
    }
    NumPressed = 0;                                               // reset the flag, so the ISR can process key matrix again
  }
  else {
    key = 128;                                                    // reset the key number
  }
  delayMicroseconds( 1000 );                                      // delay 1ms per loop (not calibrated)
}
