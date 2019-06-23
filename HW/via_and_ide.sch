EESchema Schematic File Version 4
LIBS:saturn-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
Title ""
Date "2018-01-17"
Rev "0.1"
Comp "Linux Grotto"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L saturn:WD65C22PLCC44 U7
U 1 1 5A3B3298
P 2875 2300
F 0 "U7" H 2675 3375 60  0000 C CNN
F 1 "WD65C22PLCC44" V 2950 1600 60  0000 C CNN
F 2 "Package_LCC:PLCC-44_THT-Socket" H 2375 2325 60  0001 C CNN
F 3 "" H 2375 2325 60  0000 C CNN
	1    2875 2300
	1    0    0    -1  
$EndComp
$Comp
L saturn:WD65C22PLCC44 U8
U 1 1 5A3B4A4E
P 7875 2300
F 0 "U8" H 7675 3375 60  0000 C CNN
F 1 "WD65C22PLCC44" V 7950 1600 60  0000 C CNN
F 2 "Package_LCC:PLCC-44_THT-Socket" H 7375 2325 60  0001 C CNN
F 3 "" H 7375 2325 60  0000 C CNN
	1    7875 2300
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:CONN_02X20-conn J4
U 1 1 5A3C11DF
P 4125 6225
F 0 "J4" H 4125 7275 50  0000 C CNN
F 1 "IDE" V 4125 6225 50  0000 C CNN
F 2 "Connectors_IDC:IDC-Header_2x20_Pitch2.54mm_Straight" H 4125 5275 50  0001 C CNN
F 3 "" H 4125 5275 50  0001 C CNN
	1    4125 6225
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:CONN_02X07-conn J3
U 1 1 5A3C12B2
P 6200 3450
F 0 "J3" H 6200 3850 50  0000 C CNN
F 1 "VIA2PB" V 6200 3450 50  0000 C CNN
F 2 "Connectors_IDC:IDC-Header_2x07_Pitch2.54mm_Straight" H 6200 2250 50  0001 C CNN
F 3 "" H 6200 2250 50  0001 C CNN
	1    6200 3450
	1    0    0    -1  
$EndComp
Text HLabel 9050 750  2    60   BiDi ~ 0
D[0..7]
Entry Wire Line
	8950 1350 9050 1250
Entry Wire Line
	8950 1450 9050 1350
Entry Wire Line
	8950 1550 9050 1450
Entry Wire Line
	8950 1650 9050 1550
Entry Wire Line
	8950 1750 9050 1650
Entry Wire Line
	8950 1850 9050 1750
Entry Wire Line
	8950 1950 9050 1850
Entry Wire Line
	8950 2050 9050 1950
Entry Wire Line
	3950 1350 4050 1250
Entry Wire Line
	3950 1450 4050 1350
Entry Wire Line
	3950 1550 4050 1450
Entry Wire Line
	3950 1650 4050 1550
Entry Wire Line
	3950 1750 4050 1650
Entry Wire Line
	3950 1850 4050 1750
Entry Wire Line
	3950 1950 4050 1850
Entry Wire Line
	3950 2050 4050 1950
Text Label 3950 1350 2    60   ~ 0
D0
Text Label 3950 1450 2    60   ~ 0
D1
Text Label 3950 1550 2    60   ~ 0
D2
Text Label 3950 1650 2    60   ~ 0
D3
Text Label 3950 1750 2    60   ~ 0
D4
Text Label 3950 1850 2    60   ~ 0
D5
Text Label 3950 1950 2    60   ~ 0
D6
Text Label 3950 2050 2    60   ~ 0
D7
Text Label 8950 1350 2    60   ~ 0
D0
Text Label 8950 1450 2    60   ~ 0
D1
Text Label 8950 1550 2    60   ~ 0
D2
Text Label 8950 1650 2    60   ~ 0
D3
Text Label 8950 1750 2    60   ~ 0
D4
Text Label 8950 1850 2    60   ~ 0
D5
Text Label 8950 1950 2    60   ~ 0
D6
Text Label 8950 2050 2    60   ~ 0
D7
Entry Wire Line
	3950 2425 4050 2525
Entry Wire Line
	3950 2525 4050 2625
Entry Wire Line
	3950 2625 4050 2725
Entry Wire Line
	3950 2725 4050 2825
Entry Wire Line
	8950 2725 9050 2825
Entry Wire Line
	8950 2625 9050 2725
Entry Wire Line
	8950 2525 9050 2625
Entry Wire Line
	8950 2425 9050 2525
Text HLabel 9050 4900 2    60   Input ~ 0
A[0..18]
Text Label 8950 2425 2    60   ~ 0
A0
Text Label 8950 2525 2    60   ~ 0
A1
Text Label 8950 2625 2    60   ~ 0
A2
Text Label 8950 2725 2    60   ~ 0
A3
Text Label 7675 4900 2    60   ~ 0
A[0..18]
Text Label 3950 2425 2    60   ~ 0
A0
Text Label 3950 2525 2    60   ~ 0
A1
Text Label 3950 2625 2    60   ~ 0
A2
Text Label 3950 2725 2    60   ~ 0
A3
Text HLabel 8775 3725 2    60   Input ~ 0
CLK
Text HLabel 8775 3825 2    60   Input ~ 0
~RES
Text HLabel 9675 3925 2    60   Output ~ 0
~IRQ
Text HLabel 8775 3625 2    60   Input ~ 0
R/~W
Text HLabel 3775 3725 2    50   Input ~ 0
CLK
Text HLabel 3775 3825 2    50   Input ~ 0
~RES
Text HLabel 4800 3925 2    60   Output ~ 0
~IRQ
Text HLabel 3775 3625 2    50   Input ~ 0
R/~W
Text Notes 7975 2350 1    60   ~ 12
VIA2
Text Notes 2975 2325 1    60   ~ 12
VIA1
Text HLabel 4125 3100 2    60   Input ~ 0
~VIA1SEL
Text HLabel 9125 3100 2    60   Input ~ 0
~VIA2SEL
$Comp
L saturn-rescue:VCC-power1 #PWR036
U 1 1 5A3DECA8
P 3950 3000
F 0 "#PWR036" H 3950 2850 50  0001 C CNN
F 1 "VCC" H 3850 3075 50  0000 C CNN
F 2 "" H 3950 3000 50  0001 C CNN
F 3 "" H 3950 3000 50  0001 C CNN
	1    3950 3000
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:VCC-power1 #PWR037
U 1 1 5A3DEEFA
P 8950 3000
F 0 "#PWR037" H 8950 2850 50  0001 C CNN
F 1 "VCC" H 8850 3075 50  0000 C CNN
F 2 "" H 8950 3000 50  0001 C CNN
F 3 "" H 8950 3000 50  0001 C CNN
	1    8950 3000
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:GND-power1 #PWR038
U 1 1 5A3DF2AF
P 7950 4625
F 0 "#PWR038" H 7950 4375 50  0001 C CNN
F 1 "GND" H 7950 4475 50  0000 C CNN
F 2 "" H 7950 4625 50  0001 C CNN
F 3 "" H 7950 4625 50  0001 C CNN
	1    7950 4625
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:GND-power1 #PWR039
U 1 1 5A3DF646
P 2950 4625
F 0 "#PWR039" H 2950 4375 50  0001 C CNN
F 1 "GND" H 2950 4475 50  0000 C CNN
F 2 "" H 2950 4625 50  0001 C CNN
F 3 "" H 2950 4625 50  0001 C CNN
	1    2950 4625
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:VCC-power1 #PWR040
U 1 1 5A3DFA06
P 7950 875
F 0 "#PWR040" H 7950 725 50  0001 C CNN
F 1 "VCC" H 7850 950 50  0000 C CNN
F 2 "" H 7950 875 50  0001 C CNN
F 3 "" H 7950 875 50  0001 C CNN
	1    7950 875 
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:VCC-power1 #PWR041
U 1 1 5A3DFA22
P 2950 875
F 0 "#PWR041" H 2950 725 50  0001 C CNN
F 1 "VCC" H 2950 1025 50  0000 C CNN
F 2 "" H 2950 875 50  0001 C CNN
F 3 "" H 2950 875 50  0001 C CNN
	1    2950 875 
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:C_Small-device C17
U 1 1 5A3DFACE
P 8375 925
F 0 "C17" V 8500 875 50  0000 L CNN
F 1 "0.1uF" V 8250 850 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 8375 925 50  0001 C CNN
F 3 "" H 8375 925 50  0001 C CNN
	1    8375 925 
	0    1    1    0   
$EndComp
$Comp
L saturn-rescue:C_Small-device C16
U 1 1 5A3DFDF6
P 3275 925
F 0 "C16" V 3375 875 50  0000 L CNN
F 1 "0.1uF" V 3150 825 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3275 925 50  0001 C CNN
F 3 "" H 3275 925 50  0001 C CNN
	1    3275 925 
	0    1    1    0   
$EndComp
Text Label 3275 6675 0    60   ~ 0
~IDE:DMACK
Text Label 3275 5375 0    60   ~ 0
IDE-D7
Text Label 3275 5475 0    60   ~ 0
IDE-D6
Text Label 3275 5575 0    60   ~ 0
IDE-D5
Text Label 3275 5675 0    60   ~ 0
IDE-D4
Text Label 3275 5775 0    60   ~ 0
IDE-D3
Text Label 3275 5875 0    60   ~ 0
IDE-D2
Text Label 3275 5975 0    60   ~ 0
IDE-D1
Text Label 3275 6075 0    60   ~ 0
IDE-D0
Text Label 4975 5375 2    60   ~ 0
IDE-D8
Text Label 4975 5475 2    60   ~ 0
IDE-D9
Text Label 4975 5575 2    60   ~ 0
IDE-D10
Text Label 4975 5675 2    60   ~ 0
IDE-D11
Text Label 4975 5775 2    60   ~ 0
IDE-D12
Text Label 4975 5875 2    60   ~ 0
IDE-D13
Text Label 4975 5975 2    60   ~ 0
IDE-D14
Text Label 4975 6075 2    60   ~ 0
IDE-D15
Entry Wire Line
	4975 5375 5075 5275
Entry Wire Line
	4975 5475 5075 5375
Entry Wire Line
	4975 5575 5075 5475
Entry Wire Line
	4975 5675 5075 5575
Entry Wire Line
	4975 5775 5075 5675
Entry Wire Line
	4975 5875 5075 5775
Entry Wire Line
	4975 5975 5075 5875
Entry Wire Line
	4975 6075 5075 5975
Entry Wire Line
	3175 5275 3275 5375
Entry Wire Line
	3175 5375 3275 5475
Entry Wire Line
	3175 5475 3275 5575
Entry Wire Line
	3175 5575 3275 5675
Entry Wire Line
	3175 5675 3275 5775
Entry Wire Line
	3175 5775 3275 5875
Entry Wire Line
	3175 5875 3275 5975
Entry Wire Line
	3175 5975 3275 6075
Entry Wire Line
	1825 1450 1925 1350
Entry Wire Line
	1825 1550 1925 1450
Entry Wire Line
	1825 1650 1925 1550
Entry Wire Line
	1825 1750 1925 1650
Entry Wire Line
	1825 1950 1925 1850
Entry Wire Line
	1825 1850 1925 1750
Entry Wire Line
	1825 2050 1925 1950
Entry Wire Line
	1825 2150 1925 2050
Entry Wire Line
	1825 2900 1925 2800
Entry Wire Line
	1825 3000 1925 2900
Entry Wire Line
	1825 3100 1925 3000
Entry Wire Line
	1825 3200 1925 3100
Entry Wire Line
	1825 3400 1925 3300
Entry Wire Line
	1825 3300 1925 3200
Entry Wire Line
	1825 3500 1925 3400
Entry Wire Line
	1825 3600 1925 3500
Text Label 1200 1450 0    60   ~ 0
IDE[D0..D7]
Text Label 1150 3600 0    60   ~ 0
IDE[D8..D15]
Text Label 5675 5275 2    60   ~ 0
IDE[D8..D15]
Text Label 2575 5275 0    60   ~ 0
IDE[D0..D7]
Text Label 1925 1350 0    60   ~ 0
IDE-D0
Text Label 1925 1450 0    60   ~ 0
IDE-D1
Text Label 1925 1550 0    60   ~ 0
IDE-D2
Text Label 1925 1650 0    60   ~ 0
IDE-D3
Text Label 1925 1750 0    60   ~ 0
IDE-D4
Text Label 1925 1850 0    60   ~ 0
IDE-D5
Text Label 1925 1950 0    60   ~ 0
IDE-D6
Text Label 1925 2050 0    60   ~ 0
IDE-D7
Text Label 1925 2800 0    60   ~ 0
IDE-D8
Text Label 1925 2900 0    60   ~ 0
IDE-D9
Text Label 1925 3000 0    60   ~ 0
IDE-D10
Text Label 1925 3100 0    60   ~ 0
IDE-D11
Text Label 1925 3200 0    60   ~ 0
IDE-D12
Text Label 1925 3300 0    60   ~ 0
IDE-D13
Text Label 1925 3400 0    60   ~ 0
IDE-D14
Text Label 1925 3500 0    60   ~ 0
IDE-D15
$Comp
L saturn-rescue:VCC-power1 #PWR042
U 1 1 5A3E3F24
P 6200 3925
F 0 "#PWR042" H 6200 3775 50  0001 C CNN
F 1 "VCC" H 6200 4075 50  0000 C CNN
F 2 "" H 6200 3925 50  0001 C CNN
F 3 "" H 6200 3925 50  0001 C CNN
	1    6200 3925
	-1   0    0    1   
$EndComp
$Comp
L saturn-rescue:GND-power1 #PWR043
U 1 1 5A3E3F44
P 6200 2875
F 0 "#PWR043" H 6200 2625 50  0001 C CNN
F 1 "GND" H 6200 2725 50  0000 C CNN
F 2 "" H 6200 2875 50  0001 C CNN
F 3 "" H 6200 2875 50  0001 C CNN
	1    6200 2875
	-1   0    0    1   
$EndComp
NoConn ~ 2225 2150
NoConn ~ 2225 2250
NoConn ~ 2225 3600
NoConn ~ 2225 3700
NoConn ~ 7225 2250
NoConn ~ 7225 2150
Text Label 3275 7075 0    60   ~ 0
~IDE:CS0
Text Label 4975 7075 2    60   ~ 0
~IDE:CS1
$Comp
L saturn-rescue:GND-power1 #PWR044
U 1 1 5A3E84F7
P 5175 7250
F 0 "#PWR044" H 5175 7000 50  0001 C CNN
F 1 "GND" H 5175 7100 50  0000 C CNN
F 2 "" H 5175 7250 50  0001 C CNN
F 3 "" H 5175 7250 50  0001 C CNN
	1    5175 7250
	1    0    0    -1  
$EndComp
NoConn ~ 4375 6175
NoConn ~ 4375 6575
NoConn ~ 4375 6875
Text Label 4975 6975 2    60   ~ 0
IDE-A2
$Comp
L saturn-rescue:GND-power1 #PWR045
U 1 1 5A3E9E8F
P 4975 5275
F 0 "#PWR045" H 4975 5025 50  0001 C CNN
F 1 "GND" H 4975 5125 50  0000 C CNN
F 2 "" H 4975 5275 50  0001 C CNN
F 3 "" H 4975 5275 50  0001 C CNN
	1    4975 5275
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 1350 3950 1350
Wire Wire Line
	3650 1550 3950 1550
Wire Wire Line
	3650 1650 3950 1650
Wire Wire Line
	3650 1850 3950 1850
Wire Wire Line
	3650 1950 3950 1950
Wire Wire Line
	3650 2050 3950 2050
Wire Wire Line
	3650 1450 3950 1450
Wire Wire Line
	8650 1350 8950 1350
Wire Bus Line
	4050 750  9050 750 
Wire Wire Line
	8650 2425 8950 2425
Wire Wire Line
	3650 2425 3950 2425
Wire Wire Line
	3650 2525 3950 2525
Wire Wire Line
	3650 2625 3950 2625
Wire Wire Line
	3650 2725 3950 2725
Wire Bus Line
	9050 4900 4050 4900
Wire Wire Line
	3650 3000 3950 3000
Wire Wire Line
	3650 3100 4125 3100
Wire Wire Line
	3650 3625 3775 3625
Wire Wire Line
	3650 3725 3775 3725
Wire Wire Line
	3650 3825 3775 3825
Wire Wire Line
	3650 3925 4225 3925
Wire Wire Line
	8650 3625 8775 3625
Wire Wire Line
	8650 3725 8775 3725
Wire Wire Line
	8650 3825 8775 3825
Wire Wire Line
	8650 3925 9150 3925
Wire Wire Line
	8650 3000 8950 3000
Wire Wire Line
	8650 3100 9125 3100
Wire Wire Line
	7950 4500 7950 4575
Wire Wire Line
	2950 4500 2950 4550
Wire Wire Line
	7950 875  7950 925 
Wire Wire Line
	2950 875  2950 925 
Wire Wire Line
	8275 925  7950 925 
Connection ~ 7950 925 
Wire Wire Line
	8475 925  9900 925 
Wire Wire Line
	9900 925  9900 4575
Wire Wire Line
	9900 4575 7950 4575
Connection ~ 7950 4575
Wire Wire Line
	3175 925  2950 925 
Connection ~ 2950 925 
Wire Wire Line
	3375 925  4675 925 
Wire Wire Line
	4675 925  4675 4550
Wire Wire Line
	4675 4550 2950 4550
Connection ~ 2950 4550
Wire Wire Line
	3875 5275 3275 5275
Wire Wire Line
	3875 5375 3275 5375
Wire Wire Line
	3875 5475 3275 5475
Wire Wire Line
	3875 5575 3275 5575
Wire Wire Line
	3875 5675 3275 5675
Wire Wire Line
	3875 5775 3275 5775
Wire Wire Line
	3875 5875 3275 5875
Wire Wire Line
	3875 5975 3275 5975
Wire Wire Line
	3875 6075 3275 6075
Wire Wire Line
	3875 6175 3275 6175
Wire Wire Line
	3875 6375 3275 6375
Wire Wire Line
	3875 6475 3275 6475
Wire Wire Line
	2275 6675 3875 6675
Wire Wire Line
	3875 6875 3275 6875
Wire Wire Line
	3875 6975 3275 6975
Wire Wire Line
	3875 7075 3275 7075
Wire Wire Line
	2650 7175 3875 7175
Wire Wire Line
	4375 5275 4975 5275
Wire Wire Line
	4375 5375 4975 5375
Wire Wire Line
	4375 5475 4975 5475
Wire Wire Line
	4375 5575 4975 5575
Wire Wire Line
	4375 5675 4975 5675
Wire Wire Line
	4375 5775 4975 5775
Wire Wire Line
	4375 5875 4975 5875
Wire Wire Line
	4375 5975 4975 5975
Wire Wire Line
	4375 6075 4975 6075
Wire Wire Line
	4375 6275 5175 6275
Wire Wire Line
	5175 6475 4375 6475
Wire Wire Line
	5175 6675 4375 6675
Wire Wire Line
	5175 6775 4375 6775
Wire Wire Line
	4375 6975 4975 6975
Wire Wire Line
	4375 7075 4975 7075
Wire Wire Line
	5175 7175 4375 7175
Wire Wire Line
	2225 1350 1925 1350
Wire Wire Line
	2225 1450 1925 1450
Wire Wire Line
	2225 1550 1925 1550
Wire Wire Line
	2225 1650 1925 1650
Wire Wire Line
	2225 1850 1925 1850
Wire Wire Line
	2225 1950 1925 1950
Wire Wire Line
	2225 2050 1925 2050
Wire Wire Line
	2225 2800 1925 2800
Wire Wire Line
	2225 2900 1925 2900
Wire Wire Line
	2225 3000 1925 3000
Wire Wire Line
	2225 3100 1925 3100
Wire Wire Line
	2225 3300 1925 3300
Wire Wire Line
	2225 3400 1925 3400
Wire Wire Line
	2225 3500 1925 3500
Wire Wire Line
	5950 3150 5950 2875
Wire Wire Line
	5950 2875 6200 2875
Wire Wire Line
	6450 2875 6450 3150
Connection ~ 6200 2875
Wire Wire Line
	5950 3750 5950 3925
Wire Wire Line
	5950 3925 6200 3925
Wire Wire Line
	6450 3925 6450 3750
Connection ~ 6200 3925
Wire Wire Line
	5950 3250 6000 3175
Wire Wire Line
	6000 3175 6450 3175
Wire Wire Line
	6450 3175 7225 2800
Wire Wire Line
	7225 2900 6450 3250
Wire Wire Line
	5950 3350 6000 3275
Wire Wire Line
	6000 3275 6450 3275
Wire Wire Line
	6450 3275 7225 3000
Wire Wire Line
	7225 3100 6450 3350
Wire Wire Line
	5950 3450 6000 3375
Wire Wire Line
	6000 3375 6450 3375
Wire Wire Line
	6450 3375 7225 3200
Wire Wire Line
	7225 3300 6450 3450
Wire Wire Line
	7225 3500 6450 3550
Wire Wire Line
	7225 3700 6450 3650
Wire Wire Line
	5950 3550 6000 3475
Wire Wire Line
	6000 3475 6450 3475
Wire Wire Line
	6450 3475 7225 3400
Wire Wire Line
	5950 3650 6000 3575
Wire Wire Line
	6000 3575 6450 3575
Wire Wire Line
	6450 3575 7225 3600
Wire Wire Line
	5175 6275 5175 6375
Connection ~ 5175 6375
Connection ~ 5175 6475
Connection ~ 5175 6675
Connection ~ 5175 6775
Wire Wire Line
	4375 6375 5175 6375
Connection ~ 5175 7175
Wire Wire Line
	3275 5275 3275 5125
Wire Wire Line
	3275 5125 2575 5125
Text Label 6925 1350 0    60   ~ 0
IDE-A0
Text Label 6925 1450 0    60   ~ 0
IDE-A1
Text Label 6925 1550 0    60   ~ 0
IDE-A2
Entry Wire Line
	6825 1250 6925 1350
Entry Wire Line
	6825 1350 6925 1450
Entry Wire Line
	6825 1450 6925 1550
Text Label 6250 1250 0    60   ~ 0
IDE[A0..A2]
Text Label 3275 6975 0    60   ~ 0
IDE-A0
Text Label 3275 6875 0    60   ~ 0
IDE-A1
Text Label 3275 7175 0    60   ~ 0
~IDE:DASP
NoConn ~ 3875 6575
Text Label 3275 6475 0    60   ~ 0
~DIOR
Text Label 3275 6375 0    60   ~ 0
~DIOW
NoConn ~ 3875 6275
$Comp
L saturn-rescue:GND-power1 #PWR046
U 1 1 5A3ECBDD
P 3275 6175
F 0 "#PWR046" H 3275 5925 50  0001 C CNN
F 1 "GND" V 3275 5975 50  0000 C CNN
F 2 "" H 3275 6175 50  0001 C CNN
F 3 "" H 3275 6175 50  0001 C CNN
	1    3275 6175
	0    1    1    0   
$EndComp
Text Label 6925 1650 0    60   ~ 0
~IDE:CS0
Text Label 6925 1750 0    60   ~ 0
~IDE:CS1
Text Label 6925 1850 0    60   ~ 0
~DIOW
Text Label 6925 1950 0    60   ~ 0
~DIOR
Text Label 6925 2050 0    60   ~ 0
~IDE:RES
Text Label 2575 5125 0    60   ~ 0
~IDE:RES
Wire Wire Line
	4525 3925 4800 3925
Wire Wire Line
	9450 3925 9675 3925
$Comp
L saturn-rescue:LED-device D4
U 1 1 5AA70441
P 2500 7175
F 0 "D4" H 2500 7275 50  0000 C CNN
F 1 "LED" H 2500 7075 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 2500 7175 50  0001 C CNN
F 3 "" H 2500 7175 50  0001 C CNN
	1    2500 7175
	-1   0    0    1   
$EndComp
Wire Wire Line
	2275 7175 2350 7175
Text Label 3125 6675 2    60   ~ 0
~IDE:DMACK
Text Label 3125 7175 2    60   ~ 0
~IDE:DASP
$Comp
L saturn-rescue:VCC-power1 #PWR047
U 1 1 5AA712EE
P 1950 6475
F 0 "#PWR047" H 1950 6325 50  0001 C CNN
F 1 "VCC" H 1950 6625 50  0000 C CNN
F 2 "" H 1950 6475 50  0001 C CNN
F 3 "" H 1950 6475 50  0001 C CNN
	1    1950 6475
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:R_Small-device R6
U 1 1 5AA72016
P 2175 6675
F 0 "R6" V 2250 6625 50  0000 L CNN
F 1 "3.3k" V 2100 6575 50  0000 L CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" H 2175 6675 50  0001 C CNN
F 3 "" H 2175 6675 50  0001 C CNN
	1    2175 6675
	0    -1   -1   0   
$EndComp
$Comp
L saturn-rescue:R_Small-device R7
U 1 1 5AA72069
P 2175 7175
F 0 "R7" V 2250 7125 50  0000 L CNN
F 1 "470" V 2100 7100 50  0000 L CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" H 2175 7175 50  0001 C CNN
F 3 "" H 2175 7175 50  0001 C CNN
	1    2175 7175
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2075 6675 1950 6675
Wire Wire Line
	2075 7175 1950 7175
Wire Wire Line
	1950 7175 1950 6675
Connection ~ 1950 6675
Wire Wire Line
	7950 925  7950 1000
Wire Wire Line
	7950 4575 7950 4625
Wire Wire Line
	2950 925  2950 1000
Wire Wire Line
	2950 4550 2950 4625
Wire Wire Line
	6200 2875 6450 2875
Wire Wire Line
	6200 3925 6450 3925
Wire Wire Line
	5175 6375 5175 6475
Wire Wire Line
	5175 6475 5175 6675
Wire Wire Line
	5175 6675 5175 6775
Wire Wire Line
	5175 6775 5175 7175
Wire Wire Line
	5175 7175 5175 7250
Wire Wire Line
	1950 6675 1950 6475
Wire Wire Line
	7225 1350 6925 1350
Wire Wire Line
	7225 1450 6925 1450
Wire Wire Line
	7225 1550 6925 1550
Wire Wire Line
	7225 1650 6925 1650
Wire Wire Line
	7225 1750 6925 1750
Wire Wire Line
	7225 1850 6925 1850
Wire Wire Line
	7225 1950 6925 1950
Wire Wire Line
	7225 2050 6925 2050
Wire Bus Line
	6825 1250 6250 1250
Wire Wire Line
	8650 1450 8950 1450
Wire Wire Line
	8650 1550 8950 1550
Wire Wire Line
	8650 1650 8950 1650
Wire Wire Line
	8650 1750 8950 1750
Wire Wire Line
	8650 1850 8950 1850
Wire Wire Line
	8650 1950 8950 1950
Wire Wire Line
	8650 2050 8950 2050
Wire Wire Line
	8650 2525 8950 2525
Wire Wire Line
	8650 2625 8950 2625
Wire Wire Line
	8650 2725 8950 2725
Wire Wire Line
	2225 1750 1925 1750
Wire Wire Line
	2225 3200 1925 3200
Wire Bus Line
	1825 3600 1150 3600
Wire Wire Line
	3650 1750 3950 1750
$Comp
L saturn-rescue:D_Schottky-Device D3
U 1 1 5C26C801
P 9300 3925
F 0 "D3" H 9300 3825 50  0000 C CNN
F 1 "DIRQ2" H 9475 3875 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_T-1_P5.08mm_Horizontal" H 9300 3925 50  0001 C CNN
F 3 "~" H 9300 3925 50  0001 C CNN
	1    9300 3925
	1    0    0    -1  
$EndComp
$Comp
L saturn-rescue:D_Schottky-Device D2
U 1 1 5C26C9C0
P 4375 3925
F 0 "D2" H 4375 3825 50  0000 C CNN
F 1 "DIRQ1" H 4550 3875 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_T-1_P5.08mm_Horizontal" H 4375 3925 50  0001 C CNN
F 3 "~" H 4375 3925 50  0001 C CNN
	1    4375 3925
	1    0    0    -1  
$EndComp
Wire Bus Line
	1150 3600 1150 5000
Wire Bus Line
	1150 5000 5775 5000
Wire Bus Line
	5775 5000 5775 5275
Wire Bus Line
	5075 5275 5775 5275
Wire Bus Line
	1075 1450 1075 5275
Wire Bus Line
	1075 5275 3175 5275
Wire Bus Line
	1075 1450 1825 1450
Text Label 3650 3925 0    50   ~ 0
~IRQVIA1
NoConn ~ 3875 6775
Text Notes 1525 1100 0    60   ~ 12
VIA1 (00:FEC0 - 00:FEDF)
Text Notes 6550 1050 0    60   ~ 12
VIA2 (00:FEA0 - 00:FEBF)
Wire Bus Line
	6825 1250 6825 1450
Wire Bus Line
	4050 2525 4050 4900
Wire Bus Line
	9050 2525 9050 4900
Wire Bus Line
	5075 5275 5075 5975
Wire Bus Line
	3175 5275 3175 5975
Wire Bus Line
	1825 1450 1825 2150
Wire Bus Line
	1825 2900 1825 3600
Wire Bus Line
	4050 750  4050 1950
Wire Bus Line
	9050 750  9050 1950
$EndSCHEMATC
