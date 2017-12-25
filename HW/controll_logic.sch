EESchema Schematic File Version 2
LIBS:saturn-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:saturn
LIBS:65xx
LIBS:pluto
LIBS:Oscillators
LIBS:switches
LIBS:saturn-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title "Glue and control logic"
Date "2017-12-23"
Rev "0.1"
Comp "Linux Grotto"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TL7705B U10
U 1 1 5A3B41A8
P 3125 3050
F 0 "U10" H 3375 3500 50  0000 C CNN
F 1 "TL7705B" H 3425 2602 50  0000 C CNN
F 2 "" H 3125 3050 50  0001 C CNN
F 3 "" H 3125 3050 50  0001 C CNN
	1    3125 3050
	1    0    0    -1  
$EndComp
$Comp
L 74HC74 U9
U 2 1 5A3B42E3
P 3825 6625
F 0 "U9" H 3975 6925 50  0000 C CNN
F 1 "74HC74" H 4125 6330 50  0000 C CNN
F 2 "" H 3825 6625 50  0001 C CNN
F 3 "" H 3825 6625 50  0001 C CNN
	2    3825 6625
	1    0    0    -1  
$EndComp
$Comp
L 74HC74 U9
U 1 1 5A3B432C
P 1300 6625
F 0 "U9" H 1450 6925 50  0000 C CNN
F 1 "74HC74" H 1600 6330 50  0000 C CNN
F 2 "" H 1300 6625 50  0001 C CNN
F 3 "" H 1300 6625 50  0001 C CNN
	1    1300 6625
	1    0    0    -1  
$EndComp
$Comp
L CXO_DIP8 X2
U 1 1 5A3B45C3
P 2650 6625
F 0 "X2" H 2450 6875 50  0000 L CNN
F 1 "8MHz" H 2700 6375 50  0000 L CNN
F 2 "Oscillators:Oscillator_DIP-8" H 3100 6275 50  0001 C CNN
F 3 "" H 2550 6625 50  0001 C CNN
	1    2650 6625
	1    0    0    -1  
$EndComp
$Comp
L R_Network07 RN1
U 1 1 5A3B464D
P 4225 1550
F 0 "RN1" V 3825 1550 50  0000 C CNN
F 1 "3.3kOhm" V 4625 1550 50  0000 C CNN
F 2 "Resistors_THT:R_Array_SIP8" V 4700 1550 50  0001 C CNN
F 3 "" H 4225 1550 50  0001 C CNN
	1    4225 1550
	1    0    0    -1  
$EndComp
$Comp
L R_Network07 RN2
U 1 1 5A3B46CC
P 1750 1100
F 0 "RN2" V 1350 1100 50  0000 C CNN
F 1 "3.3kOhm" V 2150 1100 50  0000 C CNN
F 2 "Resistors_THT:R_Array_SIP8" V 2225 1100 50  0001 C CNN
F 3 "" H 1750 1100 50  0001 C CNN
	1    1750 1100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR14
U 1 1 5A3B5086
P 2650 6075
F 0 "#PWR14" H 2650 5925 50  0001 C CNN
F 1 "VCC" H 2650 6225 50  0000 C CNN
F 2 "" H 2650 6075 50  0001 C CNN
F 3 "" H 2650 6075 50  0001 C CNN
	1    2650 6075
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR15
U 1 1 5A3B5184
P 2650 7050
F 0 "#PWR15" H 2650 6800 50  0001 C CNN
F 1 "GND" H 2650 6900 50  0000 C CNN
F 2 "" H 2650 7050 50  0001 C CNN
F 3 "" H 2650 7050 50  0001 C CNN
	1    2650 7050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 5A3B51A8
P 700 7375
F 0 "#PWR12" H 700 7125 50  0001 C CNN
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
L VCC #PWR17
U 1 1 5A3B65BD
P 3925 1150
F 0 "#PWR17" H 3925 1000 50  0001 C CNN
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
Text HLabel 4750 2325 2    60   Output ~ 0
~SO
Text HLabel 4750 2625 2    60   Output ~ 0
RES
$Comp
L C_Small C15
U 1 1 5A3B6A11
P 3925 3650
F 0 "C15" H 3935 3720 50  0000 L CNN
F 1 "0.1uF" H 3935 3570 50  0000 L CNN
F 2 "" H 3925 3650 50  0001 C CNN
F 3 "" H 3925 3650 50  0001 C CNN
	1    3925 3650
	1    0    0    -1  
$EndComp
$Comp
L R_Small R3
U 1 1 5A3B6A86
P 4250 3475
F 0 "R3" V 4175 3425 50  0000 L CNN
F 1 "3.3k" V 4325 3400 50  0000 L CNN
F 2 "" H 4250 3475 50  0001 C CNN
F 3 "" H 4250 3475 50  0001 C CNN
	1    4250 3475
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 5A3B6C94
P 2325 3475
F 0 "R2" H 2355 3495 50  0000 L CNN
F 1 "475" V 2250 3400 50  0000 L CNN
F 2 "" H 2325 3475 50  0001 C CNN
F 3 "" H 2325 3475 50  0001 C CNN
	1    2325 3475
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C14
U 1 1 5A3B6D16
P 2325 3750
F 0 "C14" H 2335 3820 50  0000 L CNN
F 1 "15uF" V 2225 3675 50  0000 L CNN
F 2 "" H 2325 3750 50  0001 C CNN
F 3 "" H 2325 3750 50  0001 C CNN
	1    2325 3750
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 5A3B6D93
P 2000 2950
F 0 "R1" H 2030 2970 50  0000 L CNN
F 1 "22k" V 1925 2875 50  0000 L CNN
F 2 "" H 2000 2950 50  0001 C CNN
F 3 "" H 2000 2950 50  0001 C CNN
	1    2000 2950
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5A3B9114
P 2000 3375
F 0 "SW1" H 2050 3475 50  0000 L CNN
F 1 "RESET" H 2000 3315 50  0000 C CNN
F 2 "" H 2000 3575 50  0001 C CNN
F 3 "" H 2000 3575 50  0001 C CNN
	1    2000 3375
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR16
U 1 1 5A3B95EF
P 3125 3850
F 0 "#PWR16" H 3125 3600 50  0001 C CNN
F 1 "GND" H 3125 3700 50  0000 C CNN
F 2 "" H 3125 3850 50  0001 C CNN
F 3 "" H 3125 3850 50  0001 C CNN
	1    3125 3850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR13
U 1 1 5A3B9B69
P 2325 2500
F 0 "#PWR13" H 2325 2350 50  0001 C CNN
F 1 "VCC" H 2325 2650 50  0000 C CNN
F 2 "" H 2325 2500 50  0001 C CNN
F 3 "" H 2325 2500 50  0001 C CNN
	1    2325 2500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR18
U 1 1 5A3BAB89
P 1450 700
F 0 "#PWR18" H 1450 550 50  0001 C CNN
F 1 "VCC" H 1450 850 50  0000 C CNN
F 2 "" H 1450 700 50  0001 C CNN
F 3 "" H 1450 700 50  0001 C CNN
	1    1450 700 
	1    0    0    -1  
$EndComp
Text HLabel 2300 1475 2    60   Input ~ 0
TCK
Text HLabel 2300 1575 2    60   Input ~ 0
TMS
Text HLabel 2300 1675 2    60   Input ~ 0
TDI
Text HLabel 2300 1775 2    60   Output ~ 0
TDO
Text HLabel 2300 1875 2    60   Output ~ 0
~KS
$Comp
L ispMACH4A U?
U 1 1 5A3F3D11
P 8275 2325
F 0 "U?" H 8275 3775 60  0000 C CNN
F 1 "ispMACH4A" V 8275 1950 60  0000 C CNN
F 2 "" H 7950 2300 60  0001 C CNN
F 3 "" H 7950 2300 60  0001 C CNN
	1    8275 2325
	1    0    0    -1  
$EndComp
Text HLabel 7250 3075 0    60   Output ~ 0
~DUARTSEL
Wire Wire Line
	2950 6625 3225 6625
Wire Wire Line
	2650 6075 2650 6325
Wire Wire Line
	2650 6075 3075 6075
Wire Wire Line
	3075 6075 3825 6075
Wire Wire Line
	3825 7175 3075 7175
Wire Wire Line
	3075 7175 3075 6075
Connection ~ 3075 6075
Wire Wire Line
	4425 6825 4575 6825
Wire Wire Line
	4575 6825 4575 5975
Wire Wire Line
	4575 5975 3225 5975
Wire Wire Line
	3225 5975 3225 6425
Wire Wire Line
	4425 6425 4850 6425
Wire Wire Line
	2650 6925 2650 7050
Wire Wire Line
	1300 6075 700  6075
Wire Wire Line
	700  6075 700  6425
Wire Wire Line
	700  6425 700  6625
Wire Wire Line
	700  6625 700  7175
Wire Wire Line
	700  7175 700  7375
Connection ~ 700  6425
Connection ~ 700  6625
Wire Wire Line
	1300 7175 700  7175
Connection ~ 700  7175
Wire Wire Line
	3925 1350 3925 1150
Wire Wire Line
	4525 1750 4525 1925
Wire Wire Line
	4525 1925 4750 1925
Wire Wire Line
	4425 1750 4425 2025
Wire Wire Line
	4425 2025 4750 2025
Wire Wire Line
	4325 1750 4325 2125
Wire Wire Line
	4325 2125 4750 2125
Wire Wire Line
	4225 1750 4225 2225
Wire Wire Line
	4225 2225 4750 2225
Wire Wire Line
	4125 1750 4125 2325
Wire Wire Line
	4125 2325 4750 2325
Wire Wire Line
	4025 1750 4025 2425
Wire Wire Line
	4025 2425 4750 2425
Wire Wire Line
	3925 1750 3925 2525
Wire Wire Line
	3925 2525 3925 2825
Wire Wire Line
	3925 2525 4750 2525
Connection ~ 3925 2525
Wire Wire Line
	3925 3050 4250 3050
Wire Wire Line
	4250 2625 4250 3050
Wire Wire Line
	4250 3050 4250 3375
Wire Wire Line
	4250 2625 4750 2625
Wire Wire Line
	2325 3275 2325 3375
Wire Wire Line
	2325 3575 2325 3650
Wire Wire Line
	2000 3850 2325 3850
Wire Wire Line
	2325 3850 3125 3850
Wire Wire Line
	3125 3850 3925 3850
Wire Wire Line
	3925 3850 4250 3850
Wire Wire Line
	3125 3850 3125 3600
Wire Wire Line
	2000 2500 2325 2500
Wire Wire Line
	2325 2500 3125 2500
Wire Wire Line
	2325 2500 2325 2825
Wire Wire Line
	2000 2500 2000 2850
Connection ~ 2325 2500
Wire Wire Line
	2325 3050 2000 3050
Wire Wire Line
	2000 3050 2000 3175
Wire Wire Line
	2000 3575 2000 3850
Connection ~ 2325 3850
Connection ~ 4250 3050
Wire Wire Line
	3925 3275 3925 3550
Wire Wire Line
	3925 3850 3925 3750
Connection ~ 3125 3850
Wire Wire Line
	4250 3850 4250 3575
Connection ~ 3925 3850
Wire Wire Line
	1450 900  1450 700 
Wire Wire Line
	2050 1300 2050 1475
Wire Wire Line
	2050 1475 2300 1475
Wire Wire Line
	1950 1300 1950 1575
Wire Wire Line
	1950 1575 2300 1575
Wire Wire Line
	1850 1300 1850 1675
Wire Wire Line
	1850 1675 2300 1675
Wire Wire Line
	1750 1300 1750 1775
Wire Wire Line
	1750 1775 2300 1775
Wire Wire Line
	1650 1300 1650 1875
Wire Wire Line
	1650 1875 2300 1875
Wire Wire Line
	1550 1300 1550 1975
Wire Wire Line
	1550 1975 2300 1975
Wire Wire Line
	1450 1300 1450 2075
Wire Wire Line
	1450 2075 2300 2075
Wire Wire Line
	7550 3075 7250 3075
Wire Wire Line
	7550 3200 7250 3200
Wire Wire Line
	7550 3325 7250 3325
Wire Wire Line
	7550 3450 7250 3450
Text HLabel 7250 3200 0    60   Output ~ 0
~VIA1SEL
Text HLabel 7250 3325 0    60   Output ~ 0
~VIA2SEL
Text HLabel 7250 3450 0    60   Output ~ 0
~RTCSEL
Text HLabel 2300 1975 2    60   Output ~ 0
~ABT
$EndSCHEMATC
