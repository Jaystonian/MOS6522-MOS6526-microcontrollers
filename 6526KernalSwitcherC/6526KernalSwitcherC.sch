EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CPU2:MOS6526 USOCKET1
U 1 1 5E4BF531
P 10050 2250
F 0 "USOCKET1" H 10200 3750 50  0000 C CNN
F 1 "MOS6526" H 10200 3650 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 10000 2650 50  0001 C CNN
F 3 "" H 10000 2650 50  0001 C CNN
	1    10050 2250
	1    0    0    -1  
$EndComp
$Comp
L Power2:+5V #PWR015
U 1 1 5E4C0A5F
P 10000 750
F 0 "#PWR015" H 10000 600 50  0001 C CNN
F 1 "+5V" H 10015 923 50  0000 C CNN
F 2 "" H 10000 750 50  0001 C CNN
F 3 "" H 10000 750 50  0001 C CNN
	1    10000 750 
	1    0    0    -1  
$EndComp
$Comp
L Power2:+5V #PWR010
U 1 1 5E4C7474
P 3600 800
F 0 "#PWR010" H 3600 650 50  0001 C CNN
F 1 "+5V" H 3615 973 50  0000 C CNN
F 2 "" H 3600 800 50  0001 C CNN
F 3 "" H 3600 800 50  0001 C CNN
	1    3600 800 
	1    0    0    -1  
$EndComp
$Comp
L Power2:GND #PWR016
U 1 1 5E4C763D
P 10000 3650
F 0 "#PWR016" H 10000 3400 50  0001 C CNN
F 1 "GND" H 10005 3477 50  0000 C CNN
F 2 "" H 10000 3650 50  0001 C CNN
F 3 "" H 10000 3650 50  0001 C CNN
	1    10000 3650
	1    0    0    -1  
$EndComp
$Comp
L Power2:GND #PWR011
U 1 1 5E4C78AA
P 3600 3600
F 0 "#PWR011" H 3600 3350 50  0001 C CNN
F 1 "GND" H 3605 3427 50  0000 C CNN
F 2 "" H 3600 3600 50  0001 C CNN
F 3 "" H 3600 3600 50  0001 C CNN
	1    3600 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5E4C8437
P 750 950
F 0 "C1" H 842 996 50  0000 L CNN
F 1 "220nF" H 842 905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 750 950 50  0001 C CNN
F 3 "~" H 750 950 50  0001 C CNN
	1    750  950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5E4C8BC2
P 1050 950
F 0 "C2" H 1142 996 50  0000 L CNN
F 1 "100n" H 1142 905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1050 950 50  0001 C CNN
F 3 "~" H 1050 950 50  0001 C CNN
	1    1050 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5E4C8DB8
P 1350 950
F 0 "C4" H 1442 996 50  0000 L CNN
F 1 "47nF" H 1442 905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1350 950 50  0001 C CNN
F 3 "~" H 1350 950 50  0001 C CNN
	1    1350 950 
	1    0    0    -1  
$EndComp
$Comp
L Power2:GND #PWR02
U 1 1 5E4C95E7
P 750 1200
F 0 "#PWR02" H 750 950 50  0001 C CNN
F 1 "GND" H 755 1027 50  0000 C CNN
F 2 "" H 750 1200 50  0001 C CNN
F 3 "" H 750 1200 50  0001 C CNN
	1    750  1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  1200 750  1150
Wire Wire Line
	750  1150 1050 1150
Wire Wire Line
	750  1150 750  1050
Wire Wire Line
	1050 1150 1050 1050
Wire Wire Line
	1350 1150 1350 1050
$Comp
L Device:R_Small_US R6
U 1 1 5E4D06A4
P 5450 1200
F 0 "R6" V 5245 1200 50  0000 C CNN
F 1 "220R" V 5336 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5450 1200 50  0001 C CNN
F 3 "~" H 5450 1200 50  0001 C CNN
	1    5450 1200
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 5E4D3C47
P 5750 1200
F 0 "J4" H 5850 1250 50  0000 L CNN
F 1 "~EXROM" H 5850 1150 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5750 1200 50  0001 C CNN
F 3 "~" H 5750 1200 50  0001 C CNN
	1    5750 1200
	1    0    0    -1  
$EndComp
Entry Bus Bus
	11100 1700 11000 1800
Text Label 11000 1800 2    50   ~ 0
ROW0
Entry Bus Bus
	11100 2000 11000 2100
Text Label 11000 2100 2    50   ~ 0
ROW3
Entry Bus Bus
	11100 1000 11000 1100
Text Label 11000 1100 2    50   ~ 0
COL1
Entry Bus Bus
	11100 1100 11000 1200
Text Label 11000 1200 2    50   ~ 0
COL2
Entry Bus Bus
	11100 1200 11000 1300
Text Label 11000 1300 2    50   ~ 0
COL3
Entry Bus Bus
	11100 1300 11000 1400
Text Label 11000 1400 2    50   ~ 0
COL4
Entry Bus Bus
	11100 1600 11000 1700
Text Label 11000 1700 2    50   ~ 0
COL7
Entry Bus Bus
	11100 900  11000 1000
Text Label 11000 1000 2    50   ~ 0
COL0
Entry Bus Bus
	11100 1400 11000 1500
Text Label 11000 1500 2    50   ~ 0
COL5
Entry Bus Bus
	11100 1500 11000 1600
Text Label 11000 1600 2    50   ~ 0
COL6
Entry Bus Bus
	11100 1800 11000 1900
Text Label 11000 1900 2    50   ~ 0
ROW1
Entry Bus Bus
	11100 1900 11000 2000
Text Label 11000 2000 2    50   ~ 0
ROW2
Entry Bus Bus
	11100 2100 11000 2200
Text Label 11000 2200 2    50   ~ 0
ROW4
Entry Bus Bus
	11100 2200 11000 2300
Text Label 11000 2300 2    50   ~ 0
ROW5
Entry Bus Bus
	11100 2300 11000 2400
Text Label 11000 2400 2    50   ~ 0
ROW6
Entry Bus Bus
	11100 2400 11000 2500
Text Label 11000 2500 2    50   ~ 0
ROW7
Entry Bus Bus
	11100 2600 11000 2700
Text Label 11000 2700 2    50   ~ 0
D0
Entry Bus Bus
	11100 2700 11000 2800
Text Label 11000 2800 2    50   ~ 0
D1
Entry Bus Bus
	11100 2800 11000 2900
Text Label 11000 2900 2    50   ~ 0
D2
Entry Bus Bus
	11100 2900 11000 3000
Text Label 11000 3000 2    50   ~ 0
D3
Entry Bus Bus
	11100 3000 11000 3100
Text Label 11000 3100 2    50   ~ 0
D4
Entry Bus Bus
	11100 3100 11000 3200
Text Label 11000 3200 2    50   ~ 0
D5
Entry Bus Bus
	11100 3200 11000 3300
Text Label 11000 3300 2    50   ~ 0
D6
Entry Bus Bus
	11100 3300 11000 3400
Text Label 11000 3400 2    50   ~ 0
D7
Wire Wire Line
	10700 1000 11000 1000
Wire Wire Line
	10700 1100 11000 1100
Wire Wire Line
	10700 1200 11000 1200
Wire Wire Line
	10700 1300 11000 1300
Wire Wire Line
	10700 1400 11000 1400
Wire Wire Line
	10700 1500 11000 1500
Wire Wire Line
	10700 1600 11000 1600
Wire Wire Line
	10700 1700 11000 1700
Wire Wire Line
	10700 1800 11000 1800
Wire Wire Line
	10700 1900 11000 1900
Wire Wire Line
	10700 2000 11000 2000
Wire Wire Line
	10700 2100 11000 2100
Wire Wire Line
	10700 2200 11000 2200
Wire Wire Line
	10700 2300 11000 2300
Wire Wire Line
	10700 2400 11000 2400
Wire Wire Line
	10700 2500 11000 2500
Wire Wire Line
	10700 2700 11000 2700
Wire Wire Line
	10700 2800 11000 2800
Wire Wire Line
	10700 2900 11000 2900
Wire Wire Line
	10700 3000 11000 3000
Wire Wire Line
	10700 3100 11000 3100
Wire Wire Line
	10700 3200 11000 3200
Wire Wire Line
	10700 3300 11000 3300
Wire Wire Line
	10700 3400 11000 3400
Text Label 9000 1050 0    50   ~ 0
U~RESET
Wire Wire Line
	9000 1050 9300 1050
Entry Bus Bus
	8900 950  9000 1050
Text Label 9000 1350 0    50   ~ 0
UCLK
Wire Wire Line
	9000 1350 9300 1350
Entry Bus Bus
	8900 1250 9000 1350
Text Label 9000 1550 0    50   ~ 0
U~PC
Wire Wire Line
	9000 1550 9300 1550
Entry Bus Bus
	8900 1450 9000 1550
Text Label 9000 1650 0    50   ~ 0
U~FLAG
Wire Wire Line
	9000 1650 9300 1650
Entry Bus Bus
	8900 1550 9000 1650
Text Label 9000 1800 0    50   ~ 0
U~IRQ
Wire Wire Line
	9000 1800 9300 1800
Entry Bus Bus
	8900 1700 9000 1800
Text Label 9000 1950 0    50   ~ 0
UCNT
Wire Wire Line
	9000 1950 9300 1950
Entry Bus Bus
	8900 1850 9000 1950
Text Label 9000 2050 0    50   ~ 0
USIO
Wire Wire Line
	9000 2050 9300 2050
Entry Bus Bus
	8900 1950 9000 2050
Text Label 9000 2150 0    50   ~ 0
UTOD
Wire Wire Line
	9000 2150 9300 2150
Entry Bus Bus
	8900 2050 9000 2150
Text Label 9000 2400 0    50   ~ 0
UA0
Wire Wire Line
	9000 2400 9300 2400
Entry Bus Bus
	8900 2300 9000 2400
Text Label 9000 2500 0    50   ~ 0
UA1
Wire Wire Line
	9000 2500 9300 2500
Entry Bus Bus
	8900 2400 9000 2500
Text Label 9000 2600 0    50   ~ 0
UA2
Wire Wire Line
	9000 2600 9300 2600
Entry Bus Bus
	8900 2500 9000 2600
Text Label 9000 2700 0    50   ~ 0
UA3
Wire Wire Line
	9000 2700 9300 2700
Entry Bus Bus
	8900 2600 9000 2700
Text Label 9000 2950 0    50   ~ 0
UR~W
Wire Wire Line
	9000 2950 9300 2950
Entry Bus Bus
	8900 2850 9000 2950
Text Label 9000 3250 0    50   ~ 0
U~CE
Wire Wire Line
	9000 3250 9300 3250
Entry Bus Bus
	8900 3150 9000 3250
$Comp
L CPU2:MOS6526 UCHIP1
U 1 1 5E51B068
P 7550 2250
F 0 "UCHIP1" H 7700 3750 50  0000 C CNN
F 1 "MOS6526" H 7700 3650 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 7500 2650 50  0001 C CNN
F 3 "" H 7500 2650 50  0001 C CNN
	1    7550 2250
	1    0    0    -1  
$EndComp
$Comp
L Power2:+5V #PWR013
U 1 1 5E51B06E
P 7500 750
F 0 "#PWR013" H 7500 600 50  0001 C CNN
F 1 "+5V" H 7515 923 50  0000 C CNN
F 2 "" H 7500 750 50  0001 C CNN
F 3 "" H 7500 750 50  0001 C CNN
	1    7500 750 
	1    0    0    -1  
$EndComp
$Comp
L Power2:GND #PWR014
U 1 1 5E51B074
P 7500 3650
F 0 "#PWR014" H 7500 3400 50  0001 C CNN
F 1 "GND" H 7505 3477 50  0000 C CNN
F 2 "" H 7500 3650 50  0001 C CNN
F 3 "" H 7500 3650 50  0001 C CNN
	1    7500 3650
	1    0    0    -1  
$EndComp
Entry Bus Bus
	8600 1700 8500 1800
Text Label 8500 1800 2    50   ~ 0
ROW0
Entry Bus Bus
	8600 2000 8500 2100
Text Label 8500 2100 2    50   ~ 0
ROW3
Entry Bus Bus
	8600 1000 8500 1100
Text Label 8500 1100 2    50   ~ 0
COL1
Entry Bus Bus
	8600 1100 8500 1200
Text Label 8500 1200 2    50   ~ 0
COL2
Entry Bus Bus
	8600 1200 8500 1300
Text Label 8500 1300 2    50   ~ 0
COL3
Entry Bus Bus
	8600 1300 8500 1400
Text Label 8500 1400 2    50   ~ 0
COL4
Entry Bus Bus
	8600 1600 8500 1700
Text Label 8500 1700 2    50   ~ 0
COL7
Entry Bus Bus
	8600 900  8500 1000
Text Label 8500 1000 2    50   ~ 0
COL0
Entry Bus Bus
	8600 1400 8500 1500
Text Label 8500 1500 2    50   ~ 0
COL5
Entry Bus Bus
	8600 1500 8500 1600
Text Label 8500 1600 2    50   ~ 0
COL6
Entry Bus Bus
	8600 1800 8500 1900
Text Label 8500 1900 2    50   ~ 0
ROW1
Entry Bus Bus
	8600 1900 8500 2000
Text Label 8500 2000 2    50   ~ 0
ROW2
Entry Bus Bus
	8600 2100 8500 2200
Text Label 8500 2200 2    50   ~ 0
ROW4
Entry Bus Bus
	8600 2200 8500 2300
Text Label 8500 2300 2    50   ~ 0
ROW5
Entry Bus Bus
	8600 2300 8500 2400
Text Label 8500 2400 2    50   ~ 0
ROW6
Entry Bus Bus
	8600 2400 8500 2500
Text Label 8500 2500 2    50   ~ 0
ROW7
Entry Bus Bus
	8600 2600 8500 2700
Text Label 8500 2700 2    50   ~ 0
D0
Entry Bus Bus
	8600 2700 8500 2800
Text Label 8500 2800 2    50   ~ 0
D1
Entry Bus Bus
	8600 2800 8500 2900
Text Label 8500 2900 2    50   ~ 0
D2
Entry Bus Bus
	8600 2900 8500 3000
Text Label 8500 3000 2    50   ~ 0
D3
Entry Bus Bus
	8600 3000 8500 3100
Text Label 8500 3100 2    50   ~ 0
D4
Entry Bus Bus
	8600 3100 8500 3200
Text Label 8500 3200 2    50   ~ 0
D5
Entry Bus Bus
	8600 3200 8500 3300
Text Label 8500 3300 2    50   ~ 0
D6
Entry Bus Bus
	8600 3300 8500 3400
Text Label 8500 3400 2    50   ~ 0
D7
Wire Wire Line
	8200 1000 8500 1000
Wire Wire Line
	8200 1100 8500 1100
Wire Wire Line
	8200 1200 8500 1200
Wire Wire Line
	8200 1300 8500 1300
Wire Wire Line
	8200 1400 8500 1400
Wire Wire Line
	8200 1500 8500 1500
Wire Wire Line
	8200 1600 8500 1600
Wire Wire Line
	8200 1700 8500 1700
Wire Wire Line
	8200 1800 8500 1800
Wire Wire Line
	8200 1900 8500 1900
Wire Wire Line
	8200 2000 8500 2000
Wire Wire Line
	8200 2100 8500 2100
Wire Wire Line
	8200 2200 8500 2200
Wire Wire Line
	8200 2300 8500 2300
Wire Wire Line
	8200 2400 8500 2400
Wire Wire Line
	8200 2500 8500 2500
Wire Wire Line
	8200 2700 8500 2700
Wire Wire Line
	8200 2800 8500 2800
Wire Wire Line
	8200 2900 8500 2900
Wire Wire Line
	8200 3000 8500 3000
Wire Wire Line
	8200 3100 8500 3100
Wire Wire Line
	8200 3200 8500 3200
Wire Wire Line
	8200 3300 8500 3300
Wire Wire Line
	8200 3400 8500 3400
Text Label 6500 1050 0    50   ~ 0
U~RESET
Wire Wire Line
	6500 1050 6800 1050
Entry Bus Bus
	6400 950  6500 1050
Text Label 6500 1350 0    50   ~ 0
UCLK
Wire Wire Line
	6500 1350 6800 1350
Entry Bus Bus
	6400 1250 6500 1350
Text Label 6500 1550 0    50   ~ 0
U~PC
Wire Wire Line
	6500 1550 6800 1550
Entry Bus Bus
	6400 1450 6500 1550
Text Label 6500 1650 0    50   ~ 0
U~FLAG
Wire Wire Line
	6500 1650 6800 1650
Entry Bus Bus
	6400 1550 6500 1650
Text Label 6500 1800 0    50   ~ 0
U~IRQ
Wire Wire Line
	6500 1800 6800 1800
Entry Bus Bus
	6400 1700 6500 1800
Text Label 6500 1950 0    50   ~ 0
UCNT
Wire Wire Line
	6500 1950 6800 1950
Entry Bus Bus
	6400 1850 6500 1950
Text Label 6500 2050 0    50   ~ 0
USIO
Wire Wire Line
	6500 2050 6800 2050
Entry Bus Bus
	6400 1950 6500 2050
Text Label 6500 2150 0    50   ~ 0
UTOD
Wire Wire Line
	6500 2150 6800 2150
Entry Bus Bus
	6400 2050 6500 2150
Text Label 6500 2400 0    50   ~ 0
UA0
Wire Wire Line
	6500 2400 6800 2400
Entry Bus Bus
	6400 2300 6500 2400
Text Label 6500 2500 0    50   ~ 0
UA1
Wire Wire Line
	6500 2500 6800 2500
Entry Bus Bus
	6400 2400 6500 2500
Text Label 6500 2600 0    50   ~ 0
UA2
Wire Wire Line
	6500 2600 6800 2600
Entry Bus Bus
	6400 2500 6500 2600
Text Label 6500 2700 0    50   ~ 0
UA3
Wire Wire Line
	6500 2700 6800 2700
Entry Bus Bus
	6400 2600 6500 2700
Text Label 6500 2950 0    50   ~ 0
UR~W
Wire Wire Line
	6500 2950 6800 2950
Entry Bus Bus
	6400 2850 6500 2950
Text Label 6500 3250 0    50   ~ 0
U~CE
Wire Wire Line
	6500 3250 6800 3250
Entry Bus Bus
	6400 3150 6500 3250
Wire Bus Line
	11100 500  8900 500 
Connection ~ 8900 500 
Wire Bus Line
	8900 500  8600 500 
Wire Bus Line
	6400 500  8600 500 
Connection ~ 8600 500 
Text Label 2450 1800 0    50   ~ 0
ICSP-~RESET
Wire Wire Line
	3000 1800 2450 1800
Entry Bus Bus
	2350 1900 2450 1800
Text Label 4750 1600 2    50   ~ 0
ICSP-SCK
Wire Wire Line
	4200 1600 4750 1600
Entry Bus Bus
	4850 1700 4750 1600
Text Label 4750 1500 2    50   ~ 0
ICSP-MISO
Wire Wire Line
	4200 1500 4750 1500
Entry Bus Bus
	4850 1600 4750 1500
Text Label 4750 1400 2    50   ~ 0
ICSP-MOSI
Wire Wire Line
	4200 1400 4750 1400
Entry Bus Bus
	4850 1500 4750 1400
Text Label 2450 1300 0    50   ~ 0
COL1
Wire Wire Line
	3000 1300 2450 1300
Entry Bus Bus
	2350 1400 2450 1300
Text Label 2450 1400 0    50   ~ 0
COL2
Wire Wire Line
	3000 1400 2450 1400
Entry Bus Bus
	2350 1500 2450 1400
Text Label 2450 1500 0    50   ~ 0
COL3
Wire Wire Line
	3000 1500 2450 1500
Entry Bus Bus
	2350 1600 2450 1500
Text Label 2450 1600 0    50   ~ 0
COL4
Wire Wire Line
	3000 1600 2450 1600
Entry Bus Bus
	2350 1700 2450 1600
Text Label 4750 1200 2    50   ~ 0
COL6
Wire Wire Line
	4200 1200 4750 1200
Entry Bus Bus
	4850 1300 4750 1200
Text Label 2450 2300 0    50   ~ 0
~RESTORE
Wire Wire Line
	3000 2300 2450 2300
Entry Bus Bus
	2350 2400 2450 2300
Text Label 4750 1100 2    50   ~ 0
SER-RXD
Wire Wire Line
	4200 1100 4750 1100
Entry Bus Bus
	4850 1200 4750 1100
Text Label 4750 1000 2    50   ~ 0
SER-TXD
Wire Wire Line
	4200 1000 4750 1000
Entry Bus Bus
	4850 1100 4750 1000
Text Label 4750 2600 2    50   ~ 0
ROW0
Wire Wire Line
	4200 2600 4750 2600
Entry Bus Bus
	4850 2700 4750 2600
Text Label 4750 2900 2    50   ~ 0
ROW3
Wire Wire Line
	4200 2900 4750 2900
Entry Bus Bus
	4850 3000 4750 2900
Text Label 2450 2000 0    50   ~ 0
URESET
Entry Bus Bus
	2350 2100 2450 2000
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 5E5CB3A7
P 5600 1800
F 0 "J5" H 5680 1848 50  0000 L CNN
F 1 "~RESTORE" H 5680 1750 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5600 1800 50  0001 C CNN
F 3 "~" H 5600 1800 50  0001 C CNN
	1    5600 1800
	1    0    0    -1  
$EndComp
Entry Bus Bus
	4850 1900 4950 1800
Wire Wire Line
	4950 1800 5400 1800
Text Label 4950 1800 0    50   ~ 0
~RESTORE
$Comp
L Device:Q_NPN_BEC Q1
U 1 1 5E6637E5
P 5750 2450
F 0 "Q1" H 5941 2496 50  0000 L CNN
F 1 "BC846" H 5941 2405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5950 2550 50  0001 C CNN
F 3 "863-BC846BLT1G" H 5750 2450 50  0001 C CNN
	1    5750 2450
	1    0    0    -1  
$EndComp
$Comp
L Power2:GND #PWR012
U 1 1 5E663E93
P 5850 2650
F 0 "#PWR012" H 5850 2400 50  0001 C CNN
F 1 "GND" H 5855 2477 50  0000 C CNN
F 2 "" H 5850 2650 50  0001 C CNN
F 3 "" H 5850 2650 50  0001 C CNN
	1    5850 2650
	1    0    0    -1  
$EndComp
Entry Bus Bus
	4850 2550 4950 2450
Entry Bus Bus
	4850 2350 4950 2250
$Comp
L Device:R_Small_US R7
U 1 1 5E6798DF
P 5450 2450
F 0 "R7" V 5550 2450 50  0000 C CNN
F 1 "10K" V 5650 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5450 2450 50  0001 C CNN
F 3 "~" H 5450 2450 50  0001 C CNN
	1    5450 2450
	0    1    1    0   
$EndComp
Text Label 4950 2450 0    50   ~ 0
URESET
Wire Wire Line
	4950 2450 5350 2450
Wire Wire Line
	5850 2250 4950 2250
Text Label 4950 2250 0    50   ~ 0
U~RESET
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J2
U 1 1 5E6910DB
P 1400 3700
F 0 "J2" H 1450 4017 50  0000 C CNN
F 1 "ICSP" H 1450 3926 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x03_P1.27mm_Vertical_SMD" H 1400 3700 50  0001 C CNN
F 3 "~" H 1400 3700 50  0001 C CNN
	1    1400 3700
	1    0    0    -1  
$EndComp
Text Label 650  3800 0    50   ~ 0
ICSP-~RESET
Wire Wire Line
	1200 3800 650  3800
Entry Bus Bus
	650  3800 550  3700
Text Label 650  3700 0    50   ~ 0
ICSP-SCK
Wire Wire Line
	1200 3700 650  3700
Entry Bus Bus
	650  3700 550  3600
Text Label 650  3600 0    50   ~ 0
ICSP-MISO
Wire Wire Line
	1200 3600 650  3600
Entry Bus Bus
	650  3600 550  3500
Text Label 2250 3700 2    50   ~ 0
ICSP-MOSI
Entry Bus Bus
	2250 3700 2350 3600
$Comp
L Power2:GND #PWR08
U 1 1 5E706974
P 1700 3800
F 0 "#PWR08" H 1700 3550 50  0001 C CNN
F 1 "GND" H 1705 3627 50  0000 C CNN
F 2 "" H 1700 3800 50  0001 C CNN
F 3 "" H 1700 3800 50  0001 C CNN
	1    1700 3800
	1    0    0    -1  
$EndComp
$Comp
L Power2:+5V #PWR07
U 1 1 5E707577
P 1700 3600
F 0 "#PWR07" H 1700 3450 50  0001 C CNN
F 1 "+5V" H 1715 3773 50  0000 C CNN
F 2 "" H 1700 3600 50  0001 C CNN
F 3 "" H 1700 3600 50  0001 C CNN
	1    1700 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 5E72EC2D
P 700 4550
F 0 "J1" H 618 4125 50  0000 C CNN
F 1 "Serial" H 618 4216 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x05_P1.27mm_Vertical" H 700 4550 50  0001 C CNN
F 3 "~" H 700 4550 50  0001 C CNN
	1    700  4550
	-1   0    0    1   
$EndComp
$Comp
L Power2:GND #PWR04
U 1 1 5E730435
P 900 4750
F 0 "#PWR04" H 900 4500 50  0001 C CNN
F 1 "GND" H 905 4577 50  0000 C CNN
F 2 "" H 900 4750 50  0001 C CNN
F 3 "" H 900 4750 50  0001 C CNN
	1    900  4750
	1    0    0    -1  
$EndComp
$Comp
L Power2:+5V #PWR03
U 1 1 5E73088A
P 900 4350
F 0 "#PWR03" H 900 4200 50  0001 C CNN
F 1 "+5V" H 915 4523 50  0000 C CNN
F 2 "" H 900 4350 50  0001 C CNN
F 3 "" H 900 4350 50  0001 C CNN
	1    900  4350
	1    0    0    -1  
$EndComp
Text Label 2250 4450 2    50   ~ 0
ICSP-~RESET
Wire Wire Line
	1700 4450 2250 4450
Entry Bus Bus
	2250 4450 2350 4350
Text Label 2250 4550 2    50   ~ 0
SER-TXD
Entry Bus Bus
	2250 4550 2350 4450
Text Label 2250 4650 2    50   ~ 0
SER-RXD
Wire Wire Line
	1700 4650 2250 4650
Entry Bus Bus
	2250 4650 2350 4550
Text Label 650  2000 0    50   ~ 0
KSW-15
Wire Wire Line
	1200 2000 650  2000
Entry Bus Bus
	650  2000 550  1900
Text Label 650  2100 0    50   ~ 0
KSW-16
Wire Wire Line
	1200 2100 650  2100
Entry Bus Bus
	650  2100 550  2000
Text Label 650  2200 0    50   ~ 0
KSW-10
Wire Wire Line
	1200 2200 650  2200
Entry Bus Bus
	650  2200 550  2100
$Comp
L Device:R_Small_US R4
U 1 1 5E63D084
P 1600 4650
F 0 "R4" V 1800 4650 50  0000 C CNN
F 1 "1K" V 1700 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1600 4650 50  0001 C CNN
F 3 "~" H 1600 4650 50  0001 C CNN
	1    1600 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 5E64BB71
P 1450 4550
F 0 "R3" V 1245 4550 50  0000 C CNN
F 1 "1K" V 1336 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1450 4550 50  0001 C CNN
F 3 "~" H 1450 4550 50  0001 C CNN
	1    1450 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 4550 2250 4550
Wire Wire Line
	900  4550 1350 4550
$Comp
L Device:R_Small_US R1
U 1 1 5E666DBE
P 1050 4500
F 0 "R1" H 1118 4546 50  0000 L CNN
F 1 "10K" H 1118 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1050 4500 50  0001 C CNN
F 3 "~" H 1050 4500 50  0001 C CNN
	1    1050 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 5E66795C
P 1700 4350
F 0 "R5" H 1800 4500 50  0000 L CNN
F 1 "10K" H 1800 4400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1700 4350 50  0001 C CNN
F 3 "~" H 1700 4350 50  0001 C CNN
	1    1700 4350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 5E668400
P 1550 4300
F 0 "D1" V 1504 4379 50  0000 L CNN
F 1 "1N4148" V 1595 4379 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 1550 4125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1550 4300 50  0001 C CNN
	1    1550 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 4350 900  4350
Connection ~ 900  4350
Wire Wire Line
	1700 4250 1700 4150
Wire Wire Line
	1700 4150 1550 4150
Wire Wire Line
	1550 4150 1050 4150
Wire Wire Line
	1050 4150 1050 4350
Connection ~ 1550 4150
Wire Wire Line
	1550 4450 1700 4450
Connection ~ 1700 4450
$Comp
L Device:C_Small C5
U 1 1 5E6C0937
P 1450 4450
F 0 "C5" V 1221 4450 50  0000 C CNN
F 1 "0.1uF" V 1312 4450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1450 4450 50  0001 C CNN
F 3 "~" H 1450 4450 50  0001 C CNN
	1    1450 4450
	0    1    1    0   
$EndComp
Connection ~ 1550 4450
Wire Wire Line
	3700 800  3600 800 
Connection ~ 3600 800 
$Comp
L Power2:+5V #PWR01
U 1 1 5ED9511B
P 750 750
F 0 "#PWR01" H 750 600 50  0001 C CNN
F 1 "+5V" H 765 923 50  0000 C CNN
F 2 "" H 750 750 50  0001 C CNN
F 3 "" H 750 750 50  0001 C CNN
	1    750  750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  4450 1350 4450
Wire Wire Line
	1050 4400 1050 4350
Wire Wire Line
	900  4650 1050 4650
Connection ~ 1050 4350
Wire Wire Line
	1050 4600 1050 4650
Connection ~ 1050 4650
Wire Wire Line
	1050 4650 1500 4650
Text Label 2450 2100 0    50   ~ 0
R-~EXROM
Wire Wire Line
	3000 2100 2450 2100
Entry Bus Bus
	2350 2200 2450 2100
Text Label 4950 1200 0    50   ~ 0
R-~EXROM
Entry Bus Bus
	4850 1300 4950 1200
Wire Wire Line
	5350 1200 4950 1200
Text Label 650  2300 0    50   ~ 0
KSW-11
Wire Wire Line
	1200 2300 650  2300
Entry Bus Bus
	650  2300 550  2200
Text Label 650  2400 0    50   ~ 0
KSW-12
Wire Wire Line
	1200 2400 650  2400
Entry Bus Bus
	650  2400 550  2300
Connection ~ 750  1150
Connection ~ 1050 1150
Wire Wire Line
	1050 1150 1350 1150
Wire Wire Line
	750  750  1050 750 
Wire Wire Line
	750  850  750  750 
Connection ~ 750  750 
Wire Wire Line
	1050 850  1050 750 
Connection ~ 1050 750 
Wire Wire Line
	1050 750  1350 750 
Wire Wire Line
	1350 850  1350 750 
$Comp
L MCU_Microchip_ATmega:ATmega4809-A U1
U 1 1 60323F16
P 3600 2200
F 0 "U1" H 3900 3650 50  0000 C CNN
F 1 "ATmega4809-A" H 4050 3550 50  0000 C CNN
F 2 "Package_QFP:TQFP-48_7x7mm_P0.5mm" H 3600 2200 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40002016A.pdf" H 3600 2200 50  0001 C CNN
	1    3600 2200
	1    0    0    -1  
$EndComp
Connection ~ 2350 4050
Text Label 2450 1700 0    50   ~ 0
COL5
Wire Wire Line
	3000 1700 2450 1700
Entry Bus Bus
	2350 1800 2450 1700
Text Label 4750 1300 2    50   ~ 0
COL7
Wire Wire Line
	4200 1300 4750 1300
Entry Bus Bus
	4850 1400 4750 1300
Text Label 2450 1200 0    50   ~ 0
COL0
Wire Wire Line
	3000 1200 2450 1200
Entry Bus Bus
	2350 1300 2450 1200
Text Label 4750 2700 2    50   ~ 0
ROW1
Wire Wire Line
	4200 2700 4750 2700
Entry Bus Bus
	4850 2800 4750 2700
Text Label 4750 2800 2    50   ~ 0
ROW2
Wire Wire Line
	4200 2800 4750 2800
Entry Bus Bus
	4850 2900 4750 2800
Text Label 4750 3000 2    50   ~ 0
ROW7
Wire Wire Line
	4200 3000 4750 3000
Entry Bus Bus
	4850 3100 4750 3000
Text Label 4750 3100 2    50   ~ 0
ROW6
Wire Wire Line
	4200 3100 4750 3100
Entry Bus Bus
	4850 3200 4750 3100
Text Label 4750 3200 2    50   ~ 0
ROW5
Wire Wire Line
	4200 3200 4750 3200
Entry Bus Bus
	4850 3300 4750 3200
Text Label 4750 3300 2    50   ~ 0
ROW4
Wire Wire Line
	4200 3300 4750 3300
Entry Bus Bus
	4850 3400 4750 3300
Text Label 2450 1000 0    50   ~ 0
UPDI
Wire Wire Line
	3000 1000 2450 1000
Entry Bus Bus
	2350 1100 2450 1000
Text Label 650  3000 0    50   ~ 0
UPDI
Wire Wire Line
	1200 3000 650  3000
Entry Bus Bus
	550  3100 650  3000
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 60522315
P 1400 3000
F 0 "J6" H 1480 3048 50  0000 L CNN
F 1 "UPDI" H 1480 2950 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1400 3000 50  0001 C CNN
F 3 "~" H 1400 3000 50  0001 C CNN
	1    1400 3000
	1    0    0    -1  
$EndComp
Wire Bus Line
	2350 4050 4850 4050
Wire Wire Line
	2450 2000 3000 2000
$Comp
L Connector_Generic:Conn_02x08_Counter_Clockwise J3
U 1 1 6088BE03
P 1400 2200
F 0 "J3" H 1450 2717 50  0000 C CNN
F 1 "Conn_02x08_Counter_Clockwise" H 1450 2626 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_2x08_P2.00mm_Vertical" H 1400 2200 50  0001 C CNN
F 3 "~" H 1400 2200 50  0001 C CNN
	1    1400 2200
	1    0    0    -1  
$EndComp
Text Label 650  2500 0    50   ~ 0
KSW-13
Wire Wire Line
	1200 2500 650  2500
Entry Bus Bus
	650  2500 550  2400
Text Label 650  2600 0    50   ~ 0
KSW-14
Wire Wire Line
	1200 2600 650  2600
Entry Bus Bus
	650  2600 550  2500
Text Label 2250 2600 2    50   ~ 0
KSW-08
Wire Wire Line
	1700 2600 2250 2600
Entry Bus Bus
	2250 2600 2350 2700
Text Label 2250 2500 2    50   ~ 0
KSW-07
Wire Wire Line
	1700 2500 2250 2500
Entry Bus Bus
	2250 2500 2350 2600
Text Label 2250 2400 2    50   ~ 0
KSW-01
Wire Wire Line
	1700 2400 2250 2400
Entry Bus Bus
	2250 2400 2350 2500
Text Label 2250 2300 2    50   ~ 0
KSW-05
Wire Wire Line
	1700 2300 2250 2300
Entry Bus Bus
	2250 2300 2350 2400
Text Label 2250 2200 2    50   ~ 0
KSW-02
Wire Wire Line
	1700 2200 2250 2200
Entry Bus Bus
	2250 2200 2350 2300
Text Label 2250 2100 2    50   ~ 0
KSW-06
Wire Wire Line
	1700 2100 2250 2100
Entry Bus Bus
	2250 2100 2350 2200
Text Label 2250 2000 2    50   ~ 0
KSW-03
Wire Wire Line
	1700 2000 2250 2000
Entry Bus Bus
	2250 2000 2350 2100
Text Label 2250 1900 2    50   ~ 0
KSW-04
Wire Wire Line
	1700 1900 2250 1900
Entry Bus Bus
	2250 1900 2350 2000
Wire Wire Line
	1700 3700 2250 3700
Wire Bus Line
	6400 500  550  500 
Connection ~ 6400 500 
Wire Bus Line
	550  5000 2350 5000
Text Label 2450 2600 0    50   ~ 0
KSW-01
Wire Wire Line
	3000 2600 2450 2600
Entry Bus Bus
	2450 2600 2350 2500
Text Label 2450 2700 0    50   ~ 0
KSW-02
Wire Wire Line
	3000 2700 2450 2700
Entry Bus Bus
	2450 2700 2350 2600
Text Label 2450 2800 0    50   ~ 0
KSW-03
Wire Wire Line
	3000 2800 2450 2800
Entry Bus Bus
	2450 2800 2350 2700
Text Label 2450 2900 0    50   ~ 0
KSW-04
Wire Wire Line
	3000 2900 2450 2900
Entry Bus Bus
	2450 2900 2350 2800
Text Label 2450 3000 0    50   ~ 0
KSW-05
Wire Wire Line
	3000 3000 2450 3000
Entry Bus Bus
	2450 3000 2350 2900
Text Label 2450 3100 0    50   ~ 0
KSW-06
Wire Wire Line
	3000 3100 2450 3100
Entry Bus Bus
	2450 3100 2350 3000
Text Label 2450 3200 0    50   ~ 0
KSW-07
Wire Wire Line
	3000 3200 2450 3200
Entry Bus Bus
	2450 3200 2350 3100
Text Label 2450 3300 0    50   ~ 0
KSW-08
Wire Wire Line
	3000 3300 2450 3300
Entry Bus Bus
	2450 3300 2350 3200
Text Label 4750 1900 2    50   ~ 0
KSW-09
Wire Wire Line
	4200 1900 4750 1900
Entry Bus Bus
	4750 1900 4850 1800
Text Label 4750 2000 2    50   ~ 0
KSW-10
Wire Wire Line
	4200 2000 4750 2000
Entry Bus Bus
	4750 2000 4850 1900
Text Label 4750 2100 2    50   ~ 0
KSW-11
Wire Wire Line
	4200 2100 4750 2100
Entry Bus Bus
	4750 2100 4850 2000
Text Label 4750 2200 2    50   ~ 0
KSW-12
Wire Wire Line
	4200 2200 4750 2200
Entry Bus Bus
	4750 2200 4850 2100
Text Label 4750 2300 2    50   ~ 0
KSW-13
Wire Wire Line
	4200 2300 4750 2300
Entry Bus Bus
	4750 2300 4850 2200
Text Label 4750 2400 2    50   ~ 0
KSW-14
Wire Wire Line
	4200 2400 4750 2400
Entry Bus Bus
	4750 2400 4850 2300
Text Label 4750 1700 2    50   ~ 0
KSW-15
Wire Wire Line
	4200 1700 4750 1700
Entry Bus Bus
	4750 1700 4850 1800
Text Label 2450 2200 0    50   ~ 0
KSW-16
Wire Wire Line
	3000 2200 2450 2200
Entry Bus Bus
	2450 2200 2350 2300
Text Label 650  1900 0    50   ~ 0
KSW-09
Wire Wire Line
	1200 1900 650  1900
Entry Bus Bus
	650  1900 550  1800
Wire Bus Line
	2350 4050 2350 5000
Wire Bus Line
	8900 500  8900 3150
Wire Bus Line
	6400 500  6400 3150
Wire Bus Line
	550  500  550  5000
Wire Bus Line
	2350 1100 2350 4050
Wire Bus Line
	8600 500  8600 3300
Wire Bus Line
	11100 500  11100 3300
Wire Bus Line
	4850 1100 4850 4050
$EndSCHEMATC
