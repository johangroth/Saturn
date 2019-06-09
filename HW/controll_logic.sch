EESchema Schematic File Version 4
LIBS:saturn-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title "Glue and control logic"
Date "2018-01-17"
Rev "0.1"
Comp "Linux Grotto"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L saturn:TL7705B U10
U 1 1 5A3B41A8
P 3125 3050
F 0 "U10" H 3375 3500 50  0000 C CNN
F 1 "TL7705B" H 3425 2602 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 3125 3050 50  0001 C CNN
F 3 "" H 3125 3050 50  0001 C CNN
	1    3125 3050
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:74HC74-74xx1 U9
U 2 1 5A3B42E3
P 1300 6625
F 0 "U9" H 1450 6925 50  0000 C CNN
F 1 "74HC74" H 1600 6330 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 1300 6625 50  0001 C CNN
F 3 "" H 1300 6625 50  0001 C CNN
	2    1300 6625
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:74HC74-74xx1 U9
U 1 1 5A3B432C
P 3825 6625
F 0 "U9" H 3975 6925 50  0000 C CNN
F 1 "74HC74" H 4125 6330 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 3825 6625 50  0001 C CNN
F 3 "" H 3825 6625 50  0001 C CNN
	1    3825 6625
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:CXO_DIP8-Oscillators X2
U 1 1 5A3B45C3
P 2650 6625
F 0 "X2" H 2450 6875 50  0000 L CNN
F 1 "16MHz" H 2700 6375 50  0000 L CNN
F 2 "Oscillators:Oscillator_DIP-8" H 3100 6275 50  0001 C CNN
F 3 "" H 2550 6625 50  0001 C CNN
	1    2650 6625
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:VCC-power1 #PWR048
U 1 1 5A3B5086
P 2650 6075
F 0 "#PWR048" H 2650 5925 50  0001 C CNN
F 1 "VCC" H 2650 6225 50  0000 C CNN
F 2 "" H 2650 6075 50  0001 C CNN
F 3 "" H 2650 6075 50  0001 C CNN
	1    2650 6075
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:GND-power1 #PWR049
U 1 1 5A3B5184
P 2650 7050
F 0 "#PWR049" H 2650 6800 50  0001 C CNN
F 1 "GND" H 2650 6900 50  0000 C CNN
F 2 "" H 2650 7050 50  0001 C CNN
F 3 "" H 2650 7050 50  0001 C CNN
	1    2650 7050
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:GND-power1 #PWR050
U 1 1 5A3B51A8
P 700 7375
F 0 "#PWR050" H 700 7125 50  0001 C CNN
F 1 "GND" H 700 7225 50  0000 C CNN
F 2 "" H 700 7375 50  0001 C CNN
F 3 "" H 700 7375 50  0001 C CNN
	1    700  7375
	1    0    0    -1  
$EndComp
Text HLabel 4850 6425 2    60   Output ~ 0
CLK
Text Label 4850 6425 2    60   ~ 0
CLK
NoConn ~ 2350 6625
NoConn ~ 1900 6425
NoConn ~ 1900 6825
$Comp
L saturn-rescue:VCC-power1 #PWR051
U 1 1 5A3B65BD
P 3925 1150
F 0 "#PWR051" H 3925 1000 50  0001 C CNN
F 1 "VCC" H 3925 1300 50  0000 C CNN
F 2 "" H 3925 1150 50  0001 C CNN
F 3 "" H 3925 1150 50  0001 C CNN
	1    3925 1150
	1    0    0    -1  
$EndComp
Text HLabel 4750 1925 2    60   BiDi ~ 0
~IRQ
Text HLabel 4750 2025 2    60   BiDi ~ 0
~NMI
Text HLabel 4750 2125 2    60   Output ~ 0
BE
Text HLabel 4750 2225 2    60   Output ~ 0
RDY
Text HLabel 4750 2425 2    60   Output ~ 0
~PWR
Text HLabel 4750 2525 2    60   Output ~ 0
~RES
Text HLabel 4750 2625 2    60   Output ~ 0
RES
$Comp
L saturn-rescue:C_Small-device C15
U 1 1 5A3B6A11
P 3925 3650
F 0 "C15" H 3935 3720 50  0000 L CNN
F 1 "0.1uF" H 3935 3570 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3925 3650 50  0001 C CNN
F 3 "" H 3925 3650 50  0001 C CNN
	1    3925 3650
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:R_Small-device R3
U 1 1 5A3B6A86
P 4250 3475
F 0 "R3" V 4175 3425 50  0000 L CNN
F 1 "3.3k" V 4325 3400 50  0000 L CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" H 4250 3475 50  0001 C CNN
F 3 "" H 4250 3475 50  0001 C CNN
	1    4250 3475
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:R_Small-device R2
U 1 1 5A3B6C94
P 2325 3475
F 0 "R2" H 2355 3495 50  0000 L CNN
F 1 "475" V 2250 3400 50  0000 L CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" H 2325 3475 50  0001 C CNN
F 3 "" H 2325 3475 50  0001 C CNN
	1    2325 3475
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:CP_Small-device C14
U 1 1 5A3B6D16
P 2325 3750
F 0 "C14" H 2335 3820 50  0000 L CNN
F 1 "15uF" V 2225 3675 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D5.0mm_P2.50mm" H 2325 3750 50  0001 C CNN
F 3 "" H 2325 3750 50  0001 C CNN
	1    2325 3750
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:R_Small-device R1
U 1 1 5A3B6D93
P 2000 2950
F 0 "R1" H 2030 2970 50  0000 L CNN
F 1 "22k" V 1925 2875 50  0000 L CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" H 2000 2950 50  0001 C CNN
F 3 "" H 2000 2950 50  0001 C CNN
	1    2000 2950
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:SW_Push-switches SW1
U 1 1 5A3B9114
P 2000 3375
F 0 "SW1" H 2050 3475 50  0000 L CNN
F 1 "RESET" H 2000 3315 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_6mm_h4.3mm" H 2000 3575 50  0001 C CNN
F 3 "" H 2000 3575 50  0001 C CNN
	1    2000 3375
	0    -1   -1   0   
$EndComp
$Comp
L saturn-rescue:GND-power1 #PWR052
U 1 1 5A3B95EF
P 3125 3850
F 0 "#PWR052" H 3125 3600 50  0001 C CNN
F 1 "GND" H 3125 3700 50  0000 C CNN
F 2 "" H 3125 3850 50  0001 C CNN
F 3 "" H 3125 3850 50  0001 C CNN
	1    3125 3850
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:VCC-power1 #PWR053
U 1 1 5A3B9B69
P 2325 2500
F 0 "#PWR053" H 2325 2350 50  0001 C CNN
F 1 "VCC" H 2325 2650 50  0000 C CNN
F 2 "" H 2325 2500 50  0001 C CNN
F 3 "" H 2325 2500 50  0001 C CNN
	1    2325 2500
	1    0    0    -1  
$EndComp
Text HLabel 4750 1825 2    60   Output ~ 0
~KS
$Comp
L saturn:ispMACH4A U11
U 1 1 5A3F3D11
P 8275 2325
AR Path="/5A3F3D11" Ref="U11"  Part="1" 
AR Path="/5A3B356D/5A3F3D11" Ref="U11"  Part="1" 
F 0 "U11" H 8275 3775 60  0000 C CNN
F 1 "ispMACH4A" V 8275 1950 60  0000 C CNN
F 2 "saturn:PLCC-44_THT-Socket" H 7950 2300 60  0001 C CNN
F 3 "" H 7950 2300 60  0001 C CNN
	1    8275 2325
	1    0    0    -1  
$EndComp
Text HLabel 7250 3075 0    50   Output ~ 0
~DUARTSEL
Text HLabel 7250 3375 0    50   Output ~ 0
~VIA1SEL
Text HLabel 7250 3275 0    50   Output ~ 0
~VIA2SEL
Text HLabel 7250 3175 0    50   Output ~ 0
~RTCSEL
Text HLabel 4750 2325 2    60   Output ~ 0
~ABT
$Comp
L saturn-rescue:R_Network08-device RN1
U 1 1 5A416FA2
P 4325 1550
F 0 "RN1" V 3825 1550 50  0000 C CNN
F 1 "3.3k" H 4275 1725 50  0000 C CNN
F 2 "Resistors_THT:R_Array_SIP9" V 4800 1550 50  0001 C CNN
F 3 "" H 4325 1550 50  0001 C CNN
	1    4325 1550
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:Fuse-device F2
U 1 1 5A43A547
P 9525 5000
F 0 "F2" V 9605 5000 50  0000 C CNN
F 1 "1A" V 9450 5000 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_open_Schurter_0031_8201" V 9455 5000 50  0001 C CNN
F 3 "" H 9525 5000 50  0001 C CNN
	1    9525 5000
	0    1    1    0   
$EndComp
$Comp
L saturn-rescue:Fuse-device F1
U 1 1 5A43A5A2
P 8350 5350
F 0 "F1" V 8430 5350 50  0000 C CNN
F 1 "200mA" V 8275 5350 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_open_Schurter_0031_8201" V 8280 5350 50  0001 C CNN
F 3 "" H 8350 5350 50  0001 C CNN
	1    8350 5350
	0    1    1    0   
$EndComp
$Comp
L saturn:SPDT S1
U 1 1 5A43C20E
P 9025 5050
F 0 "S1" H 9025 5200 60  0000 C CNN
F 1 "SPDT" H 9025 4900 60  0000 C CNN
F 2 "Switches_THT:SW-SPDT-0900766b81587629" H 9025 5050 60  0001 C CNN
F 3 "" H 9025 5050 60  0001 C CNN
	1    9025 5050
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:CONN_01X04-conn J5
U 1 1 5A43C29B
P 10300 5250
F 0 "J5" H 10300 5500 50  0000 C CNN
F 1 "POWER_IN" V 10400 5250 50  0000 C CNN
F 2 "Connectors_Molex:Molex_NanoFit_1x04x2.50mm_Angled" H 10300 5250 50  0001 C CNN
F 3 "" H 10300 5250 50  0001 C CNN
	1    10300 5250
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:CP_Small-device C19
U 1 1 5A43C8E4
P 9350 5300
F 0 "C19" H 9360 5370 50  0000 L CNN
F 1 "100uF" H 9360 5220 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D6.3mm_P2.50mm" H 9350 5300 50  0001 C CNN
F 3 "" H 9350 5300 50  0001 C CNN
	1    9350 5300
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:CP_Small-device C18
U 1 1 5A43C96F
P 7950 5575
F 0 "C18" H 7960 5645 50  0000 L CNN
F 1 "100uF" H 7960 5495 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D6.3mm_P2.50mm" H 7950 5575 50  0001 C CNN
F 3 "" H 7950 5575 50  0001 C CNN
	1    7950 5575
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:LED-device D1
U 1 1 5A43C9AA
P 8725 5575
F 0 "D1" H 8725 5675 50  0000 C CNN
F 1 "LED" H 8725 5475 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 8725 5575 50  0001 C CNN
F 3 "" H 8725 5575 50  0001 C CNN
	1    8725 5575
	0    -1   -1   0   
$EndComp
$Comp
L saturn-rescue:R_Small-device R4
U 1 1 5A43CA45
P 8725 5225
F 0 "R4" H 8755 5245 50  0000 L CNN
F 1 "470" V 8650 5175 50  0000 L CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" H 8725 5225 50  0001 C CNN
F 3 "" H 8725 5225 50  0001 C CNN
	1    8725 5225
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:PWR_FLAG-power1 #FLG054
U 1 1 5A43CDBE
P 10100 5000
F 0 "#FLG054" H 10100 5075 50  0001 C CNN
F 1 "PWR_FLAG" H 10100 5150 50  0000 C CNN
F 2 "" H 10100 5000 50  0001 C CNN
F 3 "" H 10100 5000 50  0001 C CNN
	1    10100 5000
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:PWR_FLAG-power1 #FLG055
U 1 1 5A43CDFA
P 10000 5825
F 0 "#FLG055" H 10000 5900 50  0001 C CNN
F 1 "PWR_FLAG" H 10000 5975 50  0000 C CNN
F 2 "" H 10000 5825 50  0001 C CNN
F 3 "" H 10000 5825 50  0001 C CNN
	1    10000 5825
	-1   0    0    1   
$EndComp
Text Label 9675 5000 0    60   ~ 0
PWR_IN
NoConn ~ 9175 5100
$Comp
L saturn-rescue:GND-power1 #PWR056
U 1 1 5A43D8F9
P 7050 5825
F 0 "#PWR056" H 7050 5575 50  0001 C CNN
F 1 "GND" H 7050 5675 50  0000 C CNN
F 2 "" H 7050 5825 50  0001 C CNN
F 3 "" H 7050 5825 50  0001 C CNN
	1    7050 5825
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:VCC-power1 #PWR057
U 1 1 5A43D935
P 7600 5050
F 0 "#PWR057" H 7600 4900 50  0001 C CNN
F 1 "VCC" H 7600 5200 50  0000 C CNN
F 2 "" H 7600 5050 50  0001 C CNN
F 3 "" H 7600 5050 50  0001 C CNN
	1    7600 5050
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:+5V-power1 #PWR058
U 1 1 5A43F37E
P 7600 5350
F 0 "#PWR058" H 7600 5200 50  0001 C CNN
F 1 "+5V" H 7600 5490 50  0000 C CNN
F 2 "" H 7600 5350 50  0001 C CNN
F 3 "" H 7600 5350 50  0001 C CNN
	1    7600 5350
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:CONN_02X05-conn J6
U 1 1 5A4410D6
P 6250 5350
F 0 "J6" H 6250 5650 50  0000 C CNN
F 1 "JTAG" H 6250 5050 50  0000 C CNN
F 2 "Connectors_IDC:IDC-Header_2x05_Pitch2.54mm_Straight" H 6250 4150 50  0001 C CNN
F 3 "" H 6250 4150 50  0001 C CNN
	1    6250 5350
	1    0    0    -1  
$EndComp
NoConn ~ 6500 5550
NoConn ~ 6000 5550
Text Label 9300 3650 2    50   ~ 0
TCK
Text Label 9300 3750 2    50   ~ 0
TMS
Text Label 9300 3850 2    50   ~ 0
TDI
Text Label 9300 3950 2    50   ~ 0
TDO
Text Label 5400 5150 0    60   ~ 0
TCK
Text Label 5400 5250 0    60   ~ 0
TMS
Text Label 5400 5350 0    60   ~ 0
TDI
Text Label 5400 5450 0    60   ~ 0
TDO
$Comp
L saturn-rescue:C_Small-device C22
U 1 1 5A449952
P 8675 1075
F 0 "C22" V 8775 1025 50  0000 L CNN
F 1 "0.1uF" V 8575 950 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 8675 1075 50  0001 C CNN
F 3 "" H 8675 1075 50  0001 C CNN
	1    8675 1075
	0    -1   -1   0   
$EndComp
$Comp
L saturn-rescue:C_Small-device C21
U 1 1 5A449A79
P 7850 1075
F 0 "C21" V 7950 1025 50  0000 L CNN
F 1 "0.1uF" V 7750 975 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 7850 1075 50  0001 C CNN
F 3 "" H 7850 1075 50  0001 C CNN
	1    7850 1075
	0    -1   -1   0   
$EndComp
$Comp
L saturn-rescue:GND-power1 #PWR060
U 1 1 5A44C14E
P 8300 4600
F 0 "#PWR060" H 8300 4350 50  0001 C CNN
F 1 "GND" H 8300 4450 50  0000 C CNN
F 2 "" H 8300 4600 50  0001 C CNN
F 3 "" H 8300 4600 50  0001 C CNN
	1    8300 4600
	1    0    0    -1  
$EndComp
NoConn ~ 10100 5400
Text Label 9400 1375 2    50   ~ 0
CLK
Text Label 4750 1925 2    50   ~ 0
~IRQ
Text Label 6050 1275 0    60   ~ 0
D[0..7]
Text Label 6050 2875 0    60   ~ 0
A[0..18]
Text Label 7250 1375 0    50   ~ 0
D0
Text Label 7250 1475 0    50   ~ 0
D1
Text Label 7250 1575 0    50   ~ 0
D2
Text Label 7250 1675 0    50   ~ 0
D3
Text Label 7250 1775 0    50   ~ 0
A8
Text Label 7250 1875 0    50   ~ 0
A9
Text Label 7250 1975 0    50   ~ 0
A10
Text Label 7250 2075 0    50   ~ 0
A11
Text Label 7250 2175 0    50   ~ 0
A12
Text Label 7250 2275 0    50   ~ 0
A13
Text Label 7250 2375 0    50   ~ 0
A14
Text Label 7250 2475 0    50   ~ 0
A15
Text Label 7250 2575 0    50   ~ 0
A16
Text Label 7250 2675 0    50   ~ 0
A17
Text Label 7250 2775 0    50   ~ 0
A18
Text Label 9400 1475 2    50   ~ 0
VDA
Text Label 9400 1575 2    50   ~ 0
VPA
Text Label 9400 1775 2    50   ~ 0
R/~W
Text Label 9400 1875 2    50   ~ 0
~RES
Text Label 9400 1975 2    50   ~ 0
~MRD
Text Label 9400 2075 2    50   ~ 0
~MWR
Text Label 9400 3075 2    50   ~ 0
~RAM0
Text Label 9400 3175 2    50   ~ 0
~RAM1
Text Label 9400 3275 2    50   ~ 0
~ROM
Text HLabel 6050 1275 0    60   BiDi ~ 0
D[0..7]
Text HLabel 6050 2875 0    60   Input ~ 0
A[0..18]
Text HLabel 9400 1375 2    50   Input ~ 0
CLK
Text HLabel 9400 1475 2    50   Input ~ 0
VDA
Text HLabel 9400 1575 2    50   Input ~ 0
VPA
Text HLabel 9400 1775 2    50   Input ~ 0
R/~W
Text HLabel 9400 1975 2    50   Output ~ 0
~MRD
Text HLabel 9400 2075 2    50   Output ~ 0
~MWR
Text HLabel 9400 1875 2    50   Input ~ 0
~RES
Text HLabel 9400 3075 2    50   Output ~ 0
~RAM0
Text HLabel 9400 3175 2    50   Output ~ 0
~RAM1
Text HLabel 9400 3275 2    50   Output ~ 0
~ROM
Text Notes 3450 4225 2    60   ~ 0
RESET controller
Text Notes 3750 7400 2    60   ~ 0
Clock generator
Text Label 9400 1675 2    50   ~ 0
STP
$Comp
L saturn-rescue:CONN_01X03-conn J8
U 1 1 5AA76556
P 4750 4875
F 0 "J8" H 4750 5075 50  0000 C CNN
F 1 "Stop System" V 4850 4875 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4750 4875 50  0001 C CNN
F 3 "" H 4750 4875 50  0001 C CNN
	1    4750 4875
	1    0    0    -1  
$EndComp
Text Label 4750 2225 2    50   ~ 0
RDY
Text Label 4275 4775 0    60   ~ 0
STP
Text Label 4275 4875 0    60   ~ 0
RDY
$Comp
L saturn-rescue:GND-power1 #PWR061
U 1 1 5AA76AFA
P 4275 4975
F 0 "#PWR061" H 4275 4725 50  0001 C CNN
F 1 "GND" H 4275 4825 50  0000 C CNN
F 2 "" H 4275 4975 50  0001 C CNN
F 3 "" H 4275 4975 50  0001 C CNN
	1    4275 4975
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:PWR_FLAG-power1 #FLG062
U 1 1 5AA7AD12
P 7875 5050
F 0 "#FLG062" H 7875 5125 50  0001 C CNN
F 1 "PWR_FLAG" H 7875 5200 50  0000 C CNN
F 2 "" H 7875 5050 50  0001 C CNN
F 3 "" H 7875 5050 50  0001 C CNN
	1    7875 5050
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:PWR_FLAG-power1 #FLG063
U 1 1 5AA7AE0B
P 7950 5350
F 0 "#FLG063" H 7950 5425 50  0001 C CNN
F 1 "PWR_FLAG" H 7950 5500 50  0000 C CNN
F 2 "" H 7950 5350 50  0001 C CNN
F 3 "" H 7950 5350 50  0001 C CNN
	1    7950 5350
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:VCC-power1 #PWR064
U 1 1 5AA1B8B6
P 8225 1075
F 0 "#PWR064" H 8225 925 50  0001 C CNN
F 1 "VCC" H 8125 1150 50  0000 C CNN
F 2 "" H 8225 1075 50  0001 C CNN
F 3 "" H 8225 1075 50  0001 C CNN
	1    8225 1075
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:VCC-power1 #PWR065
U 1 1 5AA1B8FA
P 8325 1075
F 0 "#PWR065" H 8325 925 50  0001 C CNN
F 1 "VCC" H 8425 1150 50  0000 C CNN
F 2 "" H 8325 1075 50  0001 C CNN
F 3 "" H 8325 1075 50  0001 C CNN
	1    8325 1075
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:Q_NPN_EBC-device Q1
U 1 1 5B5CB0CA
P 2750 4950
F 0 "Q1" H 2950 5000 50  0000 L CNN
F 1 "DS1813" H 2425 5075 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 2950 5050 50  0001 C CNN
F 3 "" H 2750 4950 50  0001 C CNN
	1    2750 4950
	-1   0    0    1   
$EndComp
Text Label 4750 2025 2    50   ~ 0
~NMI
Text Label 2650 4500 3    60   ~ 0
~NMI
$Comp
L saturn-rescue:GND-power1 #PWR066
U 1 1 5B5CB6C5
P 2650 5325
F 0 "#PWR066" H 2650 5075 50  0001 C CNN
F 1 "GND" H 2650 5175 50  0000 C CNN
F 2 "" H 2650 5325 50  0001 C CNN
F 3 "" H 2650 5325 50  0001 C CNN
	1    2650 5325
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:VCC-power1 #PWR067
U 1 1 5B5CB70D
P 2950 4950
F 0 "#PWR067" H 2950 4800 50  0001 C CNN
F 1 "VCC" H 2950 5100 50  0000 C CNN
F 2 "" H 2950 4950 50  0001 C CNN
F 3 "" H 2950 4950 50  0001 C CNN
	1    2950 4950
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:SW_Push-switches SW2
U 1 1 5B5CB858
P 2150 5025
F 0 "SW2" H 2200 5125 50  0000 L CNN
F 1 "PANIC" H 2150 4965 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_6mm_h4.3mm" H 2150 5225 50  0001 C CNN
F 3 "" H 2150 5225 50  0001 C CNN
	1    2150 5025
	0    -1   1    0   
$EndComp
Text Notes 2250 5650 0    60   ~ 0
NMI Debouncer
Connection ~ 7050 5450
Connection ~ 7050 5250
Wire Wire Line
	7050 5150 7050 5250
Wire Wire Line
	6500 5350 7600 5350
Wire Wire Line
	2150 5325 2650 5325
Wire Wire Line
	2150 5225 2150 5325
Wire Wire Line
	2150 4750 2650 4750
Wire Wire Line
	2150 4825 2150 4750
Wire Wire Line
	2650 5325 2650 5150
Wire Wire Line
	2650 4750 2650 4500
Connection ~ 7875 5050
Connection ~ 9350 5825
Wire Wire Line
	4550 4975 4275 4975
Wire Wire Line
	4550 4875 4275 4875
Wire Wire Line
	4550 4775 4275 4775
Wire Wire Line
	9000 1675 9400 1675
Wire Wire Line
	9000 3275 9400 3275
Wire Wire Line
	9000 3175 9400 3175
Wire Wire Line
	9000 3075 9400 3075
Wire Wire Line
	9000 2075 9400 2075
Wire Wire Line
	9000 1975 9400 1975
Wire Wire Line
	9000 1875 9400 1875
Wire Wire Line
	9000 1775 9400 1775
Wire Wire Line
	9000 1575 9400 1575
Wire Wire Line
	9000 1475 9400 1475
Wire Bus Line
	7150 2875 6050 2875
Wire Bus Line
	7150 1275 6050 1275
Wire Wire Line
	7550 2775 7250 2775
Wire Wire Line
	7550 2675 7250 2675
Wire Wire Line
	7550 2475 7250 2475
Wire Wire Line
	7550 2375 7250 2375
Wire Wire Line
	7550 2275 7250 2275
Wire Wire Line
	7550 2575 7250 2575
Wire Wire Line
	7550 2175 7250 2175
Wire Wire Line
	7550 1975 7250 1975
Wire Wire Line
	7550 1875 7250 1875
Wire Wire Line
	7550 2075 7250 2075
Wire Wire Line
	7550 1775 7250 1775
Wire Wire Line
	7550 1675 7250 1675
Wire Wire Line
	7550 1475 7250 1475
Wire Wire Line
	7550 1575 7250 1575
Wire Wire Line
	7250 1375 7550 1375
Wire Wire Line
	9000 1375 9400 1375
Wire Wire Line
	6600 1075 7750 1075
Wire Wire Line
	6600 4450 6600 1075
Wire Wire Line
	9950 1075 8775 1075
Wire Wire Line
	9950 4450 9950 1075
Wire Wire Line
	6600 4450 8100 4450
Wire Wire Line
	8225 1075 7950 1075
Wire Wire Line
	8325 1075 8575 1075
Wire Wire Line
	6500 5250 7050 5250
Wire Wire Line
	7600 5050 7875 5050
Connection ~ 7600 5350
Wire Wire Line
	9000 3950 9300 3950
Wire Wire Line
	9000 3850 9300 3850
Wire Wire Line
	9000 3750 9300 3750
Wire Wire Line
	9000 3650 9300 3650
Wire Wire Line
	7050 5450 6500 5450
Wire Wire Line
	6500 5150 7050 5150
Connection ~ 7950 5825
Wire Wire Line
	7950 5675 7950 5825
Connection ~ 7950 5350
Wire Wire Line
	7950 5350 7950 5475
Connection ~ 8500 5050
Wire Wire Line
	8500 5050 8500 5350
Connection ~ 8725 5050
Wire Wire Line
	8725 5050 8725 5125
Wire Wire Line
	8725 5425 8725 5325
Connection ~ 8725 5825
Wire Wire Line
	8725 5725 8725 5825
Wire Wire Line
	7050 5825 7950 5825
Wire Wire Line
	9350 5400 9350 5825
Connection ~ 9350 5000
Wire Wire Line
	9350 5200 9350 5000
Wire Wire Line
	9175 5000 9350 5000
Wire Wire Line
	10000 5825 10000 5300
Wire Wire Line
	10000 5300 10100 5300
Wire Wire Line
	10100 5300 10100 5200
Wire Wire Line
	10100 5000 9675 5000
Wire Wire Line
	10100 5100 10100 5000
Wire Wire Line
	4625 1825 4750 1825
Wire Wire Line
	4625 1750 4625 1825
Wire Wire Line
	7550 3375 7250 3375
Wire Wire Line
	7550 3275 7250 3275
Wire Wire Line
	7550 3175 7250 3175
Wire Wire Line
	7550 3075 7250 3075
Connection ~ 3925 3850
Wire Wire Line
	4250 3850 4250 3575
Connection ~ 3125 3850
Wire Wire Line
	3925 3850 3925 3750
Wire Wire Line
	3925 3275 3925 3550
Connection ~ 2325 3850
Wire Wire Line
	2000 3575 2000 3850
Wire Wire Line
	2000 3050 2000 3175
Wire Wire Line
	2325 3050 2000 3050
Connection ~ 2325 2500
Wire Wire Line
	2000 2500 2000 2850
Wire Wire Line
	2325 2500 2325 2825
Wire Wire Line
	2000 2500 2325 2500
Wire Wire Line
	3125 3850 3125 3600
Wire Wire Line
	2000 3850 2325 3850
Wire Wire Line
	2325 3575 2325 3650
Wire Wire Line
	2325 3275 2325 3375
Wire Wire Line
	3925 3050 4250 3050
Wire Wire Line
	4125 2325 4750 2325
Wire Wire Line
	4125 1750 4125 2325
Wire Wire Line
	4225 2225 4750 2225
Wire Wire Line
	4225 1750 4225 2225
Wire Wire Line
	4325 2125 4750 2125
Wire Wire Line
	4325 1750 4325 2125
Wire Wire Line
	4425 2025 4750 2025
Wire Wire Line
	4425 1750 4425 2025
Wire Wire Line
	4525 1925 4750 1925
Wire Wire Line
	4525 1750 4525 1925
Wire Wire Line
	3925 1350 3925 1150
Connection ~ 700  7175
Wire Wire Line
	1300 7175 700  7175
Connection ~ 700  6625
Connection ~ 700  6425
Wire Wire Line
	700  6075 700  6425
Wire Wire Line
	1300 6075 700  6075
Wire Wire Line
	2650 6925 2650 7050
Wire Wire Line
	4425 6425 4850 6425
Wire Wire Line
	3225 5975 3225 6425
Wire Wire Line
	4575 5975 3225 5975
Wire Wire Line
	4575 6825 4575 5975
Wire Wire Line
	4425 6825 4575 6825
Connection ~ 3075 6075
Wire Wire Line
	3075 7175 3075 6075
Wire Wire Line
	3825 7175 3075 7175
Wire Wire Line
	2650 6075 3075 6075
Wire Wire Line
	2650 6075 2650 6325
Wire Wire Line
	2950 6625 3225 6625
Wire Wire Line
	7050 5450 7050 5825
Wire Wire Line
	7050 5250 7050 5450
Wire Wire Line
	7875 5050 8500 5050
Wire Wire Line
	9350 5825 10000 5825
Wire Wire Line
	8450 4450 9950 4450
Wire Wire Line
	7600 5350 7950 5350
Wire Wire Line
	7950 5825 8725 5825
Wire Wire Line
	7950 5350 8200 5350
Wire Wire Line
	8500 5050 8725 5050
Wire Wire Line
	8725 5050 8875 5050
Wire Wire Line
	8725 5825 9350 5825
Wire Wire Line
	9350 5000 9375 5000
Wire Wire Line
	3925 3850 4250 3850
Wire Wire Line
	3125 3850 3925 3850
Wire Wire Line
	4250 3050 4250 3375
Wire Wire Line
	2325 3850 3125 3850
Wire Wire Line
	2325 2500 3125 2500
Wire Wire Line
	3925 2525 3925 2825
Wire Wire Line
	700  7175 700  7375
Wire Wire Line
	700  6625 700  7175
Wire Wire Line
	700  6425 700  6625
Wire Wire Line
	3075 6075 3825 6075
Wire Notes Line
	1825 4400 1825 5725
Wire Notes Line
	1825 5725 3150 5725
Wire Notes Line
	3150 5725 3150 4400
Wire Notes Line
	3150 4400 1825 4400
Wire Wire Line
	4250 2625 4750 2625
Wire Wire Line
	4025 1750 4025 2425
Wire Wire Line
	4025 2425 4750 2425
Connection ~ 4250 3050
Wire Wire Line
	4250 2625 4250 3050
Wire Wire Line
	3925 2525 4750 2525
Connection ~ 3925 2525
Wire Wire Line
	3925 1750 3925 2525
Wire Notes Line
	2250 5850 5125 5850
Wire Notes Line
	5125 5850 5125 7475
Wire Notes Line
	5125 7475 2250 7475
Wire Notes Line
	2250 7475 2250 5850
Wire Notes Line
	1825 4275 1825 925 
Wire Notes Line
	1825 925  5100 925 
Wire Notes Line
	5100 925  5100 4275
Wire Notes Line
	5100 4275 1825 4275
Wire Wire Line
	7550 4075 7250 4075
Text HLabel 7250 4075 0    50   Output ~ 0
~IOSEL2
Wire Wire Line
	5400 5450 5600 5450
Wire Wire Line
	5400 5350 5700 5350
Connection ~ 2650 4750
Connection ~ 2650 5325
$Comp
L saturn-rescue:VCC-power #PWR055
U 1 1 5BF4F6F5
P 5600 4300
F 0 "#PWR055" H 5600 4150 50  0001 C CNN
F 1 "VCC" H 5617 4473 50  0000 C CNN
F 2 "" H 5600 4300 50  0001 C CNN
F 3 "" H 5600 4300 50  0001 C CNN
	1    5600 4300
	1    0    0    -1  
$EndComp
Entry Wire Line
	7150 1275 7250 1375
Entry Wire Line
	7150 1375 7250 1475
Entry Wire Line
	7150 1475 7250 1575
Entry Wire Line
	7150 1575 7250 1675
Entry Wire Line
	7150 1875 7250 1775
Entry Wire Line
	7150 1975 7250 1875
Entry Wire Line
	7150 2075 7250 1975
Entry Wire Line
	7150 2175 7250 2075
Entry Wire Line
	7150 2275 7250 2175
Entry Wire Line
	7150 2375 7250 2275
Entry Wire Line
	7150 2475 7250 2375
Entry Wire Line
	7150 2575 7250 2475
Entry Wire Line
	7150 2675 7250 2575
Entry Wire Line
	7150 2775 7250 2675
Entry Wire Line
	7150 2875 7250 2775
Wire Wire Line
	8225 4450 8300 4450
Wire Wire Line
	8300 4600 8300 4450
Connection ~ 8300 4450
Wire Wire Line
	8300 4450 8350 4450
$Comp
L saturn-rescue:GND-power #PWR0105
U 1 1 5C21E5C0
P 8450 4600
F 0 "#PWR0105" H 8450 4350 50  0001 C CNN
F 1 "GND" H 8450 4450 50  0000 C CNN
F 2 "" H 8450 4600 50  0001 C CNN
F 3 "" H 8450 4600 50  0001 C CNN
	1    8450 4600
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:GND-power #PWR0106
U 1 1 5C21E832
P 8100 4600
F 0 "#PWR0106" H 8100 4350 50  0001 C CNN
F 1 "GND" H 8100 4450 50  0000 C CNN
F 2 "" H 8100 4600 50  0001 C CNN
F 3 "" H 8100 4600 50  0001 C CNN
	1    8100 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4600 8450 4450
Connection ~ 8450 4450
Wire Wire Line
	8100 4600 8100 4450
Connection ~ 8100 4450
$Comp
L saturn-rescue:MountingHole-Mechanical H1
U 1 1 5C2392E9
P 5650 6075
F 0 "H1" H 5750 6121 50  0000 L CNN
F 1 "MountingHole" H 5750 6030 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965_Pad" H 5650 6075 50  0001 C CNN
F 3 "~" H 5650 6075 50  0001 C CNN
	1    5650 6075
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:MountingHole-Mechanical H2
U 1 1 5C239368
P 5650 6300
F 0 "H2" H 5750 6346 50  0000 L CNN
F 1 "MountingHole" H 5750 6255 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965_Pad" H 5650 6300 50  0001 C CNN
F 3 "~" H 5650 6300 50  0001 C CNN
	1    5650 6300
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:MountingHole-Mechanical H3
U 1 1 5C2393BC
P 5650 6550
F 0 "H3" H 5750 6596 50  0000 L CNN
F 1 "MountingHole" H 5750 6505 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965_Pad" H 5650 6550 50  0001 C CNN
F 3 "~" H 5650 6550 50  0001 C CNN
	1    5650 6550
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:MountingHole-Mechanical H4
U 1 1 5C9ECC4F
P 5650 6800
F 0 "H4" H 5750 6846 50  0000 L CNN
F 1 "MountingHole" H 5750 6755 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965_Pad" H 5650 6800 50  0001 C CNN
F 3 "~" H 5650 6800 50  0001 C CNN
	1    5650 6800
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:R_Network04-device RN2
U 1 1 5C9EDD0C
P 5800 4700
F 0 "RN2" H 5980 4746 50  0000 L CNN
F 1 "3.3k" H 5980 4655 50  0000 L CNN
F 2 "Resistors_THT:R_Array_SIP5" V 6075 4700 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 5800 4700 50  0001 C CNN
	1    5800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5250 5800 5250
Wire Wire Line
	5400 5150 5900 5150
Wire Wire Line
	5600 4900 5600 5450
Connection ~ 5600 5450
Wire Wire Line
	5600 5450 6000 5450
Wire Wire Line
	5700 4900 5700 5350
Connection ~ 5700 5350
Wire Wire Line
	5700 5350 6000 5350
Wire Wire Line
	5800 4900 5800 5250
Connection ~ 5800 5250
Wire Wire Line
	5800 5250 6000 5250
Wire Wire Line
	5900 4900 5900 5150
Connection ~ 5900 5150
Wire Wire Line
	5900 5150 6000 5150
Wire Wire Line
	7550 3975 7250 3975
Text HLabel 7250 3975 0    50   Output ~ 0
~IOSEL3
NoConn ~ 7550 3475
NoConn ~ 7550 3575
Wire Wire Line
	5600 4300 5600 4500
Wire Bus Line
	7150 1275 7150 1575
Wire Bus Line
	7150 1875 7150 2875
$EndSCHEMATC
