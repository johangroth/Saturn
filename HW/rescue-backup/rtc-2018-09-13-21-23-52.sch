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
Sheet 6 6
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
L DS1511Y+ U12
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
	3825 1800 3825 2700
Wire Bus Line
	3825 1800 3075 1800
Text Label 3075 1800 0    60   ~ 0
A[0..18]
Wire Bus Line
	5675 1800 5675 3000
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
	4650 3975 4775 3975
Wire Wire Line
	4725 3975 4725 4175
Connection ~ 4725 3975
$Comp
L GND #PWR068
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
	4725 2100 4725 1875
$Comp
L VCC #PWR069
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
L C_Small C20
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
L GND #PWR070
U 1 1 5A3DA9B9
P 5575 3600
F 0 "#PWR070" H 5575 3350 50  0001 C CNN
F 1 "GND" H 5575 3450 50  0000 C CNN
F 2 "" H 5575 3600 50  0001 C CNN
F 3 "" H 5575 3600 50  0001 C CNN
	1    5575 3600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
