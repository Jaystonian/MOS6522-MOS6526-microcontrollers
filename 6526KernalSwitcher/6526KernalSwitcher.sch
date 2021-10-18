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
L Power2:+5V #PWR0101
U 1 1 5E4C0A5F
P 10000 750
F 0 "#PWR0101" H 10000 600 50  0001 C CNN
F 1 "+5V" H 10015 923 50  0000 C CNN
F 2 "" H 10000 750 50  0001 C CNN
F 3 "" H 10000 750 50  0001 C CNN
	1    10000 750 
	1    0    0    -1  
$EndComp
$Comp
L Power2:+5V #PWR0102
U 1 1 5E4C7474
P 3600 800
F 0 "#PWR0102" H 3600 650 50  0001 C CNN
F 1 "+5V" H 3615 973 50  0000 C CNN
F 2 "" H 3600 800 50  0001 C CNN
F 3 "" H 3600 800 50  0001 C CNN
	1    3600 800 
	1    0    0    -1  
$EndComp
$Comp
L Power2:GND #PWR0103
U 1 1 5E4C763D
P 10000 3650
F 0 "#PWR0103" H 10000 3400 50  0001 C CNN
F 1 "GND" H 10005 3477 50  0000 C CNN
F 2 "" H 10000 3650 50  0001 C CNN
F 3 "" H 10000 3650 50  0001 C CNN
	1    10000 3650
	1    0    0    -1  
$EndComp
$Comp
L Power2:GND #PWR0104
U 1 1 5E4C78AA
P 3600 3800
F 0 "#PWR0104" H 3600 3550 50  0001 C CNN
F 1 "GND" H 3605 3627 50  0000 C CNN
F 2 "" H 3600 3800 50  0001 C CNN
F 3 "" H 3600 3800 50  0001 C CNN
	1    3600 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R10
U 1 1 5E4C807A
P 750 1100
F 0 "R10" H 818 1146 50  0000 L CNN
F 1 "1M" H 818 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 750 1100 50  0001 C CNN
F 3 "~" H 750 1100 50  0001 C CNN
	1    750  1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5E4C8437
P 1100 1100
F 0 "C6" H 1192 1146 50  0000 L CNN
F 1 "0.1uF" H 1192 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1100 1100 50  0001 C CNN
F 3 "~" H 1100 1100 50  0001 C CNN
	1    1100 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5E4C8BC2
P 1400 1100
F 0 "C3" H 1492 1146 50  0000 L CNN
F 1 "0.1uF" H 1492 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1400 1100 50  0001 C CNN
F 3 "~" H 1400 1100 50  0001 C CNN
	1    1400 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5E4C8DB8
P 1700 1100
F 0 "C2" H 1792 1146 50  0000 L CNN
F 1 "0.1uF" H 1792 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1700 1100 50  0001 C CNN
F 3 "~" H 1700 1100 50  0001 C CNN
	1    1700 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5E4C8FEB
P 2800 1100
F 0 "C1" H 2892 1146 50  0000 L CNN
F 1 "0.1uF" H 2892 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2800 1100 50  0001 C CNN
F 3 "~" H 2800 1100 50  0001 C CNN
	1    2800 1100
	0    1    1    0   
$EndComp
$Comp
L Power2:GND #PWR0105
U 1 1 5E4C95E7
P 750 1350
F 0 "#PWR0105" H 750 1100 50  0001 C CNN
F 1 "GND" H 755 1177 50  0000 C CNN
F 2 "" H 750 1350 50  0001 C CNN
F 3 "" H 750 1350 50  0001 C CNN
	1    750  1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  1350 750  1300
Wire Wire Line
	750  1300 1100 1300
Wire Wire Line
	1100 1300 1100 1200
Connection ~ 750  1300
Wire Wire Line
	750  1300 750  1200
Wire Wire Line
	1100 1300 1400 1300
Wire Wire Line
	1400 1300 1400 1200
Connection ~ 1100 1300
Wire Wire Line
	1400 1300 1700 1300
Wire Wire Line
	1700 1300 1700 1200
Connection ~ 1400 1300
Wire Wire Line
	750  900  750  1000
Wire Wire Line
	1100 1000 1100 900 
Connection ~ 1100 900 
Wire Wire Line
	1100 900  750  900 
Wire Wire Line
	1400 1000 1400 900 
Connection ~ 1400 900 
Wire Wire Line
	1400 900  1100 900 
Wire Wire Line
	1700 1000 1700 900 
Wire Wire Line
	1700 900  1400 900 
$Comp
L Device:R_Small_US R4
U 1 1 5E4CE44F
P 4300 900
F 0 "R4" H 4368 946 50  0000 L CNN
F 1 "10K" H 4368 855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4300 900 50  0001 C CNN
F 3 "~" H 4300 900 50  0001 C CNN
	1    4300 900 
	1    0    0    -1  
$EndComp
$Comp
L Power2:+5V #PWR0106
U 1 1 5E4CEE37
P 4300 800
F 0 "#PWR0106" H 4300 650 50  0001 C CNN
F 1 "+5V" H 4315 973 50  0000 C CNN
F 2 "" H 4300 800 50  0001 C CNN
F 3 "" H 4300 800 50  0001 C CNN
	1    4300 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1100 4300 1100
Wire Wire Line
	4300 1100 4300 1000
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5E4CF59E
P 4600 900
F 0 "JP1" V 4548 968 50  0000 L CNN
F 1 "~SHRTBRD" V 4646 968 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4600 900 50  0001 C CNN
F 3 "~" H 4600 900 50  0001 C CNN
	1    4600 900 
	0    1    1    0   
$EndComp
$Comp
L Power2:GND #PWR0107
U 1 1 5E4CFEA0
P 4600 750
F 0 "#PWR0107" H 4600 500 50  0001 C CNN
F 1 "GND" H 4605 577 50  0000 C CNN
F 2 "" H 4600 750 50  0001 C CNN
F 3 "" H 4600 750 50  0001 C CNN
	1    4600 750 
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 1100 4600 1100
Wire Wire Line
	4600 1100 4600 1050
Connection ~ 4300 1100
$Comp
L Device:R_Small_US R8
U 1 1 5E4D06A4
P 5300 1200
F 0 "R8" V 5095 1200 50  0000 C CNN
F 1 "220R" V 5186 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5300 1200 50  0001 C CNN
F 3 "~" H 5300 1200 50  0001 C CNN
	1    5300 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 5E4D26FE
P 5300 1500
F 0 "R9" V 5095 1500 50  0000 C CNN
F 1 "330R" V 5186 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5300 1500 50  0001 C CNN
F 3 "~" H 5300 1500 50  0001 C CNN
	1    5300 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 1200 5200 1200
Wire Wire Line
	4200 1300 5150 1300
Wire Wire Line
	5150 1300 5150 1500
Wire Wire Line
	5150 1500 5200 1500
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 5E4D3C47
P 5600 1200
F 0 "J1" H 5680 1248 50  0000 L CNN
F 1 "~EXROM" H 5680 1150 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5600 1200 50  0001 C CNN
F 3 "~" H 5600 1200 50  0001 C CNN
	1    5600 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 5E4D485C
P 5600 1500
F 0 "J5" H 5680 1542 50  0000 L CNN
F 1 "RESIO" H 5680 1451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5600 1500 50  0001 C CNN
F 3 "~" H 5600 1500 50  0001 C CNN
	1    5600 1500
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
L Power2:+5V #PWR0108
U 1 1 5E51B06E
P 7500 750
F 0 "#PWR0108" H 7500 600 50  0001 C CNN
F 1 "+5V" H 7515 923 50  0000 C CNN
F 2 "" H 7500 750 50  0001 C CNN
F 3 "" H 7500 750 50  0001 C CNN
	1    7500 750 
	1    0    0    -1  
$EndComp
$Comp
L Power2:GND #PWR0109
U 1 1 5E51B074
P 7500 3650
F 0 "#PWR0109" H 7500 3400 50  0001 C CNN
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
Text Label 4750 2600 2    50   ~ 0
ICSP-~RESET
Wire Wire Line
	4200 2600 4750 2600
Entry Bus Bus
	4850 2700 4750 2600
Text Label 4750 1800 2    50   ~ 0
XTAL2
Wire Wire Line
	4200 1800 4750 1800
Entry Bus Bus
	4850 1900 4750 1800
Text Label 4750 1700 2    50   ~ 0
XTAL1
Wire Wire Line
	4200 1700 4750 1700
Entry Bus Bus
	4850 1800 4750 1700
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
Text Label 4750 2000 2    50   ~ 0
COL1
Wire Wire Line
	4200 2000 4750 2000
Entry Bus Bus
	4850 2100 4750 2000
Text Label 4750 2100 2    50   ~ 0
COL2
Wire Wire Line
	4200 2100 4750 2100
Entry Bus Bus
	4850 2200 4750 2100
Text Label 4750 2200 2    50   ~ 0
COL3
Wire Wire Line
	4200 2200 4750 2200
Entry Bus Bus
	4850 2300 4750 2200
Text Label 4750 2300 2    50   ~ 0
COL4
Wire Wire Line
	4200 2300 4750 2300
Entry Bus Bus
	4850 2400 4750 2300
Text Label 4750 2400 2    50   ~ 0
COL7
Wire Wire Line
	4200 2400 4750 2400
Entry Bus Bus
	4850 2500 4750 2400
Text Label 4750 2500 2    50   ~ 0
~RESTORE
Wire Wire Line
	4200 2500 4750 2500
Entry Bus Bus
	4850 2600 4750 2500
Text Label 4750 2800 2    50   ~ 0
SER-RXD
Wire Wire Line
	4200 2800 4750 2800
Entry Bus Bus
	4850 2900 4750 2800
Text Label 4750 2900 2    50   ~ 0
SER-TXD
Wire Wire Line
	4200 2900 4750 2900
Entry Bus Bus
	4850 3000 4750 2900
Text Label 4750 3000 2    50   ~ 0
ROW0
Wire Wire Line
	4200 3000 4750 3000
Entry Bus Bus
	4850 3100 4750 3000
Text Label 4750 3100 2    50   ~ 0
ROW3
Wire Wire Line
	4200 3100 4750 3100
Entry Bus Bus
	4850 3200 4750 3100
Text Label 4750 3200 2    50   ~ 0
KSW-A
Wire Wire Line
	4200 3200 4750 3200
Entry Bus Bus
	4850 3300 4750 3200
Text Label 4750 3300 2    50   ~ 0
KSW-B
Wire Wire Line
	4200 3300 4750 3300
Entry Bus Bus
	4850 3400 4750 3300
Text Label 4750 3400 2    50   ~ 0
KSW-C
Wire Wire Line
	4200 3400 4750 3400
Entry Bus Bus
	4850 3500 4750 3400
Text Label 4750 3500 2    50   ~ 0
URESET
Wire Wire Line
	4200 3500 4750 3500
Entry Bus Bus
	4850 3600 4750 3500
NoConn ~ 3000 1300
NoConn ~ 3000 1400
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 5E5CB3A7
P 5600 1800
F 0 "J6" H 5680 1848 50  0000 L CNN
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
L Device:Crystal_GND24 X1
U 1 1 5E5D4F72
P 1550 2700
F 0 "X1" H 1700 3000 50  0000 L CNN
F 1 "16MHz" H 1650 2900 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_2016-4Pin_2.0x1.6mm" H 1550 2700 50  0001 C CNN
F 3 "~" H 1550 2700 50  0001 C CNN
	1    1550 2700
	1    0    0    -1  
$EndComp
$Comp
L Power2:GND #PWR0110
U 1 1 5E5DDA01
P 1550 2900
F 0 "#PWR0110" H 1550 2650 50  0001 C CNN
F 1 "GND" H 1555 2727 50  0000 C CNN
F 2 "" H 1550 2900 50  0001 C CNN
F 3 "" H 1550 2900 50  0001 C CNN
	1    1550 2900
	1    0    0    -1  
$EndComp
$Comp
L Power2:GND #PWR0111
U 1 1 5E5DDF14
P 1550 2500
F 0 "#PWR0111" H 1550 2250 50  0001 C CNN
F 1 "GND" H 1555 2327 50  0000 C CNN
F 2 "" H 1550 2500 50  0001 C CNN
F 3 "" H 1550 2500 50  0001 C CNN
	1    1550 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5E5DE596
P 1950 2800
F 0 "C5" H 2042 2846 50  0000 L CNN
F 1 "22pF" H 2042 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1950 2800 50  0001 C CNN
F 3 "~" H 1950 2800 50  0001 C CNN
	1    1950 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5E5DF0B7
P 1150 2800
F 0 "C4" H 1242 2846 50  0000 L CNN
F 1 "22pF" H 1242 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1150 2800 50  0001 C CNN
F 3 "~" H 1150 2800 50  0001 C CNN
	1    1150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2700 1400 2700
Wire Wire Line
	1700 2700 1950 2700
Wire Wire Line
	1150 2900 1550 2900
Connection ~ 1550 2900
Wire Wire Line
	1550 2900 1950 2900
$Comp
L Device:R_Small_US R3
U 1 1 5E61BBC8
P 1550 2150
F 0 "R3" V 1345 2150 50  0000 C CNN
F 1 "1M" V 1436 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1550 2150 50  0001 C CNN
F 3 "~" H 1550 2150 50  0001 C CNN
	1    1550 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 2700 1150 2150
Wire Wire Line
	1150 2150 1450 2150
Connection ~ 1150 2700
Text Label 2450 2150 2    50   ~ 0
XTAL2
Text Label 2450 1800 2    50   ~ 0
XTAL1
Entry Bus Bus
	2550 2250 2450 2150
Entry Bus Bus
	2550 1900 2450 1800
Wire Wire Line
	2450 1800 1150 1800
Wire Wire Line
	1150 1800 1150 2150
Connection ~ 1150 2150
Wire Wire Line
	1650 2150 1950 2150
Wire Wire Line
	1950 2700 1950 2150
Connection ~ 1950 2700
Connection ~ 1950 2150
Wire Wire Line
	1950 2150 2450 2150
Wire Bus Line
	500  500  6400 500 
Connection ~ 2550 4050
Connection ~ 6400 500 
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
L Power2:GND #PWR0112
U 1 1 5E663E93
P 5850 2650
F 0 "#PWR0112" H 5850 2400 50  0001 C CNN
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
L Device:R_Small_US R2
U 1 1 5E6798DF
P 5450 2450
F 0 "R2" V 5550 2450 50  0000 C CNN
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
P 1350 3550
F 0 "J2" H 1400 3867 50  0000 C CNN
F 1 "ICSP" H 1400 3776 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 1350 3550 50  0001 C CNN
F 3 "~" H 1350 3550 50  0001 C CNN
	1    1350 3550
	1    0    0    -1  
$EndComp
Text Label 600  3650 0    50   ~ 0
ICSP-~RESET
Wire Wire Line
	1150 3650 600  3650
Entry Bus Bus
	600  3650 500  3550
Text Label 600  3550 0    50   ~ 0
ICSP-SCK
Wire Wire Line
	1150 3550 600  3550
Entry Bus Bus
	600  3550 500  3450
Text Label 600  3450 0    50   ~ 0
ICSP-MISO
Wire Wire Line
	1150 3450 600  3450
Entry Bus Bus
	600  3450 500  3350
Text Label 2200 3550 2    50   ~ 0
ICSP-MOSI
Wire Wire Line
	1650 3550 2200 3550
Entry Bus Bus
	2200 3550 2300 3450
$Comp
L Power2:GND #PWR0113
U 1 1 5E706974
P 1650 3650
F 0 "#PWR0113" H 1650 3400 50  0001 C CNN
F 1 "GND" H 1655 3477 50  0000 C CNN
F 2 "" H 1650 3650 50  0001 C CNN
F 3 "" H 1650 3650 50  0001 C CNN
	1    1650 3650
	1    0    0    -1  
$EndComp
$Comp
L Power2:+5V #PWR0114
U 1 1 5E707577
P 1650 3450
F 0 "#PWR0114" H 1650 3300 50  0001 C CNN
F 1 "+5V" H 1665 3623 50  0000 C CNN
F 2 "" H 1650 3450 50  0001 C CNN
F 3 "" H 1650 3450 50  0001 C CNN
	1    1650 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J3
U 1 1 5E72EC2D
P 1150 4550
F 0 "J3" H 1068 4125 50  0000 C CNN
F 1 "Serial" H 1068 4216 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 1150 4550 50  0001 C CNN
F 3 "~" H 1150 4550 50  0001 C CNN
	1    1150 4550
	-1   0    0    1   
$EndComp
$Comp
L Power2:GND #PWR0115
U 1 1 5E730435
P 1350 4750
F 0 "#PWR0115" H 1350 4500 50  0001 C CNN
F 1 "GND" H 1355 4577 50  0000 C CNN
F 2 "" H 1350 4750 50  0001 C CNN
F 3 "" H 1350 4750 50  0001 C CNN
	1    1350 4750
	1    0    0    -1  
$EndComp
$Comp
L Power2:+5V #PWR0116
U 1 1 5E73088A
P 1350 4350
F 0 "#PWR0116" H 1350 4200 50  0001 C CNN
F 1 "+5V" H 1365 4523 50  0000 C CNN
F 2 "" H 1350 4350 50  0001 C CNN
F 3 "" H 1350 4350 50  0001 C CNN
	1    1350 4350
	1    0    0    -1  
$EndComp
Text Label 2700 4450 2    50   ~ 0
ICSP-~RESET
Wire Wire Line
	2150 4450 2700 4450
Entry Bus Bus
	2700 4450 2800 4350
Text Label 2700 4550 2    50   ~ 0
SER-TXD
Entry Bus Bus
	2700 4550 2800 4450
Text Label 2700 4650 2    50   ~ 0
SER-RXD
Wire Wire Line
	2150 4650 2700 4650
Entry Bus Bus
	2700 4650 2800 4550
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 5E760C2B
P 4000 4650
F 0 "J4" H 3918 4967 50  0000 C CNN
F 1 "KSW" H 3918 4876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4000 4650 50  0001 C CNN
F 3 "~" H 4000 4650 50  0001 C CNN
	1    4000 4650
	-1   0    0    -1  
$EndComp
Text Label 4750 4550 2    50   ~ 0
KSW-A
Wire Wire Line
	4200 4550 4750 4550
Entry Bus Bus
	4750 4550 4850 4450
Text Label 4750 4650 2    50   ~ 0
KSW-B
Wire Wire Line
	4200 4650 4750 4650
Entry Bus Bus
	4750 4650 4850 4550
Text Label 4750 4750 2    50   ~ 0
KSW-C
Wire Wire Line
	4200 4750 4750 4750
Entry Bus Bus
	4750 4750 4850 4650
Connection ~ 4850 4050
$Comp
L Device:R_Small_US R6
U 1 1 5E63D084
P 2050 4650
F 0 "R6" V 2250 4650 50  0000 C CNN
F 1 "1K" V 2150 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2050 4650 50  0001 C CNN
F 3 "~" H 2050 4650 50  0001 C CNN
	1    2050 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 5E64BB71
P 1900 4550
F 0 "R7" V 1695 4550 50  0000 C CNN
F 1 "1K" V 1786 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1900 4550 50  0001 C CNN
F 3 "~" H 1900 4550 50  0001 C CNN
	1    1900 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 4550 2700 4550
Wire Wire Line
	1350 4550 1800 4550
$Comp
L Device:R_Small_US R5
U 1 1 5E666DBE
P 1500 4500
F 0 "R5" H 1568 4546 50  0000 L CNN
F 1 "10K" H 1568 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1500 4500 50  0001 C CNN
F 3 "~" H 1500 4500 50  0001 C CNN
	1    1500 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 5E66795C
P 2150 4350
F 0 "R1" H 2250 4500 50  0000 L CNN
F 1 "10K" H 2250 4400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2150 4350 50  0001 C CNN
F 3 "~" H 2150 4350 50  0001 C CNN
	1    2150 4350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 5E668400
P 2000 4300
F 0 "D1" V 1954 4379 50  0000 L CNN
F 1 "1N4148" V 2045 4379 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 2000 4125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2000 4300 50  0001 C CNN
	1    2000 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 4350 1350 4350
Connection ~ 1350 4350
Wire Wire Line
	2150 4250 2150 4150
Wire Wire Line
	2150 4150 2000 4150
Wire Wire Line
	2000 4150 1500 4150
Wire Wire Line
	1500 4150 1500 4350
Connection ~ 2000 4150
Wire Wire Line
	2000 4450 2150 4450
Connection ~ 2150 4450
$Comp
L Device:C_Small C7
U 1 1 5E6C0937
P 1900 4450
F 0 "C7" V 1671 4450 50  0000 C CNN
F 1 "0.1uF" V 1762 4450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1900 4450 50  0001 C CNN
F 3 "~" H 1900 4450 50  0001 C CNN
	1    1900 4450
	0    1    1    0   
$EndComp
Connection ~ 2000 4450
$Comp
L Power2:GND #PWR0117
U 1 1 5ED59FB9
P 2550 1100
F 0 "#PWR0117" H 2550 850 50  0001 C CNN
F 1 "GND" H 2555 927 50  0000 C CNN
F 2 "" H 2550 1100 50  0001 C CNN
F 3 "" H 2550 1100 50  0001 C CNN
	1    2550 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1100 3000 1100
Wire Wire Line
	2550 1100 2700 1100
Wire Wire Line
	3700 800  3600 800 
$Comp
L Power2:+5V #PWR0118
U 1 1 5ED9511B
P 750 900
F 0 "#PWR0118" H 750 750 50  0001 C CNN
F 1 "+5V" H 765 1073 50  0000 C CNN
F 2 "" H 750 900 50  0001 C CNN
F 3 "" H 750 900 50  0001 C CNN
	1    750  900 
	1    0    0    -1  
$EndComp
Connection ~ 750  900 
Wire Bus Line
	500  4050 2550 4050
Wire Bus Line
	2300 3450 2550 3450
Connection ~ 2550 3450
Wire Bus Line
	2550 3450 2550 4050
Wire Bus Line
	2550 4050 2800 4050
Connection ~ 2800 4050
Wire Bus Line
	2800 4050 4850 4050
Wire Wire Line
	1350 4450 1800 4450
Wire Wire Line
	1500 4400 1500 4350
Wire Wire Line
	1350 4650 1500 4650
Connection ~ 1500 4350
Wire Wire Line
	1500 4600 1500 4650
Connection ~ 1500 4650
Wire Wire Line
	1500 4650 1950 4650
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 5ED590A3
P 5700 3650
F 0 "J7" H 5780 3692 50  0000 L CNN
F 1 "MISO" H 5780 3601 50  0000 L CNN
F 2 "CPU2:SolderPad" H 5700 3650 50  0001 C CNN
F 3 "~" H 5700 3650 50  0001 C CNN
	1    5700 3650
	1    0    0    -1  
$EndComp
Text Label 4950 3850 0    50   ~ 0
ICSP-SCK
Wire Wire Line
	5500 3850 4950 3850
Entry Bus Bus
	4950 3850 4850 3750
Text Label 4950 3650 0    50   ~ 0
ICSP-MISO
Wire Wire Line
	5500 3650 4950 3650
Entry Bus Bus
	4950 3650 4850 3550
Text Label 4950 4050 0    50   ~ 0
ICSP-MOSI
Wire Wire Line
	5500 4050 4950 4050
Entry Bus Bus
	4950 4050 4850 3950
$Comp
L Connector_Generic:Conn_01x01 J8
U 1 1 5EDC2776
P 5700 3850
F 0 "J8" H 5780 3892 50  0000 L CNN
F 1 "SCK" H 5780 3801 50  0000 L CNN
F 2 "CPU2:SolderPad" H 5700 3850 50  0001 C CNN
F 3 "~" H 5700 3850 50  0001 C CNN
	1    5700 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J9
U 1 1 5EDD1353
P 5700 4050
F 0 "J9" H 5780 4092 50  0000 L CNN
F 1 "MOSI" H 5780 4001 50  0000 L CNN
F 2 "CPU2:SolderPad" H 5700 4050 50  0001 C CNN
F 3 "~" H 5700 4050 50  0001 C CNN
	1    5700 4050
	1    0    0    -1  
$EndComp
Wire Bus Line
	2550 1900 2550 3450
Wire Bus Line
	2800 4050 2800 4550
Wire Bus Line
	4850 4050 4850 4650
Wire Bus Line
	500  500  500  4050
Wire Bus Line
	8900 500  8900 3150
Wire Bus Line
	6400 500  6400 3150
Wire Bus Line
	8600 500  8600 3300
Wire Bus Line
	11100 500  11100 3300
Wire Bus Line
	4850 1500 4850 4050
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 616F814E
P 3600 2300
F 0 "U1" H 3950 3800 50  0000 C CNN
F 1 "ATmega328P-AU" H 4000 850 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 3600 2300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 3600 2300 50  0001 C CNN
	1    3600 2300
	1    0    0    -1  
$EndComp
Connection ~ 3600 800 
$EndSCHEMATC
