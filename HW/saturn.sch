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
Date "2017-12-23"
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
F3 "A[0..18]" O R 3000 1200 60 
F4 "CLK" I R 3000 1325 60 
F5 "~NMI" I R 3000 1575 60 
F6 "BE" I R 3000 1675 60 
F7 "~IRQ" I R 3000 1450 60 
F8 "~MRD" I L 1225 2075 60 
F9 "~MWR" I L 1225 1675 60 
F10 "~RAM0" I L 1225 1800 60 
F11 "~RAM1" I L 1225 1925 60 
F12 "~ROM" I L 1225 2200 60 
F13 "R/~W" O L 1225 2325 60 
F14 "VDA" O L 1225 2425 60 
F15 "VPA" O L 1225 2550 60 
F16 "~RES" I L 1225 2700 60 
F17 "/ABT" I L 1225 1550 60 
F18 "RDY" I L 1225 1425 60 
$EndSheet
$Sheet
S 4000 1000 1775 1975
U 5952FC81
F0 "DUART and line drivers" 60
F1 "duart_line_drivers.sch" 60
F2 "D[0..7]" B L 4000 1075 60 
F3 "~MWR" I L 4000 1850 60 
F4 "~MRD" I L 4000 2000 60 
F5 "RES" I L 4000 2125 60 
F6 "~IRQ" O L 4000 1450 60 
F7 "A[0..18]" I L 4000 1200 60 
$EndSheet
Wire Wire Line
	3000 1075 4000 1075
Wire Wire Line
	3000 1200 4000 1200
$Sheet
S 1350 3975 1675 1850
U 5A3B21BC
F0 "VIA and IDE" 60
F1 "via_and_ide.sch" 60
F2 "D[0..7]" I R 3025 4300 60 
F3 "A[0..18]" I R 3025 4475 60 
F4 "CLK" I R 3025 4075 60 
F5 "~RES" I R 3025 4825 60 
F6 "~IRQ" I R 3025 4200 60 
F7 "R/~W" I R 3025 5150 60 
$EndSheet
$Sheet
S 4050 3975 1775 1875
U 5A3B356D
F0 "Glue and control logic" 60
F1 "controll_logic.sch" 60
F2 "CLK" O L 4050 4075 60 
F3 "~IRQ" O L 4050 4200 60 
F4 "~NMI" B L 4050 4325 60 
F5 "BE" O L 4050 4450 60 
F6 "RDY" O L 4050 4600 60 
F7 "~PWR" O R 5825 5650 60 
F8 "~RES" O L 4050 4775 60 
F9 "~SO" O L 4050 4950 60 
F10 "RES" O R 5825 4175 60 
F11 "TCK" I R 5825 4350 60 
F12 "TMS" I R 5825 4500 60 
F13 "TDI" I R 5825 4700 60 
F14 "TDO" O R 5825 4875 60 
F15 "~KS" O R 5825 5450 60 
$EndSheet
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
Wire Wire Line
	3025 4100 3025 4075
Connection ~ 3850 4075
Connection ~ 3900 4200
$Sheet
S 7575 4025 1625 1875
U 5A3D7428
F0 "Real Time Clock" 60
F1 "rtc.sch" 60
F2 "D[0..7]" B L 7575 4200 60 
F3 "A[0..18]" I L 7575 4475 60 
F4 "~PWR" O L 7575 4725 60 
F5 "~KS" O L 7575 4950 60 
F6 "~IRQ" O L 7575 5225 60 
F7 "~RST" O L 7575 5450 60 
F8 "~MWR" I R 9200 4300 60 
F9 "~MRD" I R 9200 4525 60 
F10 "~RTCSEL" I R 9200 4825 60 
$EndSheet
Connection ~ 3900 1450
$EndSCHEMATC
