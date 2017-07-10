EESchema Schematic File Version 2
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
LIBS:pluto
LIBS:65xx
LIBS:saturn-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Saturn SBC"
Date "2017-06-28"
Rev "1.0"
Comp "Linux Grotto"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L WD65C816S_ U?
U 1 1 5952FFBF
P 2575 2375
F 0 "U?" H 2575 1225 60  0000 C CNN
F 1 "WD65C816S_" V 2575 2275 60  0000 C CNN
F 2 "" H 2075 1475 60  0000 C CNN
F 3 "" H 2075 1475 60  0000 C CNN
	1    2575 2375
	1    0    0    -1  
$EndComp
Wire Wire Line
	3225 1475 3600 1475
Wire Wire Line
	3225 1575 3600 1575
Wire Wire Line
	3225 1675 3600 1675
Wire Wire Line
	3225 1775 3600 1775
Wire Wire Line
	3225 1875 3600 1875
Wire Wire Line
	3225 1975 3600 1975
Wire Wire Line
	3225 2075 3600 2075
Wire Wire Line
	3225 2175 3600 2175
Wire Wire Line
	3225 2275 3600 2275
Wire Wire Line
	3225 2375 3600 2375
Wire Wire Line
	3225 2475 3600 2475
Wire Wire Line
	3225 2575 3600 2575
Wire Wire Line
	3225 2675 3600 2675
Wire Wire Line
	3225 2775 3600 2775
Wire Wire Line
	3225 2875 3600 2875
Wire Wire Line
	3225 2975 3600 2975
Wire Wire Line
	3225 3075 3600 3075
Wire Wire Line
	3225 3175 3600 3175
Wire Wire Line
	3225 3275 3600 3275
Wire Wire Line
	3225 3375 3600 3375
Text Label 3600 1475 2    60   ~ 0
D0
Text Label 3600 1575 2    60   ~ 0
D1
Text Label 3600 1675 2    60   ~ 0
D2
Text Label 3600 1775 2    60   ~ 0
D3
Text Label 3600 1875 2    60   ~ 0
D4
Text Label 3600 1975 2    60   ~ 0
D5
Text Label 3600 2075 2    60   ~ 0
D6
Text Label 3600 2175 2    60   ~ 0
D7
Wire Wire Line
	1925 1475 1600 1475
Wire Wire Line
	1925 1575 1600 1575
Wire Wire Line
	1925 1675 1600 1675
Wire Wire Line
	1925 1775 1600 1775
Wire Wire Line
	1925 1875 1600 1875
Wire Wire Line
	1925 1975 1600 1975
Wire Wire Line
	1925 2075 1600 2075
Wire Wire Line
	1925 2175 1600 2175
Wire Wire Line
	1925 2275 1600 2275
Wire Wire Line
	1925 2375 1600 2375
Wire Wire Line
	1925 2475 1600 2475
Wire Wire Line
	1925 2575 1600 2575
Wire Wire Line
	1925 2675 1600 2675
Wire Wire Line
	1925 2775 1600 2775
Wire Wire Line
	1925 2875 1600 2875
Wire Wire Line
	1925 2975 1600 2975
Wire Wire Line
	1925 3075 1600 3075
Wire Wire Line
	1925 3175 1600 3175
Wire Wire Line
	1925 3275 1600 3275
Wire Wire Line
	1925 3375 1600 3375
Text Label 1600 1475 0    60   ~ 0
A0
Text Label 1600 1575 0    60   ~ 0
A1
Text Label 1600 1675 0    60   ~ 0
A2
Text Label 1600 1775 0    60   ~ 0
A3
Text Label 1600 1875 0    60   ~ 0
A4
Text Label 1600 1975 0    60   ~ 0
A5
Text Label 1600 2075 0    60   ~ 0
A6
Text Label 1600 2175 0    60   ~ 0
A7
Text Label 1600 2275 0    60   ~ 0
A8
Text Label 1600 2375 0    60   ~ 0
A9
Text Label 1600 2475 0    60   ~ 0
A10
Text Label 1600 2575 0    60   ~ 0
A11
Text Label 1600 2675 0    60   ~ 0
A12
Text Label 1600 2775 0    60   ~ 0
A13
Text Label 1600 2875 0    60   ~ 0
A14
Text Label 1600 2975 0    60   ~ 0
A15
Entry Bus Bus
	3600 1475 3700 1375
Entry Bus Bus
	3600 1575 3700 1475
Entry Bus Bus
	3600 1675 3700 1575
Entry Bus Bus
	3600 1775 3700 1675
Entry Bus Bus
	3600 1875 3700 1775
Entry Bus Bus
	3600 1975 3700 1875
Entry Bus Bus
	3600 2075 3700 1975
Entry Bus Bus
	3600 2175 3700 2075
Wire Bus Line
	3700 2075 3700 1175
Wire Bus Line
	3700 1175 4125 1175
Text Label 4125 1175 2    60   ~ 0
D[0..7]
Text HLabel 4125 1175 2    60   BiDi ~ 0
D[0..7]
Entry Bus Bus
	1500 1375 1600 1475
Entry Bus Bus
	1500 1475 1600 1575
Entry Bus Bus
	1500 1575 1600 1675
Entry Bus Bus
	1500 1675 1600 1775
Entry Bus Bus
	1500 1775 1600 1875
Entry Bus Bus
	1500 1875 1600 1975
Entry Bus Bus
	1500 1975 1600 2075
Entry Bus Bus
	1500 2075 1600 2175
Entry Bus Bus
	1500 2175 1600 2275
Entry Bus Bus
	1500 2275 1600 2375
Entry Bus Bus
	1500 2375 1600 2475
Entry Bus Bus
	1500 2475 1600 2575
Entry Bus Bus
	1500 2575 1600 2675
Entry Bus Bus
	1500 2675 1600 2775
Entry Bus Bus
	1500 2775 1600 2875
Entry Bus Bus
	1500 2875 1600 2975
Wire Bus Line
	1500 2875 1500 1175
Wire Bus Line
	1500 1175 1100 1175
Text Label 1100 1175 0    60   ~ 0
A[0..15]
Text HLabel 1100 1175 0    60   Output ~ 0
A[0..15]
$EndSCHEMATC
