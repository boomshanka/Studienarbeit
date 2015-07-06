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
LIBS:verteilerplatine-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title ""
Date "6 jul 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_5X2 PC2
U 1 1 54E728CA
P 4100 1800
F 0 "PC2" H 4100 2100 60  0000 C CNN
F 1 "CONN_5X2" V 4100 1800 50  0000 C CNN
F 2 "" H 4100 1800 60  0000 C CNN
F 3 "" H 4100 1800 60  0000 C CNN
	1    4100 1800
	1    0    0    -1  
$EndComp
$Comp
L CONN_5X2 PC3
U 1 1 54E728D0
P 4100 2600
F 0 "PC3" H 4100 2900 60  0000 C CNN
F 1 "CONN_5X2" V 4100 2600 50  0000 C CNN
F 2 "" H 4100 2600 60  0000 C CNN
F 3 "" H 4100 2600 60  0000 C CNN
	1    4100 2600
	1    0    0    -1  
$EndComp
$Comp
L CONN_5X2 PC1
U 1 1 54E728D6
P 4100 1000
F 0 "PC1" H 4100 1300 60  0000 C CNN
F 1 "CONN_5X2" V 4100 1000 50  0000 C CNN
F 2 "" H 4100 1000 60  0000 C CNN
F 3 "" H 4100 1000 60  0000 C CNN
	1    4100 1000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 54E728F0
P 5250 800
F 0 "#PWR05" H 5250 890 20  0001 C CNN
F 1 "+5V" H 5250 890 30  0000 C CNN
F 2 "" H 5250 800 60  0000 C CNN
F 3 "" H 5250 800 60  0000 C CNN
	1    5250 800 
	0    1    1    0   
$EndComp
$Comp
L GND #PWR06
U 1 1 54E728F6
P 5250 1000
F 0 "#PWR06" H 5250 1000 30  0001 C CNN
F 1 "GND" H 5250 930 30  0001 C CNN
F 2 "" H 5250 1000 60  0000 C CNN
F 3 "" H 5250 1000 60  0000 C CNN
	1    5250 1000
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR07
U 1 1 54E728FC
P 5250 1100
F 0 "#PWR07" H 5250 1050 20  0001 C CNN
F 1 "+12V" H 5250 1200 30  0000 C CNN
F 2 "" H 5250 1100 60  0000 C CNN
F 3 "" H 5250 1100 60  0000 C CNN
	1    5250 1100
	0    1    1    0   
$EndComp
$Comp
L -12V #PWR08
U 1 1 54E72902
P 5250 1200
F 0 "#PWR08" H 5250 1330 20  0001 C CNN
F 1 "-12V" H 5250 1300 30  0000 C CNN
F 2 "" H 5250 1200 60  0000 C CNN
F 3 "" H 5250 1200 60  0000 C CNN
	1    5250 1200
	0    1    1    0   
$EndComp
Text HLabel 4450 3400 2    60   Input ~ 0
MOSI
Text HLabel 3650 3300 0    60   Output ~ 0
MISO
Text HLabel 3650 3400 0    60   Input ~ 0
SCK
Text HLabel 3500 3500 0    60   Input ~ 0
Reset
Text HLabel 2950 1100 0    60   BiDi ~ 0
SDA
Text HLabel 2950 1200 0    60   BiDi ~ 0
SCL
Connection ~ 3350 1200
Connection ~ 3250 1100
Connection ~ 3250 1900
Wire Wire Line
	3250 2700 3700 2700
Wire Wire Line
	3250 1900 3700 1900
Wire Wire Line
	3250 1100 3250 2700
Wire Wire Line
	2950 1100 3700 1100
Connection ~ 3350 2000
Wire Wire Line
	2950 1200 3700 1200
Wire Wire Line
	3350 2000 3700 2000
Wire Wire Line
	3350 1200 3350 2800
Wire Wire Line
	3350 2800 3700 2800
Connection ~ 5150 1200
Connection ~ 5050 1100
Connection ~ 4950 1000
Connection ~ 4850 800 
Connection ~ 5150 2000
Wire Wire Line
	4500 2000 5150 2000
Wire Wire Line
	4500 1200 5250 1200
Wire Wire Line
	5150 1200 5150 2800
Wire Wire Line
	5150 2800 4500 2800
Connection ~ 5050 1900
Wire Wire Line
	5050 2700 4500 2700
Wire Wire Line
	5050 1900 4500 1900
Wire Wire Line
	5050 1100 5050 2700
Wire Wire Line
	4500 1100 5250 1100
Connection ~ 4950 1800
Wire Wire Line
	4950 2600 4500 2600
Wire Wire Line
	4950 1800 4500 1800
Wire Wire Line
	4950 1000 4950 2600
Wire Wire Line
	4500 1000 5250 1000
Connection ~ 4850 1600
Wire Wire Line
	4850 2400 4500 2400
Wire Wire Line
	4850 1600 4500 1600
Wire Wire Line
	4850 800  4850 2400
Wire Wire Line
	4500 800  5250 800 
$Comp
L R RD1
U 1 1 54E75B16
P 3550 3750
F 0 "RD1" V 3630 3750 40  0000 C CNN
F 1 "1.5k" V 3557 3751 40  0000 C CNN
F 2 "~" V 3480 3750 30  0000 C CNN
F 3 "~" H 3550 3750 30  0000 C CNN
	1    3550 3750
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 54E75B3A
P 3550 4200
F 0 "D1" H 3550 4300 50  0000 C CNN
F 1 "LED" H 3550 4100 50  0000 C CNN
F 2 "~" H 3550 4200 60  0000 C CNN
F 3 "~" H 3550 4200 60  0000 C CNN
	1    3550 4200
	0    -1   -1   0   
$EndComp
$Comp
L CONN_5X2 PC4
U 1 1 54E9B483
P 4050 3500
F 0 "PC4" H 4050 3800 60  0000 C CNN
F 1 "CONN_5X2" V 4050 3500 50  0000 C CNN
F 2 "" H 4050 3500 60  0000 C CNN
F 3 "" H 4050 3500 60  0000 C CNN
	1    4050 3500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 54E75B96
P 4450 3300
F 0 "#PWR09" H 4450 3390 20  0001 C CNN
F 1 "+5V" H 4450 3390 30  0000 C CNN
F 2 "" H 4450 3300 60  0000 C CNN
F 3 "" H 4450 3300 60  0000 C CNN
	1    4450 3300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 54E9B49E
P 4450 3500
F 0 "#PWR?" H 4450 3500 30  0001 C CNN
F 1 "GND" H 4450 3430 30  0001 C CNN
F 2 "" H 4450 3500 60  0000 C CNN
F 3 "" H 4450 3500 60  0000 C CNN
	1    4450 3500
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 54E9B4BF
P 3550 4400
F 0 "#PWR?" H 3550 4490 20  0001 C CNN
F 1 "+5V" H 3550 4490 30  0000 C CNN
F 2 "" H 3550 4400 60  0000 C CNN
F 3 "" H 3550 4400 60  0000 C CNN
	1    3550 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 3500 3650 3500
Connection ~ 3550 3500
Wire Wire Line
	3700 800  3550 800 
Wire Wire Line
	3550 800  3550 2400
Wire Wire Line
	3550 1600 3700 1600
Wire Wire Line
	3550 2400 3700 2400
Connection ~ 3550 1600
$EndSCHEMATC
