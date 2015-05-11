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
Sheet 3 4
Title ""
Date "11 may 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6850 2700 2    60   Output ~ 0
Signal
$Comp
L LM358N U1
U 1 1 54AEEFBD
P 1800 2800
F 0 "U1" H 1750 3000 60  0000 L CNN
F 1 "LM358N" H 1750 2550 60  0000 L CNN
F 2 "" H 1800 2800 60  0000 C CNN
F 3 "" H 1800 2800 60  0000 C CNN
	1    1800 2800
	1    0    0    -1  
$EndComp
$Comp
L BC237 Q2
U 1 1 54AEF29B
P 6200 3100
F 0 "Q2" H 6400 3000 50  0000 C CNN
F 1 "BC337" H 6450 3250 50  0000 C CNN
F 2 "TO92-EBC" H 6390 3100 30  0001 C CNN
F 3 "~" H 6200 3100 60  0000 C CNN
	1    6200 3100
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 54AEF3C0
P 6300 2350
F 0 "R11" V 6380 2350 40  0000 C CNN
F 1 "10k" V 6307 2351 40  0000 C CNN
F 2 "~" V 6230 2350 30  0000 C CNN
F 3 "~" H 6300 2350 30  0000 C CNN
	1    6300 2350
	1    0    0    -1  
$EndComp
$Comp
L LM358N U1
U 2 1 54AEEFEF
P 4200 2900
F 0 "U1" H 4150 3100 60  0000 L CNN
F 1 "LM358N" H 4150 2650 60  0000 L CNN
F 2 "" H 4200 2900 60  0000 C CNN
F 3 "" H 4200 2900 60  0000 C CNN
	2    4200 2900
	1    0    0    -1  
$EndComp
$Comp
L SPEAKER Rec1
U 1 1 54AF15BE
P 1000 2300
F 0 "Rec1" H 900 2550 70  0000 C CNN
F 1 "2.55nF" H 900 2050 70  0000 C CNN
F 2 "~" H 1000 2300 60  0000 C CNN
F 3 "~" H 1000 2300 60  0000 C CNN
	1    1000 2300
	0    -1   -1   0   
$EndComp
Text Notes 1350 3600 0    60   ~ 0
V = 1 + R1/R2
$Comp
L -12V #PWR10
U 1 1 54AFCF28
P 1700 3200
F 0 "#PWR10" H 1700 3330 20  0001 C CNN
F 1 "-12V" H 1850 9300 30  0000 C CNN
F 2 "" H 1700 3200 60  0000 C CNN
F 3 "" H 1700 3200 60  0000 C CNN
	1    1700 3200
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR9
U 1 1 54AFCF37
P 1700 2400
F 0 "#PWR9" H 1700 2350 20  0001 C CNN
F 1 "+12V" H 1700 2500 30  0000 C CNN
F 2 "" H 1700 2400 60  0000 C CNN
F 3 "" H 1700 2400 60  0000 C CNN
	1    1700 2400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR7
U 1 1 54AFCF6F
P 900 2600
F 0 "#PWR7" H 900 2600 30  0001 C CNN
F 1 "GND" H 900 2530 30  0001 C CNN
F 2 "" H 900 2600 60  0000 C CNN
F 3 "" H 900 2600 60  0000 C CNN
	1    900  2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR11
U 1 1 54AFCF83
P 2300 3800
F 0 "#PWR11" H 2300 3800 30  0001 C CNN
F 1 "GND" H 2300 3730 30  0001 C CNN
F 2 "" H 2300 3800 60  0000 C CNN
F 3 "" H 2300 3800 60  0000 C CNN
	1    2300 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR19
U 1 1 54AFCFF3
P 6300 3600
F 0 "#PWR19" H 6300 3600 30  0001 C CNN
F 1 "GND" H 6300 3530 30  0001 C CNN
F 2 "" H 6300 3600 60  0000 C CNN
F 3 "" H 6300 3600 60  0000 C CNN
	1    6300 3600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR18
U 1 1 54AFD01B
P 6300 2100
F 0 "#PWR18" H 6300 2190 20  0001 C CNN
F 1 "+5V" H 6300 2190 30  0000 C CNN
F 2 "" H 6300 2100 60  0000 C CNN
F 3 "" H 6300 2100 60  0000 C CNN
	1    6300 2100
	1    0    0    -1  
$EndComp
$Comp
L -12V #PWR15
U 1 1 54AFD2A3
P 4100 3300
F 0 "#PWR15" H 4100 3430 20  0001 C CNN
F 1 "-12V" H 4100 3400 30  0000 C CNN
F 2 "" H 4100 3300 60  0000 C CNN
F 3 "" H 4100 3300 60  0000 C CNN
	1    4100 3300
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR14
U 1 1 54AFD2B2
P 4100 2500
F 0 "#PWR14" H 4100 2450 20  0001 C CNN
F 1 "+12V" H 4100 2600 30  0000 C CNN
F 2 "" H 4100 2500 60  0000 C CNN
F 3 "" H 4100 2500 60  0000 C CNN
	1    4100 2500
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 55017E4D
P 1100 3050
F 0 "R5" V 1180 3050 40  0000 C CNN
F 1 "2.2k" V 1107 3051 40  0000 C CNN
F 2 "~" V 1030 3050 30  0000 C CNN
F 3 "~" H 1100 3050 30  0000 C CNN
	1    1100 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR8
U 1 1 55017E53
P 1100 3550
F 0 "#PWR8" H 1100 3550 30  0001 C CNN
F 1 "GND" H 1100 3480 30  0001 C CNN
F 2 "" H 1100 3550 60  0000 C CNN
F 3 "" H 1100 3550 60  0000 C CNN
	1    1100 3550
	1    0    0    -1  
$EndComp
Text Notes 1600 3900 0    60   ~ 0
Verstärker
Text Notes 4000 3900 0    60   ~ 0
Verstärker
Text Notes 2600 3900 0    60   ~ 0
Gleichrichter +\nTiefpass
$Comp
L R R7
U 1 1 554789E5
P 2300 3550
F 0 "R7" V 2380 3550 40  0000 C CNN
F 1 "1.2k" V 2307 3551 40  0000 C CNN
F 2 "~" V 2230 3550 30  0000 C CNN
F 3 "~" H 2300 3550 30  0000 C CNN
	1    2300 3550
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 55478A28
P 2300 3050
F 0 "R6" V 2380 3050 40  0000 C CNN
F 1 "100k" V 2307 3051 40  0000 C CNN
F 2 "~" V 2230 3050 30  0000 C CNN
F 3 "~" H 2300 3050 30  0000 C CNN
	1    2300 3050
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 55478A44
P 4700 3150
F 0 "R9" V 4780 3150 40  0000 C CNN
F 1 "100k" V 4707 3151 40  0000 C CNN
F 2 "~" V 4630 3150 30  0000 C CNN
F 3 "~" H 4700 3150 30  0000 C CNN
	1    4700 3150
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 55478A5E
P 4700 3650
F 0 "R10" V 4780 3650 40  0000 C CNN
F 1 "1.2k" V 4707 3651 40  0000 C CNN
F 2 "~" V 4630 3650 30  0000 C CNN
F 3 "~" H 4700 3650 30  0000 C CNN
	1    4700 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR16
U 1 1 55478A64
P 4700 3900
F 0 "#PWR16" H 4700 3900 30  0001 C CNN
F 1 "GND" H 4700 3830 30  0001 C CNN
F 2 "" H 4700 3900 60  0000 C CNN
F 3 "" H 4700 3900 60  0000 C CNN
	1    4700 3900
	1    0    0    -1  
$EndComp
$Comp
L DIODE D4
U 1 1 55478AAA
P 2700 2800
F 0 "D4" H 2700 2900 40  0000 C CNN
F 1 "DIODE" H 2700 2700 40  0000 C CNN
F 2 "~" H 2700 2800 60  0000 C CNN
F 3 "~" H 2700 2800 60  0000 C CNN
	1    2700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2600 6300 2900
Wire Wire Line
	6000 2700 6850 2700
Connection ~ 6300 2700
Wire Wire Line
	6300 3300 6300 3600
Wire Wire Line
	1300 3300 1300 2900
Wire Wire Line
	1100 2700 1300 2700
Connection ~ 1100 2700
Wire Wire Line
	1300 3300 2300 3300
Wire Wire Line
	1100 3300 1100 3550
Wire Wire Line
	1100 2600 1100 2800
Wire Wire Line
	3700 3400 4700 3400
Wire Wire Line
	4700 2900 4900 2900
Wire Wire Line
	2900 2800 3700 2800
Wire Wire Line
	3700 3000 3700 3400
Text Notes 550  3900 0    60   ~ 0
CR HP (ca 30kHz)
$Comp
L BC237 Q1
U 1 1 554B6E6E
P 5900 2900
F 0 "Q1" H 6100 2800 50  0000 C CNN
F 1 "BC337" H 6150 3050 50  0000 C CNN
F 2 "TO92-EBC" H 6090 2900 30  0001 C CNN
F 3 "~" H 5900 2900 60  0000 C CNN
	1    5900 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2800 2500 2800
$Comp
L C C1
U 1 1 55508CF0
P 3100 3200
F 0 "C1" H 3100 3300 40  0000 L CNN
F 1 "100p" H 3106 3115 40  0000 L CNN
F 2 "~" H 3138 3050 30  0000 C CNN
F 3 "~" H 3100 3200 60  0000 C CNN
	1    3100 3200
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 55508CFF
P 3300 3150
F 0 "R8" V 3380 3150 40  0000 C CNN
F 1 "560k" V 3307 3151 40  0000 C CNN
F 2 "~" V 3230 3150 30  0000 C CNN
F 3 "~" H 3300 3150 30  0000 C CNN
	1    3300 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR13
U 1 1 55508D0E
P 3300 3400
F 0 "#PWR13" H 3300 3400 30  0001 C CNN
F 1 "GND" H 3300 3330 30  0001 C CNN
F 2 "" H 3300 3400 60  0000 C CNN
F 3 "" H 3300 3400 60  0000 C CNN
	1    3300 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 55508D1D
P 3100 3400
F 0 "#PWR12" H 3100 3400 30  0001 C CNN
F 1 "GND" H 3100 3330 30  0001 C CNN
F 2 "" H 3100 3400 60  0000 C CNN
F 3 "" H 3100 3400 60  0000 C CNN
	1    3100 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2800 3100 3000
Connection ~ 3100 2800
Wire Wire Line
	3300 2900 3300 2800
Connection ~ 3300 2800
$Comp
L C C2
U 1 1 55509E85
P 5100 2900
F 0 "C2" H 5100 3000 40  0000 L CNN
F 1 "10n" H 5106 2815 40  0000 L CNN
F 2 "~" H 5138 2750 30  0000 C CNN
F 3 "~" H 5100 2900 60  0000 C CNN
	1    5100 2900
	0    -1   -1   0   
$EndComp
$Comp
L POT RV1
U 1 1 55509E94
P 5700 2350
F 0 "RV1" H 5700 2250 50  0000 C CNN
F 1 "100k" H 5700 2350 50  0000 C CNN
F 2 "~" H 5700 2350 60  0000 C CNN
F 3 "~" H 5700 2350 60  0000 C CNN
	1    5700 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 2100 6300 2100
Wire Wire Line
	5550 2350 5500 2350
Wire Wire Line
	5500 2350 5500 2900
Wire Wire Line
	5300 2900 5700 2900
Connection ~ 5500 2900
$Comp
L GND #PWR17
U 1 1 55509EF9
P 5700 2600
F 0 "#PWR17" H 5700 2600 30  0001 C CNN
F 1 "GND" H 5700 2530 30  0001 C CNN
F 2 "" H 5700 2600 60  0000 C CNN
F 3 "" H 5700 2600 60  0000 C CNN
	1    5700 2600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
