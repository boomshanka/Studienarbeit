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
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title ""
Date "4 may 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 10550 2850 2    60   Output ~ 0
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
L LM358N U2
U 1 1 54AEEFCC
P 6100 3000
F 0 "U2" H 6050 3200 60  0000 L CNN
F 1 "LM358N" H 6050 2750 60  0000 L CNN
F 2 "" H 6100 3000 60  0000 C CNN
F 3 "" H 6100 3000 60  0000 C CNN
	1    6100 3000
	1    0    0    -1  
$EndComp
$Comp
L BC237 Q1
U 1 1 54AEF29B
P 9900 3150
F 0 "Q1" H 10100 3050 50  0000 C CNN
F 1 "BC337" H 10150 3300 50  0000 C CNN
F 2 "TO92-EBC" H 10090 3150 30  0001 C CNN
F 3 "~" H 9900 3150 60  0000 C CNN
	1    9900 3150
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 54AEF3C0
P 10000 2500
F 0 "R10" V 10080 2500 40  0000 C CNN
F 1 "10k" V 10007 2501 40  0000 C CNN
F 2 "~" V 9930 2500 30  0000 C CNN
F 3 "~" H 10000 2500 30  0000 C CNN
	1    10000 2500
	1    0    0    -1  
$EndComp
$Comp
L R RB1
U 1 1 54AEF4CB
P 9450 3150
F 0 "RB1" V 9530 3150 40  0000 C CNN
F 1 "100" V 9457 3151 40  0000 C CNN
F 2 "~" V 9380 3150 30  0000 C CNN
F 3 "~" H 9450 3150 30  0000 C CNN
	1    9450 3150
	0    1    1    0   
$EndComp
$Comp
L LM358N U1
U 2 1 54AEEFEF
P 3200 2900
F 0 "U1" H 3150 3100 60  0000 L CNN
F 1 "LM358N" H 3150 2650 60  0000 L CNN
F 2 "" H 3200 2900 60  0000 C CNN
F 3 "" H 3200 2900 60  0000 C CNN
	2    3200 2900
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 54AF128F
P 4700 3150
F 0 "R7" V 4780 3150 40  0000 C CNN
F 1 "40k" V 4707 3151 40  0000 C CNN
F 2 "~" V 4630 3150 30  0000 C CNN
F 3 "~" H 4700 3150 30  0000 C CNN
	1    4700 3150
	-1   0    0    1   
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
L -12V #PWR07
U 1 1 54AFCF28
P 1700 3200
F 0 "#PWR07" H 1700 3330 20  0001 C CNN
F 1 "-12V" H 1850 9300 30  0000 C CNN
F 2 "" H 1700 3200 60  0000 C CNN
F 3 "" H 1700 3200 60  0000 C CNN
	1    1700 3200
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR08
U 1 1 54AFCF37
P 1700 2400
F 0 "#PWR08" H 1700 2350 20  0001 C CNN
F 1 "+12V" H 1700 2500 30  0000 C CNN
F 2 "" H 1700 2400 60  0000 C CNN
F 3 "" H 1700 2400 60  0000 C CNN
	1    1700 2400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 54AFCF6F
P 900 2600
F 0 "#PWR09" H 900 2600 30  0001 C CNN
F 1 "GND" H 900 2530 30  0001 C CNN
F 2 "" H 900 2600 60  0000 C CNN
F 3 "" H 900 2600 60  0000 C CNN
	1    900  2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 54AFCF83
P 2300 3800
F 0 "#PWR010" H 2300 3800 30  0001 C CNN
F 1 "GND" H 2300 3730 30  0001 C CNN
F 2 "" H 2300 3800 60  0000 C CNN
F 3 "" H 2300 3800 60  0000 C CNN
	1    2300 3800
	1    0    0    -1  
$EndComp
$Comp
L LM358N U2
U 2 1 54AEF022
P 8500 3150
F 0 "U2" H 8450 3350 60  0000 L CNN
F 1 "LM358N" H 8450 2900 60  0000 L CNN
F 2 "" H 8500 3150 60  0000 C CNN
F 3 "" H 8500 3150 60  0000 C CNN
	2    8500 3150
	1    0    0    1   
$EndComp
$Comp
L GND #PWR013
U 1 1 54AFCFF3
P 10000 3650
F 0 "#PWR013" H 10000 3650 30  0001 C CNN
F 1 "GND" H 10000 3580 30  0001 C CNN
F 2 "" H 10000 3650 60  0000 C CNN
F 3 "" H 10000 3650 60  0000 C CNN
	1    10000 3650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 54AFD002
P 7800 2650
F 0 "#PWR014" H 7800 2740 20  0001 C CNN
F 1 "+5V" H 7800 2740 30  0000 C CNN
F 2 "" H 7800 2650 60  0000 C CNN
F 3 "" H 7800 2650 60  0000 C CNN
	1    7800 2650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 54AFD01B
P 10000 2250
F 0 "#PWR015" H 10000 2340 20  0001 C CNN
F 1 "+5V" H 10000 2340 30  0000 C CNN
F 2 "" H 10000 2250 60  0000 C CNN
F 3 "" H 10000 2250 60  0000 C CNN
	1    10000 2250
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR016
U 1 1 54AFD230
P 8400 3550
F 0 "#PWR016" H 8400 3500 20  0001 C CNN
F 1 "+12V" H 8400 3650 30  0000 C CNN
F 2 "" H 8400 3550 60  0000 C CNN
F 3 "" H 8400 3550 60  0000 C CNN
	1    8400 3550
	0    1    1    0   
$EndComp
$Comp
L -12V #PWR017
U 1 1 54AFD249
P 8400 2750
F 0 "#PWR017" H 8400 2880 20  0001 C CNN
F 1 "-12V" H 8400 2850 30  0000 C CNN
F 2 "" H 8400 2750 60  0000 C CNN
F 3 "" H 8400 2750 60  0000 C CNN
	1    8400 2750
	0    1    1    0   
$EndComp
$Comp
L -12V #PWR018
U 1 1 54AFD2A3
P 3100 3300
F 0 "#PWR018" H 3100 3430 20  0001 C CNN
F 1 "-12V" H 3100 3400 30  0000 C CNN
F 2 "" H 3100 3300 60  0000 C CNN
F 3 "" H 3100 3300 60  0000 C CNN
	1    3100 3300
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR019
U 1 1 54AFD2B2
P 3100 2500
F 0 "#PWR019" H 3100 2450 20  0001 C CNN
F 1 "+12V" H 3100 2600 30  0000 C CNN
F 2 "" H 3100 2500 60  0000 C CNN
F 3 "" H 3100 2500 60  0000 C CNN
	1    3100 2500
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 55017E4D
P 1100 3050
F 0 "R1" V 1180 3050 40  0000 C CNN
F 1 "1.8k" V 1107 3051 40  0000 C CNN
F 2 "~" V 1030 3050 30  0000 C CNN
F 3 "~" H 1100 3050 30  0000 C CNN
	1    1100 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 55017E53
P 1100 3550
F 0 "#PWR020" H 1100 3550 30  0001 C CNN
F 1 "GND" H 1100 3480 30  0001 C CNN
F 2 "" H 1100 3550 60  0000 C CNN
F 3 "" H 1100 3550 60  0000 C CNN
	1    1100 3550
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 55018571
P 4500 2900
F 0 "C3" H 4500 3000 40  0000 L CNN
F 1 "100p" H 4506 2815 40  0000 L CNN
F 2 "~" H 4538 2750 30  0000 C CNN
F 3 "~" H 4500 2900 60  0000 C CNN
	1    4500 2900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR021
U 1 1 550185B5
P 4700 3400
F 0 "#PWR021" H 4700 3400 30  0001 C CNN
F 1 "GND" H 4700 3330 30  0001 C CNN
F 2 "" H 4700 3400 60  0000 C CNN
F 3 "" H 4700 3400 60  0000 C CNN
	1    4700 3400
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR022
U 1 1 550199B0
P 6000 2600
F 0 "#PWR022" H 6000 2550 20  0001 C CNN
F 1 "+12V" H 6000 2700 30  0000 C CNN
F 2 "" H 6000 2600 60  0000 C CNN
F 3 "" H 6000 2600 60  0000 C CNN
	1    6000 2600
	0    1    -1   0   
$EndComp
$Comp
L -12V #PWR023
U 1 1 550199B6
P 6000 3400
F 0 "#PWR023" H 6000 3530 20  0001 C CNN
F 1 "-12V" H 6000 3500 30  0000 C CNN
F 2 "" H 6000 3400 60  0000 C CNN
F 3 "" H 6000 3400 60  0000 C CNN
	1    6000 3400
	0    1    -1   0   
$EndComp
$Comp
L POT RV2
U 1 1 55019B84
P 7200 3550
F 0 "RV2" H 7200 3450 50  0000 C CNN
F 1 "100k" H 7200 3550 50  0000 C CNN
F 2 "~" H 7200 3550 60  0000 C CNN
F 3 "~" H 7200 3550 60  0000 C CNN
	1    7200 3550
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR024
U 1 1 55019C1F
P 7200 3800
F 0 "#PWR024" H 7200 3800 30  0001 C CNN
F 1 "GND" H 7200 3730 30  0001 C CNN
F 2 "" H 7200 3800 60  0000 C CNN
F 3 "" H 7200 3800 60  0000 C CNN
	1    7200 3800
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5501A8FF
P 7600 3050
F 0 "R8" V 7680 3050 40  0000 C CNN
F 1 "10k" V 7607 3051 40  0000 C CNN
F 2 "~" V 7530 3050 30  0000 C CNN
F 3 "~" H 7600 3050 30  0000 C CNN
	1    7600 3050
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 5501A91E
P 8450 2550
F 0 "R9" V 8530 2550 40  0000 C CNN
F 1 "10k" V 8457 2551 40  0000 C CNN
F 2 "~" V 8380 2550 30  0000 C CNN
F 3 "~" H 8450 2550 30  0000 C CNN
	1    8450 2550
	0    1    1    0   
$EndComp
$Comp
L POT RV3
U 1 1 5501AC7E
P 7800 3250
F 0 "RV3" H 7800 3150 50  0000 C CNN
F 1 "100k" H 7800 3250 50  0000 C CNN
F 2 "~" H 7800 3250 60  0000 C CNN
F 3 "~" H 7800 3250 60  0000 C CNN
	1    7800 3250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR025
U 1 1 5501AC8D
P 7800 3500
F 0 "#PWR025" H 7800 3500 30  0001 C CNN
F 1 "GND" H 7800 3430 30  0001 C CNN
F 2 "" H 7800 3500 60  0000 C CNN
F 3 "" H 7800 3500 60  0000 C CNN
	1    7800 3500
	1    0    0    -1  
$EndComp
Text Notes 1450 3900 0    60   ~ 0
Verstärker
Text Notes 3000 3900 0    60   ~ 0
Verstärker
Text Notes 4100 3900 0    60   ~ 0
Gleichrichter + \nHochpass (20kHz)
Text Notes 5600 3900 0    60   ~ 0
Integrierverstärker
Text Notes 8200 4100 0    60   ~ 0
Signalumsetzer
$Comp
L R R?
U 1 1 554789E5
P 2300 3550
F 0 "R?" V 2380 3550 40  0000 C CNN
F 1 "1.8k" V 2307 3551 40  0000 C CNN
F 2 "~" V 2230 3550 30  0000 C CNN
F 3 "~" H 2300 3550 30  0000 C CNN
	1    2300 3550
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 55478A28
P 2300 3050
F 0 "R?" V 2380 3050 40  0000 C CNN
F 1 "1.8k" V 2307 3051 40  0000 C CNN
F 2 "~" V 2230 3050 30  0000 C CNN
F 3 "~" H 2300 3050 30  0000 C CNN
	1    2300 3050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 55478A44
P 3700 3150
F 0 "R?" V 3780 3150 40  0000 C CNN
F 1 "1.8k" V 3707 3151 40  0000 C CNN
F 2 "~" V 3630 3150 30  0000 C CNN
F 3 "~" H 3700 3150 30  0000 C CNN
	1    3700 3150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 55478A5E
P 3700 3650
F 0 "R?" V 3780 3650 40  0000 C CNN
F 1 "1.8k" V 3707 3651 40  0000 C CNN
F 2 "~" V 3630 3650 30  0000 C CNN
F 3 "~" H 3700 3650 30  0000 C CNN
	1    3700 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 55478A64
P 3700 3900
F 0 "#PWR?" H 3700 3900 30  0001 C CNN
F 1 "GND" H 3700 3830 30  0001 C CNN
F 2 "" H 3700 3900 60  0000 C CNN
F 3 "" H 3700 3900 60  0000 C CNN
	1    3700 3900
	1    0    0    -1  
$EndComp
$Comp
L DIODE D?
U 1 1 55478AAA
P 4100 2900
F 0 "D?" H 4100 3000 40  0000 C CNN
F 1 "DIODE" H 4100 2800 40  0000 C CNN
F 2 "~" H 4100 2900 60  0000 C CNN
F 3 "~" H 4100 2900 60  0000 C CNN
	1    4100 2900
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 55478B01
P 6000 2300
F 0 "C?" H 6000 2400 40  0000 L CNN
F 1 "100p" H 6006 2215 40  0000 L CNN
F 2 "~" H 6038 2150 30  0000 C CNN
F 3 "~" H 6000 2300 60  0000 C CNN
	1    6000 2300
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 55478B07
P 6050 2000
F 0 "R?" V 6130 2000 40  0000 C CNN
F 1 "40k" V 6057 2001 40  0000 C CNN
F 2 "~" V 5980 2000 30  0000 C CNN
F 3 "~" H 6050 2000 30  0000 C CNN
	1    6050 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	10000 2950 10000 2750
Wire Wire Line
	10550 2850 10000 2850
Connection ~ 10000 2850
Wire Wire Line
	10000 3350 10000 3650
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
	2300 2800 2700 2800
Wire Wire Line
	7200 3050 7200 3300
Wire Wire Line
	8700 2550 9000 2550
Wire Wire Line
	9000 2550 9000 3150
Wire Wire Line
	8000 3050 8000 2550
Wire Wire Line
	8000 2550 8200 2550
Wire Wire Line
	7850 3050 8000 3050
Wire Wire Line
	7350 3050 7200 3050
Wire Wire Line
	7800 2650 7800 3000
Wire Wire Line
	7950 3250 8000 3250
Wire Wire Line
	9000 3150 9200 3150
Wire Wire Line
	2700 3000 2700 3400
Wire Wire Line
	2700 3400 3700 3400
Wire Wire Line
	3700 2900 3900 2900
Wire Wire Line
	6600 3000 6600 2000
Wire Wire Line
	6600 2000 6300 2000
Wire Wire Line
	5600 2000 5600 2900
Wire Wire Line
	5600 2000 5800 2000
Wire Wire Line
	5800 2300 5600 2300
Connection ~ 5600 2300
Wire Wire Line
	6200 2300 6600 2300
Connection ~ 6600 2300
$Comp
L R R?
U 1 1 55478C22
P 5350 2900
F 0 "R?" V 5430 2900 40  0000 C CNN
F 1 "40k" V 5357 2901 40  0000 C CNN
F 2 "~" V 5280 2900 30  0000 C CNN
F 3 "~" H 5350 2900 30  0000 C CNN
	1    5350 2900
	0    1    1    0   
$EndComp
$EndSCHEMATC
