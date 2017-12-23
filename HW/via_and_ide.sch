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
Sheet 4 6
Title ""
Date "2017-12-23"
Rev "0.1"
Comp "Linux Grotto"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L WD65C22PLCC44 U7
U 1 1 5A3B3298
P 2875 2300
F 0 "U7" H 2675 3375 60  0000 C CNN
F 1 "WD65C22PLCC44" V 2950 1600 60  0000 C CNN
F 2 "" H 2375 2325 60  0000 C CNN
F 3 "" H 2375 2325 60  0000 C CNN
	1    2875 2300
	1    0    0    -1  
$EndComp
$Comp
L WD65C22PLCC44 U8
U 1 1 5A3B4A4E
P 7875 2300
F 0 "U8" H 7675 3375 60  0000 C CNN
F 1 "WD65C22PLCC44" V 7950 1600 60  0000 C CNN
F 2 "" H 7375 2325 60  0000 C CNN
F 3 "" H 7375 2325 60  0000 C CNN
	1    7875 2300
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X20 J4
U 1 1 5A3C11DF
P 4125 6225
F 0 "J4" H 4125 7275 50  0000 C CNN
F 1 "IDE" V 4125 6225 50  0000 C CNN
F 2 "" H 4125 5275 50  0001 C CNN
F 3 "" H 4125 5275 50  0001 C CNN
	1    4125 6225
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X07 J3
U 1 1 5A3C12B2
P 6200 3450
F 0 "J3" H 6200 3850 50  0000 C CNN
F 1 "VIA2PB" V 6200 3450 50  0000 C CNN
F 2 "" H 6200 2250 50  0001 C CNN
F 3 "" H 6200 2250 50  0001 C CNN
	1    6200 3450
	1    0    0    -1  
$EndComp
Text HLabel 9050 750  2    60   Input ~ 0
D[0..7]
Entry Wire Line
	8950 1350 9050 1250
Entry Wire Line
	8950 1475 9050 1375
Entry Wire Line
	8950 1600 9050 1500
Entry Wire Line
	8950 1725 9050 1625
Entry Wire Line
	8950 1850 9050 1750
Entry Wire Line
	8950 1975 9050 1875
Entry Wire Line
	8950 2100 9050 2000
Entry Wire Line
	8950 2225 9050 2125
Entry Wire Line
	3950 1350 4050 1250
Entry Wire Line
	3950 1475 4050 1375
Entry Wire Line
	3950 1600 4050 1500
Entry Wire Line
	3950 1725 4050 1625
Entry Wire Line
	3950 1850 4050 1750
Entry Wire Line
	3950 1975 4050 1875
Entry Wire Line
	3950 2100 4050 2000
Entry Wire Line
	3950 2225 4050 2125
Text Label 3950 1350 2    60   ~ 0
D0
Text Label 3950 1475 2    60   ~ 0
D1
Text Label 3950 1600 2    60   ~ 0
D2
Text Label 3950 1725 2    60   ~ 0
D3
Text Label 3950 1850 2    60   ~ 0
D4
Text Label 3950 1975 2    60   ~ 0
D5
Text Label 3950 2100 2    60   ~ 0
D6
Text Label 3950 2225 2    60   ~ 0
D7
Text Label 8950 1350 2    60   ~ 0
D0
Text Label 8950 1475 2    60   ~ 0
D1
Text Label 8950 1600 2    60   ~ 0
D2
Text Label 8950 1725 2    60   ~ 0
D3
Text Label 8950 1850 2    60   ~ 0
D4
Text Label 8950 1975 2    60   ~ 0
D5
Text Label 8950 2100 2    60   ~ 0
D6
Text Label 8950 2225 2    60   ~ 0
D7
Entry Wire Line
	3950 2425 4050 2525
Entry Wire Line
	3950 2550 4050 2650
Entry Wire Line
	3950 2675 4050 2775
Entry Wire Line
	3950 2800 4050 2900
Entry Wire Line
	8950 2800 9050 2900
Entry Wire Line
	8950 2675 9050 2775
Entry Wire Line
	8950 2550 9050 2650
Entry Wire Line
	8950 2425 9050 2525
Text HLabel 9050 4900 2    60   Input ~ 0
A[0..18]
Text Label 8950 2425 2    60   ~ 0
A0
Text Label 8950 2550 2    60   ~ 0
A1
Text Label 8950 2675 2    60   ~ 0
A2
Text Label 8950 2800 2    60   ~ 0
A3
Text Label 7675 4900 2    60   ~ 0
A[0..18]
Text Label 3950 2425 2    60   ~ 0
A0
Text Label 3950 2550 2    60   ~ 0
A1
Text Label 3950 2675 2    60   ~ 0
A2
Text Label 3950 2800 2    60   ~ 0
A3
Text HLabel 8775 3675 2    60   Input ~ 0
CLK
Text HLabel 8775 3800 2    60   Input ~ 0
~RES
Text HLabel 8775 3925 2    60   Output ~ 0
~IRQ
Text HLabel 8775 3550 2    60   Input ~ 0
R/~W
Text HLabel 3775 3675 2    60   Input ~ 0
CLK
Text HLabel 3775 3800 2    60   Input ~ 0
~RES
Text HLabel 3775 3925 2    60   Output ~ 0
~IRQ
Text HLabel 3775 3550 2    60   Input ~ 0
R/~W
Text Notes 7975 2350 1    60   ~ 12
VIA2
Text Notes 2975 2325 1    60   ~ 12
VIA1
Text HLabel 4125 3125 2    60   Input ~ 0
~VIA1SEL
Text HLabel 9125 3125 2    60   Input ~ 0
~VIA2SEL
$Comp
L VCC #PWR?
U 1 1 5A3DECA8
P 3950 3000
F 0 "#PWR?" H 3950 2850 50  0001 C CNN
F 1 "VCC" H 3850 3075 50  0000 C CNN
F 2 "" H 3950 3000 50  0001 C CNN
F 3 "" H 3950 3000 50  0001 C CNN
	1    3950 3000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5A3DEEFA
P 8950 3000
F 0 "#PWR?" H 8950 2850 50  0001 C CNN
F 1 "VCC" H 8850 3075 50  0000 C CNN
F 2 "" H 8950 3000 50  0001 C CNN
F 3 "" H 8950 3000 50  0001 C CNN
	1    8950 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A3DF2AF
P 7950 4625
F 0 "#PWR?" H 7950 4375 50  0001 C CNN
F 1 "GND" H 7950 4475 50  0000 C CNN
F 2 "" H 7950 4625 50  0001 C CNN
F 3 "" H 7950 4625 50  0001 C CNN
	1    7950 4625
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A3DF646
P 2950 4625
F 0 "#PWR?" H 2950 4375 50  0001 C CNN
F 1 "GND" H 2950 4475 50  0000 C CNN
F 2 "" H 2950 4625 50  0001 C CNN
F 3 "" H 2950 4625 50  0001 C CNN
	1    2950 4625
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5A3DFA06
P 7950 875
F 0 "#PWR?" H 7950 725 50  0001 C CNN
F 1 "VCC" H 7850 950 50  0000 C CNN
F 2 "" H 7950 875 50  0001 C CNN
F 3 "" H 7950 875 50  0001 C CNN
	1    7950 875 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5A3DFA22
P 2950 875
F 0 "#PWR?" H 2950 725 50  0001 C CNN
F 1 "VCC" H 2950 1025 50  0000 C CNN
F 2 "" H 2950 875 50  0001 C CNN
F 3 "" H 2950 875 50  0001 C CNN
	1    2950 875 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 5A3DFACE
P 8375 925
F 0 "C?" V 8500 875 50  0000 L CNN
F 1 "0.1uF" V 8250 850 50  0000 L CNN
F 2 "" H 8375 925 50  0001 C CNN
F 3 "" H 8375 925 50  0001 C CNN
	1    8375 925 
	0    1    1    0   
$EndComp
$Comp
L C_Small C?
U 1 1 5A3DFDF6
P 3275 925
F 0 "C?" V 3375 875 50  0000 L CNN
F 1 "0.1uF" V 3150 825 50  0000 L CNN
F 2 "" H 3275 925 50  0001 C CNN
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
	1825 1575 1925 1475
Entry Wire Line
	1825 1700 1925 1600
Entry Wire Line
	1825 1825 1925 1725
Entry Wire Line
	1825 2075 1925 1975
Entry Wire Line
	1825 1950 1925 1850
Entry Wire Line
	1825 2200 1925 2100
Entry Wire Line
	1825 2325 1925 2225
Entry Wire Line
	1825 2900 1925 2800
Entry Wire Line
	1825 3025 1925 2925
Entry Wire Line
	1825 3150 1925 3050
Entry Wire Line
	1825 3275 1925 3175
Entry Wire Line
	1825 3525 1925 3425
Entry Wire Line
	1825 3400 1925 3300
Entry Wire Line
	1825 3650 1925 3550
Entry Wire Line
	1825 3775 1925 3675
Text Label 1200 1450 0    60   ~ 0
IDE[D0..D7]
Text Label 1200 3775 0    60   ~ 0
IDE[D8..D15]
Text Label 5675 5275 2    60   ~ 0
IDE[D8..D15]
Text Label 2575 5275 0    60   ~ 0
IDE[D0..D7]
Text Label 1925 1350 0    60   ~ 0
IDE-D0
Text Label 1925 1475 0    60   ~ 0
IDE-D1
Text Label 1925 1600 0    60   ~ 0
IDE-D2
Text Label 1925 1725 0    60   ~ 0
IDE-D3
Text Label 1925 1850 0    60   ~ 0
IDE-D4
Text Label 1925 1975 0    60   ~ 0
IDE-D5
Text Label 1925 2100 0    60   ~ 0
IDE-D6
Text Label 1925 2225 0    60   ~ 0
IDE-D7
Text Label 1925 2800 0    60   ~ 0
IDE-D8
Text Label 1925 2925 0    60   ~ 0
IDE-D9
Text Label 1925 3050 0    60   ~ 0
IDE-D10
Text Label 1925 3175 0    60   ~ 0
IDE-D11
Text Label 1925 3300 0    60   ~ 0
IDE-D12
Text Label 1925 3425 0    60   ~ 0
IDE-D13
Text Label 1925 3550 0    60   ~ 0
IDE-D14
Text Label 1925 3675 0    60   ~ 0
IDE-D15
$Comp
L VCC #PWR?
U 1 1 5A3E3F24
P 6200 2875
F 0 "#PWR?" H 6200 2725 50  0001 C CNN
F 1 "VCC" H 6200 3025 50  0000 C CNN
F 2 "" H 6200 2875 50  0001 C CNN
F 3 "" H 6200 2875 50  0001 C CNN
	1    6200 2875
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A3E3F44
P 6200 3925
F 0 "#PWR?" H 6200 3675 50  0001 C CNN
F 1 "GND" H 6200 3775 50  0000 C CNN
F 2 "" H 6200 3925 50  0001 C CNN
F 3 "" H 6200 3925 50  0001 C CNN
	1    6200 3925
	1    0    0    -1  
$EndComp
NoConn ~ 2225 2350
NoConn ~ 2225 2475
NoConn ~ 2225 3800
NoConn ~ 2225 3925
NoConn ~ 7225 2350
NoConn ~ 7225 2475
Text Label 3275 7075 0    60   ~ 0
~IDE:CS0
Text Label 4975 7075 2    60   ~ 0
~IDE:CS1
$Comp
L GND #PWR?
U 1 1 5A3E84F7
P 5175 7250
F 0 "#PWR?" H 5175 7000 50  0001 C CNN
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
L GND #PWR?
U 1 1 5A3E9E8F
P 4975 5275
F 0 "#PWR?" H 4975 5025 50  0001 C CNN
F 1 "GND" H 4975 5125 50  0000 C CNN
F 2 "" H 4975 5275 50  0001 C CNN
F 3 "" H 4975 5275 50  0001 C CNN
	1    4975 5275
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 1350 3950 1350
Wire Wire Line
	3650 1600 3950 1600
Wire Wire Line
	3650 1725 3950 1725
Wire Wire Line
	3650 1975 3950 1975
Wire Wire Line
	3650 2100 3950 2100
Wire Wire Line
	3650 1850 3950 1850
Wire Wire Line
	3650 2225 3950 2225
Wire Wire Line
	3650 1475 3950 1475
Wire Wire Line
	8650 1350 8950 1350
Wire Wire Line
	8650 1600 8950 1600
Wire Wire Line
	8650 1725 8950 1725
Wire Wire Line
	8650 1975 8950 1975
Wire Wire Line
	8650 2100 8950 2100
Wire Wire Line
	8650 1850 8950 1850
Wire Wire Line
	8650 2225 8950 2225
Wire Wire Line
	8650 1475 8950 1475
Wire Bus Line
	4050 750  4050 2125
Wire Bus Line
	4050 750  9050 750 
Wire Bus Line
	9050 750  9050 2125
Wire Wire Line
	8650 2425 8950 2425
Wire Wire Line
	8650 2550 8950 2550
Wire Wire Line
	8650 2675 8950 2675
Wire Wire Line
	8650 2800 8950 2800
Wire Wire Line
	3650 2425 3950 2425
Wire Wire Line
	3650 2550 3950 2550
Wire Wire Line
	3650 2675 3950 2675
Wire Wire Line
	3650 2800 3950 2800
Wire Bus Line
	9050 2525 9050 4900
Wire Bus Line
	9050 4900 4050 4900
Wire Bus Line
	4050 4900 4050 2525
Wire Wire Line
	3650 3000 3950 3000
Wire Wire Line
	3650 3125 4125 3125
Wire Wire Line
	3650 3550 3775 3550
Wire Wire Line
	3650 3675 3775 3675
Wire Wire Line
	3650 3800 3775 3800
Wire Wire Line
	3650 3925 3775 3925
Wire Wire Line
	8650 3550 8775 3550
Wire Wire Line
	8650 3675 8775 3675
Wire Wire Line
	8650 3800 8775 3800
Wire Wire Line
	8650 3925 8775 3925
Wire Wire Line
	8650 3000 8950 3000
Wire Wire Line
	8650 3125 9125 3125
Wire Wire Line
	7950 4500 7950 4625
Wire Wire Line
	2950 4500 2950 4625
Wire Wire Line
	7950 875  7950 1000
Wire Wire Line
	2950 875  2950 1000
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
	3875 6675 3275 6675
Wire Wire Line
	3875 6775 3275 6775
Wire Wire Line
	3875 6875 3275 6875
Wire Wire Line
	3875 6975 3275 6975
Wire Wire Line
	3875 7075 3275 7075
Wire Wire Line
	3875 7175 3275 7175
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
	2225 1475 1925 1475
Wire Wire Line
	2225 1600 1925 1600
Wire Wire Line
	2225 1725 1925 1725
Wire Wire Line
	2225 1975 1925 1975
Wire Wire Line
	2225 1850 1925 1850
Wire Wire Line
	2225 2100 1925 2100
Wire Wire Line
	2225 2225 1925 2225
Wire Wire Line
	2225 2800 1925 2800
Wire Wire Line
	2225 2925 1925 2925
Wire Wire Line
	2225 3050 1925 3050
Wire Wire Line
	2225 3175 1925 3175
Wire Wire Line
	2225 3425 1925 3425
Wire Wire Line
	2225 3300 1925 3300
Wire Wire Line
	2225 3550 1925 3550
Wire Wire Line
	2225 3675 1925 3675
Wire Bus Line
	1825 1450 1825 2325
Wire Bus Line
	1825 1450 1200 1450
Wire Bus Line
	1825 2900 1825 3775
Wire Bus Line
	1825 3775 1200 3775
Wire Bus Line
	5075 5275 5075 5975
Wire Bus Line
	5075 5275 5675 5275
Wire Bus Line
	3175 5275 3175 5975
Wire Bus Line
	3175 5275 2575 5275
Wire Wire Line
	5950 3150 5950 2875
Wire Wire Line
	5950 2875 6450 2875
Wire Wire Line
	6450 2875 6450 3150
Connection ~ 6200 2875
Wire Wire Line
	5950 3750 5950 3925
Wire Wire Line
	5950 3925 6450 3925
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
	7225 2925 6450 3250
Wire Wire Line
	5950 3350 6000 3275
Wire Wire Line
	6000 3275 6450 3275
Wire Wire Line
	6450 3275 7225 3050
Wire Wire Line
	7225 3175 6450 3350
Wire Wire Line
	5950 3450 6000 3375
Wire Wire Line
	6000 3375 6450 3375
Wire Wire Line
	6450 3375 7225 3300
Wire Wire Line
	7225 3425 6450 3450
Wire Wire Line
	7225 3675 6450 3550
Wire Wire Line
	7225 3925 6450 3650
Wire Wire Line
	5950 3550 6000 3475
Wire Wire Line
	6000 3475 6450 3475
Wire Wire Line
	6450 3475 7225 3550
Wire Wire Line
	5950 3650 6000 3575
Wire Wire Line
	6000 3575 6450 3575
Wire Wire Line
	6450 3575 7225 3800
Wire Wire Line
	5175 6275 5175 7250
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
Wire Wire Line
	7225 1350 6925 1350
Wire Wire Line
	7225 1475 6925 1475
Wire Wire Line
	7225 1600 6925 1600
Wire Wire Line
	7225 1725 6925 1725
Wire Wire Line
	7225 1850 6925 1850
Wire Wire Line
	7225 1975 6925 1975
Wire Wire Line
	7225 2100 6925 2100
Wire Wire Line
	7225 2225 6925 2225
Text Label 6925 1350 0    60   ~ 0
IDE-A0
Text Label 6925 1475 0    60   ~ 0
IDE-A1
Text Label 6925 1600 0    60   ~ 0
IDE-A2
Entry Wire Line
	6825 1250 6925 1350
Entry Wire Line
	6825 1375 6925 1475
Entry Wire Line
	6825 1500 6925 1600
Wire Bus Line
	6825 1500 6825 1250
Wire Bus Line
	6825 1250 6225 1250
Text Label 6225 1250 0    60   ~ 0
IDE[A0..A2]
Text Label 3275 6975 0    60   ~ 0
IDE-A0
Text Label 3275 6875 0    60   ~ 0
IDE-A1
Text Label 3275 7175 0    60   ~ 0
~IDE:DASP
Text Label 3275 6775 0    60   ~ 0
~IRQ
NoConn ~ 3875 6575
Text Label 3275 6475 0    60   ~ 0
~DIOR
Text Label 3275 6375 0    60   ~ 0
~DIOW
NoConn ~ 3875 6275
$Comp
L GND #PWR?
U 1 1 5A3ECBDD
P 3275 6175
F 0 "#PWR?" H 3275 5925 50  0001 C CNN
F 1 "GND" H 3275 6025 50  0000 C CNN
F 2 "" H 3275 6175 50  0001 C CNN
F 3 "" H 3275 6175 50  0001 C CNN
	1    3275 6175
	0    1    1    0   
$EndComp
Text Label 6925 1725 0    60   ~ 0
~IDE:CS0
Text Label 6925 1850 0    60   ~ 0
~IDE:CS1
Text Label 6925 1975 0    60   ~ 0
~DIOW
Text Label 6925 2100 0    60   ~ 0
~DIOR
Text Label 6925 2225 0    60   ~ 0
~IDE:RES
Text Label 2575 5125 0    60   ~ 0
~IDE:RES
$EndSCHEMATC