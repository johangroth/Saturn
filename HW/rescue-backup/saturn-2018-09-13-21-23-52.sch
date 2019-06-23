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
Sheet 1 6
Title "Saturn SBC"
Date "2018-01-17"
Rev "0.1"
Comp "Linux Grotto"
Comment1 "Control logic is implemented using an ispMACH4A5"
Comment2 "IDE interface realised with two VIA 65C22"
Comment3 "Serial Communication with a 28L92 and MAX238"
Comment4 "Real Time clock, a DS1511Y"
$EndDescr
$Sheet
S 1225 1000 1775 2075
U 5952FC78
F0 "MPU, ROM and RAM" 60
F1 "mpu_rom_ram.sch" 60
F2 "D[0..7]" B R 3000 1075 60 
F3 "CLK" I R 3000 1325 60 
F4 "~NMI" I R 3000 1575 60 
F5 "BE" I R 3000 1675 60 
F6 "~IRQ" I R 3000 1450 60 
F7 "~MRD" I R 3000 2825 60 
F8 "~MWR" I R 3000 2950 60 
F9 "~RAM0" I L 1225 2750 60 
F10 "~RAM1" I L 1225 2650 60 
F11 "~ROM" I L 1225 2550 60 
F12 "R/~W" O R 3000 1975 60 
F13 "VDA" O L 1225 2850 60 
F14 "VPA" O L 1225 2950 60 
F15 "~RES" I R 3000 2075 60 
F16 "~ABT" I R 3000 1875 60 
F17 "A[0..18]" O R 3000 1200 60 
F18 "RDY" I R 3000 1775 60 
$EndSheet
$Sheet
S 4000 1000 1775 1975
U 5952FC81
F0 "DUART and line drivers" 60
F1 "duart_line_drivers.sch" 60
F2 "D[0..7]" B L 4000 1075 60 
F3 "~MWR" I R 5775 1350 60 
F4 "~MRD" I R 5775 1500 60 
F5 "RES" I R 5775 2550 60 
F6 "~IRQ" O L 4000 1450 60 
F7 "A[0..18]" I L 4000 1200 60 
F8 "~DUARTSEL" I R 5775 1175 60 
$EndSheet
$Sheet
S 1350 3975 1675 1850
U 5A3B21BC
F0 "VIA and IDE" 60
F1 "via_and_ide.sch" 60
F2 "D[0..7]" I R 3025 4300 60 
F3 "CLK" I R 3025 4075 60 
F4 "~RES" I R 3025 4750 60 
F5 "~IRQ" I R 3025 4200 60 
F6 "R/~W" I R 3025 4850 60 
F7 "A[0..18]" I R 3025 4400 60 
F8 "~VIA1SEL" I R 3025 5575 60 
F9 "~VIA2SEL" I R 3025 5725 60 
$EndSheet
$Sheet
S 4050 3975 2250 2800
U 5A3B356D
F0 "Glue and control logic" 60
F1 "controll_logic.sch" 60
F2 "CLK" O L 4050 4075 60 
F3 "~IRQ" O L 4050 4200 60 
F4 "~NMI" B L 4050 4325 60 
F5 "BE" O L 4050 4450 60 
F6 "RDY" O L 4050 4550 60 
F7 "~PWR" O R 6300 5700 60 
F8 "~RES" O L 4050 4750 60 
F9 "RES" O R 6300 4175 60 
F10 "~KS" O R 6300 5550 60 
F11 "~DUARTSEL" O R 6300 4275 60 
F12 "~VIA1SEL" O L 4050 5575 60 
F13 "~VIA2SEL" O L 4050 5725 60 
F14 "~RTCSEL" O R 6300 6225 60 
F15 "~ABT" O L 4050 4650 60 
F16 "D[0..7]" B L 4050 5100 60 
F17 "A[0..18]" I L 4050 4975 60 
F18 "VDA" I L 4050 6275 60 
F19 "VPA" I L 4050 6175 60 
F20 "~RAM0" O L 4050 6400 60 
F21 "~RAM1" O L 4050 6550 60 
F22 "~ROM" O L 4050 6700 60 
F23 "R/~W" I L 4050 4850 60 
F24 "~MRD" O R 6300 5875 60 
F25 "~MWR" O R 6300 6050 60 
$EndSheet
$Sheet
S 6875 3975 1725 2450
U 5A3D7428
F0 "Real Time Clock" 60
F1 "rtc.sch" 60
F2 "D[0..7]" B L 6875 4050 60 
F3 "~PWR" O L 6875 5700 60 
F4 "~KS" O L 6875 5550 60 
F5 "~IRQ" O L 6875 5175 60 
F6 "~MWR" I L 6875 4375 60 
F7 "~MRD" I L 6875 4550 60 
F8 "~RTCSEL" I L 6875 6225 60 
F9 "A[0..18]" I L 6875 4150 60 
F10 "~RES" O L 6875 5825 60 
$EndSheet
Text Label 3050 1075 0    60   ~ 0
D[0..7]
Text Label 3050 1200 0    60   ~ 0
A[0..18]
Wire Wire Line
	3000 1450 4000 1450
Wire Wire Line
	3900 1450 3900 4200
Wire Wire Line
	3025 4200 4050 4200
Wire Wire Line
	3000 1325 3850 1325
Wire Wire Line
	3850 1325 3850 4075
Wire Wire Line
	3025 4075 4050 4075
Wire Wire Line
	3000 1575 3800 1575
Wire Wire Line
	3800 1575 3800 4325
Wire Wire Line
	3800 4325 4050 4325
Wire Wire Line
	3000 1675 3750 1675
Wire Wire Line
	3750 1675 3750 4450
Wire Wire Line
	3750 4450 4050 4450
Connection ~ 3850 4075
Connection ~ 3900 4200
Connection ~ 3900 1450
Wire Wire Line
	6300 5700 6875 5700
Wire Wire Line
	6300 5550 6875 5550
Wire Bus Line
	3000 1075 4000 1075
Wire Bus Line
	3000 1200 4000 1200
Wire Bus Line
	3025 4300 3450 4300
Wire Bus Line
	3550 4400 3025 4400
Wire Bus Line
	3550 900  3550 4975
Wire Wire Line
	3025 4750 4050 4750
Wire Wire Line
	6350 4175 6300 4175
Wire Wire Line
	6350 2550 6350 4175
Wire Wire Line
	3900 3200 6575 3200
Wire Wire Line
	6575 3200 6575 5175
Connection ~ 3900 3200
Wire Wire Line
	6575 5175 6875 5175
Wire Wire Line
	4050 5575 3025 5575
Wire Wire Line
	4050 5725 3025 5725
Wire Wire Line
	4050 4550 3700 4550
Wire Wire Line
	3700 4550 3700 1775
Wire Wire Line
	3700 1775 3000 1775
Wire Wire Line
	4050 4650 3650 4650
Wire Wire Line
	3650 4650 3650 1875
Wire Wire Line
	3650 1875 3000 1875
Wire Wire Line
	3025 4850 4050 4850
Wire Wire Line
	3600 4850 3600 1975
Wire Wire Line
	3600 1975 3000 1975
Connection ~ 3600 4850
Wire Wire Line
	3400 2075 3400 7000
Wire Wire Line
	3400 2075 3000 2075
Connection ~ 3400 4750
Wire Bus Line
	3550 4975 4050 4975
Wire Bus Line
	3450 5100 4050 5100
Wire Bus Line
	3550 900  6650 900 
Wire Bus Line
	6650 900  6650 4150
Wire Bus Line
	3450 850  6750 850 
Wire Bus Line
	6650 4150 6875 4150
Wire Bus Line
	6750 4050 6875 4050
Wire Wire Line
	3400 7000 6775 7000
Wire Wire Line
	6775 7000 6775 5825
Wire Wire Line
	6775 5825 6875 5825
Wire Wire Line
	6875 4550 6400 4550
Wire Wire Line
	6400 1500 6400 5875
Wire Wire Line
	6450 4375 6875 4375
Wire Wire Line
	6450 1350 6450 6050
Wire Wire Line
	6400 5875 6300 5875
Connection ~ 6400 4550
Wire Wire Line
	6450 6050 6300 6050
Connection ~ 6450 4375
Wire Wire Line
	6300 4275 6500 4275
Wire Wire Line
	6500 4275 6500 1175
Wire Wire Line
	6500 1175 5775 1175
Wire Wire Line
	4050 6175 1150 6175
Wire Wire Line
	1150 6175 1150 2950
Wire Wire Line
	1150 2950 1225 2950
Wire Wire Line
	1225 2850 1100 2850
Wire Wire Line
	1100 2850 1100 6275
Wire Wire Line
	1100 6275 4050 6275
Wire Wire Line
	4050 6400 1050 6400
Wire Wire Line
	1050 6400 1050 2750
Wire Wire Line
	1050 2750 1225 2750
Wire Wire Line
	1225 2650 1000 2650
Wire Wire Line
	1000 2650 1000 6550
Wire Wire Line
	1000 6550 4050 6550
Wire Wire Line
	4050 6700 950  6700
Wire Wire Line
	950  6700 950  2550
Wire Wire Line
	950  2550 1225 2550
Wire Wire Line
	6400 3250 3150 3250
Wire Wire Line
	3150 3250 3150 2825
Wire Wire Line
	3150 2825 3000 2825
Connection ~ 6400 3250
Wire Wire Line
	3000 2950 3100 2950
Wire Wire Line
	3100 2950 3100 3300
Wire Wire Line
	3100 3300 6450 3300
Connection ~ 6450 3300
Wire Wire Line
	6875 6225 6300 6225
Wire Bus Line
	3450 1075 3450 850 
Wire Bus Line
	6750 850  6750 4050
Connection ~ 3450 1075
Connection ~ 3550 1200
Wire Bus Line
	3450 1100 3450 5100
Connection ~ 3550 4400
Connection ~ 3450 4300
Wire Wire Line
	6350 2550 5775 2550
Wire Wire Line
	6450 1350 5775 1350
Wire Wire Line
	5775 1500 6400 1500
$EndSCHEMATC