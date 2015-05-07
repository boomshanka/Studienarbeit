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
LIBS:special
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
LIBS:endplatine-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date "7 may 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5500 1950 950  600 
U 54AEB44F
F0 "Mikrocontroller" 50
F1 "Mikrocontroller.sch" 50
$EndSheet
Text GLabel 4050 2050 0    60   Output ~ 0
MISO
Text GLabel 4050 2150 0    60   Input ~ 0
SCK
Text GLabel 4050 2250 0    60   Input ~ 0
Reset
Text GLabel 4850 2150 2    60   Input ~ 0
MOSI
$Comp
L GND #PWR01
U 1 1 54AFC83A
P 4850 2250
F 0 "#PWR01" H 4850 2250 30  0001 C CNN
F 1 "GND" H 4850 2180 30  0001 C CNN
F 2 "" H 4850 2250 60  0000 C CNN
F 3 "" H 4850 2250 60  0000 C CNN
	1    4850 2250
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR02
U 1 1 54AFC849
P 4850 2050
F 0 "#PWR02" H 4850 2140 20  0001 C CNN
F 1 "+5V" H 4850 2140 30  0000 C CNN
F 2 "" H 4850 2050 60  0000 C CNN
F 3 "" H 4850 2050 60  0000 C CNN
	1    4850 2050
	0    1    1    0   
$EndComp
Text GLabel 4050 2350 0    60   BiDi ~ 0
SDA
Text GLabel 4050 2450 0    60   BiDi ~ 0
SCL
$Comp
L +12V #PWR03
U 1 1 54AFCBCD
P 4850 2350
F 0 "#PWR03" H 4850 2300 20  0001 C CNN
F 1 "+12V" H 4850 2450 30  0000 C CNN
F 2 "" H 4850 2350 60  0000 C CNN
F 3 "" H 4850 2350 60  0000 C CNN
	1    4850 2350
	0    1    1    0   
$EndComp
$Comp
L -12V #PWR04
U 1 1 54AFCBDC
P 4850 2450
F 0 "#PWR04" H 4850 2580 20  0001 C CNN
F 1 "-12V" H 4850 2550 30  0000 C CNN
F 2 "" H 4850 2450 60  0000 C CNN
F 3 "" H 4850 2450 60  0000 C CNN
	1    4850 2450
	0    1    1    0   
$EndComp
$Comp
L CONN_5X2 P1
U 1 1 54B1CC21
P 4450 2250
F 0 "P1" H 4450 2550 60  0000 C CNN
F 1 "CONN_5X2" V 4450 2250 50  0000 C CNN
F 2 "~" H 4450 2250 60  0000 C CNN
F 3 "~" H 4450 2250 60  0000 C CNN
	1    4450 2250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
