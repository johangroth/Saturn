EESchema Schematic File Version 4
LIBS:saturn-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title ""
Date "2018-11-04"
Rev "0.1"
Comp "Linux Grotto"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L saturn:DS1511Y+ U12
U 1 1 5A3D8313
P 4700 2975
F 0 "U12" H 4800 3700 60  0000 C CNN
F 1 "DS1511Y+" V 4750 2975 60  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket" H 4450 3425 60  0001 C CNN
F 3 "" H 4450 3425 60  0001 C CNN
	1    4700 2975
	1    0    0    -1  
$EndComp
Wire Wire Line
	5275 2400 5575 2400
Wire Wire Line
	5275 2500 5575 2500
Wire Wire Line
	5275 2600 5575 2600
Wire Wire Line
	5275 2700 5575 2700
Wire Wire Line
	5275 2800 5575 2800
Wire Wire Line
	5275 2900 5575 2900
Wire Wire Line
	5275 3000 5575 3000
Wire Wire Line
	5275 3100 5575 3100
Entry Wire Line
	5575 2400 5675 2300
Entry Wire Line
	5575 2500 5675 2400
Entry Wire Line
	5575 2600 5675 2500
Entry Wire Line
	5575 2700 5675 2600
Entry Wire Line
	5575 2800 5675 2700
Entry Wire Line
	5575 2900 5675 2800
Entry Wire Line
	5575 3000 5675 2900
Entry Wire Line
	5575 3100 5675 3000
Wire Wire Line
	4225 2400 3925 2400
Wire Wire Line
	4225 2500 3925 2500
Wire Wire Line
	4225 2600 3925 2600
Wire Wire Line
	4225 2700 3925 2700
Wire Wire Line
	4225 2800 3925 2800
Entry Wire Line
	3825 2700 3925 2800
Entry Wire Line
	3825 2300 3925 2400
Entry Wire Line
	3825 2400 3925 2500
Entry Wire Line
	3825 2500 3925 2600
Entry Wire Line
	3825 2600 3925 2700
Wire Bus Line
	3825 1800 3075 1800
Text Label 3075 1800 0    60   ~ 0
A[0..18]
Wire Bus Line
	5675 1800 6325 1800
Text Label 6325 1800 2    60   ~ 0
D[0..7]
Text HLabel 6325 1800 2    60   BiDi ~ 0
D[0..7]
Text HLabel 3075 1800 0    60   Input ~ 0
A[0..18]
Text HLabel 5575 3225 2    60   Output ~ 0
~PWR
Text HLabel 5575 3350 2    60   Input ~ 0
~KS
Text HLabel 3925 3450 0    60   Output ~ 0
~IRQ
Text HLabel 3925 3575 0    60   Output ~ 0
~RES
Wire Wire Line
	5275 3225 5575 3225
Wire Wire Line
	5275 3350 5575 3350
Wire Wire Line
	5275 3600 5575 3600
Wire Wire Line
	4225 3450 3925 3450
Wire Wire Line
	4225 3575 3925 3575
Wire Wire Line
	4650 3975 4725 3975
Wire Wire Line
	4725 3975 4725 4150
Connection ~ 4725 3975
$Comp
L power1:GND #PWR068
U 1 1 5A3D88A1
P 4725 4175
F 0 "#PWR068" H 4725 3925 50  0001 C CNN
F 1 "GND" H 4725 4025 50  0000 C CNN
F 2 "" H 4725 4175 50  0001 C CNN
F 3 "" H 4725 4175 50  0001 C CNN
	1    4725 4175
	1    0    0    -1  
$EndComp
Wire Wire Line
	4725 2100 4725 1925
$Comp
L power1:VCC #PWR069
U 1 1 5A3D896E
P 4725 1875
F 0 "#PWR069" H 4725 1725 50  0001 C CNN
F 1 "VCC" H 4725 2025 50  0000 C CNN
F 2 "" H 4725 1875 50  0001 C CNN
F 3 "" H 4725 1875 50  0001 C CNN
	1    4725 1875
	1    0    0    -1  
$EndComp
$Comp
L device:C_Small C20
U 1 1 5A3D89E9
P 5025 1925
F 0 "C20" V 4925 1875 50  0000 L CNN
F 1 "0.1uF" V 5125 1825 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5025 1925 50  0001 C CNN
F 3 "" H 5025 1925 50  0001 C CNN
	1    5025 1925
	0    1    1    0   
$EndComp
Wire Wire Line
	4925 1925 4725 1925
Connection ~ 4725 1925
Wire Wire Line
	5125 1925 6100 1925
Wire Wire Line
	6100 1925 6100 4150
Wire Wire Line
	6100 4150 4725 4150
Connection ~ 4725 4150
Text Label 5575 2400 2    60   ~ 0
D0
Text Label 5575 2500 2    60   ~ 0
D1
Text Label 5575 2600 2    60   ~ 0
D2
Text Label 5575 2700 2    60   ~ 0
D3
Text Label 5575 2800 2    60   ~ 0
D4
Text Label 5575 2900 2    60   ~ 0
D5
Text Label 5575 3000 2    60   ~ 0
D6
Text Label 5575 3100 2    60   ~ 0
D7
Text Label 3925 2400 0    60   ~ 0
A0
Text Label 3925 2500 0    60   ~ 0
A1
Text Label 3925 2600 0    60   ~ 0
A2
Text Label 3925 2700 0    60   ~ 0
A3
Text Label 3925 2800 0    60   ~ 0
A4
Text HLabel 3925 3250 0    60   Input ~ 0
~MWR
Text HLabel 3925 3125 0    60   Input ~ 0
~MRD
Text HLabel 3925 3000 0    60   Input ~ 0
~RTCSEL
Wire Wire Line
	4225 3250 3925 3250
Wire Wire Line
	4225 3125 3925 3125
Wire Wire Line
	4225 3000 3925 3000
NoConn ~ 5275 3475
$Comp
L power1:GND #PWR070
U 1 1 5A3DA9B9
P 5575 3600
F 0 "#PWR070" H 5575 3350 50  0001 C CNN
F 1 "GND" H 5575 3450 50  0000 C CNN
F 2 "" H 5575 3600 50  0001 C CNN
F 3 "" H 5575 3600 50  0001 C CNN
	1    5575 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4725 3975 4775 3975
Wire Wire Line
	4725 1925 4725 1875
Wire Wire Line
	4725 4150 4725 4175
$Comp
L power:VCC #PWR0101
U 1 1 5BE1F817
P 9450 1700
F 0 "#PWR0101" H 9450 1550 50  0001 C CNN
F 1 "VCC" H 9467 1873 50  0000 C CNN
F 2 "" H 9450 1700 50  0001 C CNN
F 3 "" H 9450 1700 50  0001 C CNN
	1    9450 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5BE1F849
P 9450 3900
F 0 "#PWR0102" H 9450 3650 50  0001 C CNN
F 1 "GND" H 9455 3727 50  0000 C CNN
F 2 "" H 9450 3900 50  0001 C CNN
F 3 "" H 9450 3900 50  0001 C CNN
	1    9450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3750 9700 3900
Wire Wire Line
	9700 3900 9450 3900
Wire Wire Line
	9450 3900 9200 3900
Wire Wire Line
	9200 3900 9200 3750
Connection ~ 9450 3900
Wire Wire Line
	9200 1850 9200 1700
Wire Wire Line
	9200 1700 9450 1700
Wire Wire Line
	9450 1700 9700 1700
Wire Wire Line
	9700 1700 9700 1850
Connection ~ 9450 1700
Wire Wire Line
	9200 1950 8900 1950
Wire Wire Line
	9200 2050 8900 2050
Wire Wire Line
	9200 2150 8900 2150
Wire Wire Line
	9200 2250 8900 2250
Wire Wire Line
	9200 2350 8900 2350
Wire Wire Line
	9200 2450 8900 2450
Wire Wire Line
	9200 2550 8900 2550
Wire Wire Line
	9200 2650 8900 2650
Wire Wire Line
	9200 2850 8900 2850
Wire Wire Line
	9200 2950 8900 2950
Wire Wire Line
	9200 3050 8900 3050
Wire Wire Line
	9200 3150 8900 3150
Wire Wire Line
	9200 3350 8900 3350
Wire Wire Line
	9200 3450 8900 3450
Wire Wire Line
	9200 3550 8900 3550
Wire Wire Line
	9200 3650 8900 3650
Wire Wire Line
	9700 1950 10000 1950
Wire Wire Line
	9700 2050 10000 2050
Wire Wire Line
	9700 2150 10000 2150
Wire Wire Line
	9700 2250 10000 2250
Wire Wire Line
	9700 2350 10000 2350
Wire Wire Line
	9700 2450 10000 2450
Wire Wire Line
	9700 2550 10000 2550
Wire Wire Line
	9700 2650 10000 2650
Wire Wire Line
	9700 2750 10000 2750
Wire Wire Line
	9700 2850 10000 2850
Wire Wire Line
	9700 2950 10000 2950
Wire Wire Line
	9700 3050 10000 3050
Wire Wire Line
	9700 3150 10000 3150
Wire Wire Line
	9700 3250 10000 3250
Wire Wire Line
	9700 3350 10000 3350
Wire Wire Line
	9700 3450 10000 3450
Wire Wire Line
	9700 3550 10000 3550
Wire Wire Line
	9700 3650 10000 3650
Text Label 8900 1950 0    50   ~ 0
D0
Text Label 8900 2050 0    50   ~ 0
D1
Text Label 8900 2150 0    50   ~ 0
D2
Text Label 8900 2250 0    50   ~ 0
D3
Text Label 8900 2350 0    50   ~ 0
D4
Text Label 8900 2450 0    50   ~ 0
D5
Text Label 8900 2550 0    50   ~ 0
D6
Text Label 8900 2650 0    50   ~ 0
D7
Text Label 10000 1950 2    50   ~ 0
A0
Text Label 10000 2050 2    50   ~ 0
A1
Text Label 10000 2150 2    50   ~ 0
A2
Text Label 10000 2250 2    50   ~ 0
A3
Text Label 10000 2350 2    50   ~ 0
A4
Text Label 10000 2450 2    50   ~ 0
A5
Text Label 10000 2550 2    50   ~ 0
A6
Text Label 10000 2650 2    50   ~ 0
A7
Text Label 10000 2750 2    50   ~ 0
A8
Text Label 10000 2850 2    50   ~ 0
A9
Text Label 10000 2950 2    50   ~ 0
A10
Text Label 10000 3050 2    50   ~ 0
A11
Text Label 10000 3150 2    50   ~ 0
A12
Text Label 10000 3250 2    50   ~ 0
A13
Text Label 10000 3350 2    50   ~ 0
A14
Text Label 10000 3450 2    50   ~ 0
A15
Entry Bus Bus
	8800 1850 8900 1950
Entry Bus Bus
	8800 1950 8900 2050
Entry Bus Bus
	8800 2050 8900 2150
Entry Bus Bus
	8800 2150 8900 2250
Entry Bus Bus
	8800 2250 8900 2350
Entry Bus Bus
	8800 2350 8900 2450
Entry Bus Bus
	8800 2450 8900 2550
Entry Bus Bus
	8800 2550 8900 2650
Entry Bus Bus
	10000 1950 10100 1850
Entry Bus Bus
	10000 2050 10100 1950
Entry Bus Bus
	10000 2150 10100 2050
Entry Bus Bus
	10000 2250 10100 2150
Entry Bus Bus
	10000 2350 10100 2250
Entry Bus Bus
	10000 2450 10100 2350
Entry Bus Bus
	10000 2550 10100 2450
Entry Bus Bus
	10000 2650 10100 2550
Entry Bus Bus
	10000 2750 10100 2650
Entry Bus Bus
	10000 2850 10100 2750
Entry Bus Bus
	10000 2950 10100 2850
Entry Bus Bus
	10000 3050 10100 2950
Entry Bus Bus
	10000 3150 10100 3050
Entry Bus Bus
	10000 3250 10100 3150
Entry Bus Bus
	10000 3350 10100 3250
Entry Bus Bus
	10000 3450 10100 3350
Wire Bus Line
	8800 1850 8225 1850
Wire Bus Line
	10100 1850 10725 1850
Text Label 8225 1850 0    50   ~ 0
D[0..7]
Text Label 10725 1850 2    50   ~ 0
A[0..18]
Text HLabel 8225 1850 0    60   BiDi ~ 0
D[0..7]
Text HLabel 10725 1850 2    60   Input ~ 0
A[0..18]
Text HLabel 8900 3650 0    50   Input ~ 0
~MWR
Text HLabel 8900 3550 0    50   Input ~ 0
~MRD
Text HLabel 8900 3450 0    50   Output ~ 0
~IRQ
Text HLabel 8900 3350 0    50   Input ~ 0
~RES
Text HLabel 8900 3150 0    50   Input ~ 0
~IOSEL2
Text HLabel 8900 3050 0    50   Input ~ 0
R/~W
Text HLabel 8900 2950 0    50   Input ~ 0
CLK
Text HLabel 8900 2850 0    50   Input ~ 0
~NMI
Text HLabel 10000 3550 2    50   Output ~ 0
RDY
NoConn ~ 10000 3650
NoConn ~ 9200 2750
$Comp
L conn:CONN_02X20 J7
U 1 1 5BE1F74C
P 9450 2800
F 0 "J7" H 9525 3850 50  0000 C CNN
F 1 "Expansion Bus" H 9475 1450 50  0000 C CNN
F 2 "Connectors_IDC:IDC-Header_2x20_Pitch2.54mm_Angled" H 9450 1850 50  0001 C CNN
F 3 "" H 9450 1850 50  0001 C CNN
	1    9450 2800
	1    0    0    -1  
$EndComp
Text HLabel 8900 3250 0    50   Input ~ 0
~IOSEL3
Text Notes 4150 1575 0    60   ~ 12
RTC (00:FE80 - 00:FE9F)
Wire Wire Line
	9200 3250 8900 3250
Wire Bus Line
	3825 1800 3825 2700
Wire Bus Line
	8800 1850 8800 2550
Wire Bus Line
	5675 1800 5675 3000
Wire Bus Line
	10100 1850 10100 3350
Text Notes 8800 4400 0    60   ~ 12
IOSEL2 (00:FE60 - 00:FE7F)
Text Notes 8800 4525 0    60   ~ 12
IOSEL3 (00:FE40 - 00:FE5F)
$EndSCHEMATC
