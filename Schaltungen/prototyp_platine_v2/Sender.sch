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
LIBS:prototyp_platine-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date "18 mar 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3100 2700 0    60   Input ~ 0
40kHz PWM
$Comp
L SPEAKER Send1
U 1 1 54AF9401
P 5400 2300
F 0 "Send1" H 5300 2550 70  0000 C CNN
F 1 "2,55n" H 5300 2050 70  0000 C CNN
F 2 "~" H 5400 2300 60  0000 C CNN
F 3 "~" H 5400 2300 60  0000 C CNN
	1    5400 2300
	1    0    0    -1  
$EndComp
Text Notes 850  5850 0    60   ~ 0
Verstärkung mit Komplementär-Ausgangsstufe (totem-pole, Push-Pull)\n
$Comp
L BC237 T1
U 1 1 54AFB412
P 4600 1900
F 0 "T1" H 4800 1800 50  0000 C CNN
F 1 "BC337" H 4850 2050 50  0000 C CNN
F 2 "TO92-EBC" H 4790 1900 30  0001 C CNN
F 3 "~" H 4600 1900 60  0000 C CNN
	1    4600 1900
	1    0    0    1   
$EndComp
$Comp
L BC307 T2
U 1 1 54AFB467
P 4600 2500
F 0 "T2" H 4800 2400 50  0000 C CNN
F 1 "BC327" H 4850 2650 50  0000 C CNN
F 2 "~" H 4600 2500 60  0000 C CNN
F 3 "~" H 4600 2500 60  0000 C CNN
	1    4600 2500
	1    0    0    1   
$EndComp
$Comp
L R RB2
U 1 1 54AFB4CC
P 3350 2700
F 0 "RB2" V 3430 2700 40  0000 C CNN
F 1 "5k" V 3357 2701 40  0000 C CNN
F 2 "~" V 3280 2700 30  0000 C CNN
F 3 "~" H 3350 2700 30  0000 C CNN
	1    3350 2700
	0    -1   -1   0   
$EndComp
$Comp
L ZENERSMALL Z1
U 1 1 54AFB54F
P 4200 3700
F 0 "Z1" H 4200 3800 40  0000 C CNN
F 1 "3.9V" H 4200 3600 30  0000 C CNN
F 2 "~" H 4200 3700 60  0000 C CNN
F 3 "~" H 4200 3700 60  0000 C CNN
	1    4200 3700
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR026
U 1 1 54AFB699
P 4700 1100
F 0 "#PWR026" H 4700 1050 20  0001 C CNN
F 1 "+12V" H 4700 1200 30  0000 C CNN
F 2 "" H 4700 1100 60  0000 C CNN
F 3 "" H 4700 1100 60  0000 C CNN
	1    4700 1100
	1    0    0    -1  
$EndComp
$Comp
L -12V #PWR027
U 1 1 54AFB6B7
P 3900 3800
F 0 "#PWR027" H 3900 3930 20  0001 C CNN
F 1 "-12V" H 3900 3900 30  0000 C CNN
F 2 "" H 3900 3800 60  0000 C CNN
F 3 "" H 3900 3800 60  0000 C CNN
	1    3900 3800
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR028
U 1 1 54AFB6D0
P 5050 2950
F 0 "#PWR028" H 5050 2950 30  0001 C CNN
F 1 "GND" H 5050 2880 30  0001 C CNN
F 2 "" H 5050 2950 60  0000 C CNN
F 3 "" H 5050 2950 60  0000 C CNN
	1    5050 2950
	1    0    0    -1  
$EndComp
$Comp
L C C_S2
U 1 1 54AFB851
P 4900 1200
F 0 "C_S2" H 4900 1300 40  0000 L CNN
F 1 "100n" H 4906 1115 40  0000 L CNN
F 2 "~" H 4938 1050 30  0000 C CNN
F 3 "~" H 4900 1200 60  0000 C CNN
	1    4900 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 2950 5050 2400
Wire Wire Line
	5050 2400 5100 2400
$Comp
L C C4
U 1 1 5501B033
P 4900 2200
F 0 "C4" H 4900 2300 40  0000 L CNN
F 1 "100n" H 4906 2115 40  0000 L CNN
F 2 "~" H 4938 2050 30  0000 C CNN
F 3 "~" H 4900 2200 60  0000 C CNN
	1    4900 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 2100 4700 2300
$Comp
L R R11
U 1 1 5501B06C
P 4700 1450
F 0 "R11" V 4780 1450 40  0000 C CNN
F 1 "100" V 4707 1451 40  0000 C CNN
F 2 "~" V 4630 1450 30  0000 C CNN
F 3 "~" H 4700 1450 30  0000 C CNN
	1    4700 1450
	-1   0    0    1   
$EndComp
$Comp
L R R12
U 1 1 5501B077
P 4700 2950
F 0 "R12" V 4780 2950 40  0000 C CNN
F 1 "100" V 4707 2951 40  0000 C CNN
F 2 "~" V 4630 2950 30  0000 C CNN
F 3 "~" H 4700 2950 30  0000 C CNN
	1    4700 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 1700 4400 2500
$Comp
L R R14
U 1 1 5501B0A6
P 4400 2750
F 0 "R14" V 4480 2750 40  0000 C CNN
F 1 "470" V 4407 2751 40  0000 C CNN
F 2 "~" V 4330 2750 30  0000 C CNN
F 3 "~" H 4400 2750 30  0000 C CNN
	1    4400 2750
	-1   0    0    1   
$EndComp
$Comp
L R R13
U 1 1 5501B0AC
P 4400 1450
F 0 "R13" V 4480 1450 40  0000 C CNN
F 1 "10k" V 4407 1451 40  0000 C CNN
F 2 "~" V 4330 1450 30  0000 C CNN
F 3 "~" H 4400 1450 30  0000 C CNN
	1    4400 1450
	-1   0    0    1   
$EndComp
$Comp
L BC237 T3
U 1 1 5501B0B2
P 4300 3200
F 0 "T3" H 4500 3100 50  0000 C CNN
F 1 "BC337" H 4550 3350 50  0000 C CNN
F 2 "TO92-EBC" H 4490 3200 30  0001 C CNN
F 3 "~" H 4300 3200 60  0000 C CNN
	1    4300 3200
	1    0    0    -1  
$EndComp
Connection ~ 4400 3700
Wire Wire Line
	4700 1100 4700 1200
Wire Wire Line
	4700 1200 4400 1200
Connection ~ 4400 1900
$Comp
L R R16
U 1 1 5501B123
P 3900 3450
F 0 "R16" V 3980 3450 40  0000 C CNN
F 1 "3.9k" V 3907 3451 40  0000 C CNN
F 2 "~" V 3830 3450 30  0000 C CNN
F 3 "~" H 3900 3450 30  0000 C CNN
	1    3900 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 3200 4700 3700
Wire Wire Line
	4700 3700 4300 3700
Wire Wire Line
	4400 3400 4400 3700
$Comp
L BC307 T4
U 1 1 5501B14C
P 3800 2700
F 0 "T4" H 4000 2600 50  0000 C CNN
F 1 "BC327" H 4050 2850 50  0000 C CNN
F 2 "~" H 3800 2700 60  0000 C CNN
F 3 "~" H 3800 2700 60  0000 C CNN
	1    3800 2700
	1    0    0    1   
$EndComp
$Comp
L R R15
U 1 1 5501B1A4
P 3900 2250
F 0 "R15" V 3980 2250 40  0000 C CNN
F 1 "2.2k" V 3907 2251 40  0000 C CNN
F 2 "~" V 3830 2250 30  0000 C CNN
F 3 "~" H 3900 2250 30  0000 C CNN
	1    3900 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 3700 3900 3700
Wire Wire Line
	4100 3200 3900 3200
Wire Wire Line
	3900 3700 3900 3800
$Comp
L C C_S3
U 1 1 5501B1EE
P 3700 3700
F 0 "C_S3" H 3700 3800 40  0000 L CNN
F 1 "100n" H 3706 3615 40  0000 L CNN
F 2 "~" H 3738 3550 30  0000 C CNN
F 3 "~" H 3700 3700 60  0000 C CNN
	1    3700 3700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR029
U 1 1 5501B1F8
P 3500 3700
F 0 "#PWR029" H 3500 3700 30  0001 C CNN
F 1 "GND" H 3500 3630 30  0001 C CNN
F 2 "" H 3500 3700 60  0000 C CNN
F 3 "" H 3500 3700 60  0000 C CNN
	1    3500 3700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR030
U 1 1 5501B217
P 5100 1200
F 0 "#PWR030" H 5100 1200 30  0001 C CNN
F 1 "GND" H 5100 1130 30  0001 C CNN
F 2 "" H 5100 1200 60  0000 C CNN
F 3 "" H 5100 1200 60  0000 C CNN
	1    5100 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 3200 3900 2900
$Comp
L +5V #PWR031
U 1 1 5501B33D
P 3900 2000
F 0 "#PWR031" H 3900 2090 20  0001 C CNN
F 1 "+5V" H 3900 2090 30  0000 C CNN
F 2 "" H 3900 2000 60  0000 C CNN
F 3 "" H 3900 2000 60  0000 C CNN
	1    3900 2000
	1    0    0    -1  
$EndComp
Connection ~ 4700 2200
$EndSCHEMATC