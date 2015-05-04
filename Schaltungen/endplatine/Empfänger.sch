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
Date "4 may 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 10250 2800 2    60   Output ~ 0
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
P 5900 3400
F 0 "U2" H 5850 3600 60  0000 L CNN
F 1 "LM358N" H 5850 3150 60  0000 L CNN
F 2 "" H 5900 3400 60  0000 C CNN
F 3 "" H 5900 3400 60  0000 C CNN
	1    5900 3400
	1    0    0    -1  
$EndComp
$Comp
L BC237 Q1
U 1 1 54AEF29B
P 9600 3100
F 0 "Q1" H 9800 3000 50  0000 C CNN
F 1 "BC337" H 9850 3250 50  0000 C CNN
F 2 "TO92-EBC" H 9790 3100 30  0001 C CNN
F 3 "~" H 9600 3100 60  0000 C CNN
	1    9600 3100
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 54AEF3C0
P 9700 2450
F 0 "R10" V 9780 2450 40  0000 C CNN
F 1 "10k" V 9707 2451 40  0000 C CNN
F 2 "~" V 9630 2450 30  0000 C CNN
F 3 "~" H 9700 2450 30  0000 C CNN
	1    9700 2450
	1    0    0    -1  
$EndComp
$Comp
L R RB1
U 1 1 54AEF4CB
P 9150 3100
F 0 "RB1" V 9230 3100 40  0000 C CNN
F 1 "100" V 9157 3101 40  0000 C CNN
F 2 "~" V 9080 3100 30  0000 C CNN
F 3 "~" H 9150 3100 30  0000 C CNN
	1    9150 3100
	0    1    1    0   
$EndComp
$Comp
L LM358N U1
U 2 1 54AEEFEF
P 4100 2900
F 0 "U1" H 4050 3100 60  0000 L CNN
F 1 "LM358N" H 4050 2650 60  0000 L CNN
F 2 "" H 4100 2900 60  0000 C CNN
F 3 "" H 4100 2900 60  0000 C CNN
	2    4100 2900
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 54AF128F
P 3300 3050
F 0 "R7" V 3380 3050 40  0000 C CNN
F 1 "40k" V 3307 3051 40  0000 C CNN
F 2 "~" V 3230 3050 30  0000 C CNN
F 3 "~" H 3300 3050 30  0000 C CNN
	1    3300 3050
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
P 8200 3100
F 0 "U2" H 8150 3300 60  0000 L CNN
F 1 "LM358N" H 8150 2850 60  0000 L CNN
F 2 "" H 8200 3100 60  0000 C CNN
F 3 "" H 8200 3100 60  0000 C CNN
	2    8200 3100
	1    0    0    1   
$EndComp
$Comp
L GND #PWR013
U 1 1 54AFCFF3
P 9700 3600
F 0 "#PWR013" H 9700 3600 30  0001 C CNN
F 1 "GND" H 9700 3530 30  0001 C CNN
F 2 "" H 9700 3600 60  0000 C CNN
F 3 "" H 9700 3600 60  0000 C CNN
	1    9700 3600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 54AFD002
P 7500 2600
F 0 "#PWR014" H 7500 2690 20  0001 C CNN
F 1 "+5V" H 7500 2690 30  0000 C CNN
F 2 "" H 7500 2600 60  0000 C CNN
F 3 "" H 7500 2600 60  0000 C CNN
	1    7500 2600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 54AFD01B
P 9700 2200
F 0 "#PWR015" H 9700 2290 20  0001 C CNN
F 1 "+5V" H 9700 2290 30  0000 C CNN
F 2 "" H 9700 2200 60  0000 C CNN
F 3 "" H 9700 2200 60  0000 C CNN
	1    9700 2200
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR016
U 1 1 54AFD230
P 8100 3500
F 0 "#PWR016" H 8100 3450 20  0001 C CNN
F 1 "+12V" H 8100 3600 30  0000 C CNN
F 2 "" H 8100 3500 60  0000 C CNN
F 3 "" H 8100 3500 60  0000 C CNN
	1    8100 3500
	0    1    1    0   
$EndComp
$Comp
L -12V #PWR017
U 1 1 54AFD249
P 8100 2700
F 0 "#PWR017" H 8100 2830 20  0001 C CNN
F 1 "-12V" H 8100 2800 30  0000 C CNN
F 2 "" H 8100 2700 60  0000 C CNN
F 3 "" H 8100 2700 60  0000 C CNN
	1    8100 2700
	0    1    1    0   
$EndComp
$Comp
L -12V #PWR018
U 1 1 54AFD2A3
P 4000 3300
F 0 "#PWR018" H 4000 3430 20  0001 C CNN
F 1 "-12V" H 4000 3400 30  0000 C CNN
F 2 "" H 4000 3300 60  0000 C CNN
F 3 "" H 4000 3300 60  0000 C CNN
	1    4000 3300
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR019
U 1 1 54AFD2B2
P 4000 2500
F 0 "#PWR019" H 4000 2450 20  0001 C CNN
F 1 "+12V" H 4000 2600 30  0000 C CNN
F 2 "" H 4000 2500 60  0000 C CNN
F 3 "" H 4000 2500 60  0000 C CNN
	1    4000 2500
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
P 3100 2800
F 0 "C3" H 3100 2900 40  0000 L CNN
F 1 "100p" H 3106 2715 40  0000 L CNN
F 2 "~" H 3138 2650 30  0000 C CNN
F 3 "~" H 3100 2800 60  0000 C CNN
	1    3100 2800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR021
U 1 1 550185B5
P 3300 3300
F 0 "#PWR021" H 3300 3300 30  0001 C CNN
F 1 "GND" H 3300 3230 30  0001 C CNN
F 2 "" H 3300 3300 60  0000 C CNN
F 3 "" H 3300 3300 60  0000 C CNN
	1    3300 3300
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR022
U 1 1 550199B0
P 5800 3000
F 0 "#PWR022" H 5800 2950 20  0001 C CNN
F 1 "+12V" H 5800 3100 30  0000 C CNN
F 2 "" H 5800 3000 60  0000 C CNN
F 3 "" H 5800 3000 60  0000 C CNN
	1    5800 3000
	0    1    -1   0   
$EndComp
$Comp
L -12V #PWR023
U 1 1 550199B6
P 5800 3800
F 0 "#PWR023" H 5800 3930 20  0001 C CNN
F 1 "-12V" H 5800 3900 30  0000 C CNN
F 2 "" H 5800 3800 60  0000 C CNN
F 3 "" H 5800 3800 60  0000 C CNN
	1    5800 3800
	0    1    -1   0   
$EndComp
$Comp
L R R8
U 1 1 5501A8FF
P 7050 3000
F 0 "R8" V 7130 3000 40  0000 C CNN
F 1 "10k" V 7057 3001 40  0000 C CNN
F 2 "~" V 6980 3000 30  0000 C CNN
F 3 "~" H 7050 3000 30  0000 C CNN
	1    7050 3000
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 5501A91E
P 8150 2500
F 0 "R9" V 8230 2500 40  0000 C CNN
F 1 "10k" V 8157 2501 40  0000 C CNN
F 2 "~" V 8080 2500 30  0000 C CNN
F 3 "~" H 8150 2500 30  0000 C CNN
	1    8150 2500
	0    1    1    0   
$EndComp
$Comp
L POT RV3
U 1 1 5501AC7E
P 7500 3200
F 0 "RV3" H 7500 3100 50  0000 C CNN
F 1 "100k" H 7500 3200 50  0000 C CNN
F 2 "~" H 7500 3200 60  0000 C CNN
F 3 "~" H 7500 3200 60  0000 C CNN
	1    7500 3200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR025
U 1 1 5501AC8D
P 7500 3450
F 0 "#PWR025" H 7500 3450 30  0001 C CNN
F 1 "GND" H 7500 3380 30  0001 C CNN
F 2 "" H 7500 3450 60  0000 C CNN
F 3 "" H 7500 3450 60  0000 C CNN
	1    7500 3450
	1    0    0    -1  
$EndComp
Text Notes 1450 3900 0    60   ~ 0
Verstärker
Text Notes 3900 3900 0    60   ~ 0
Verstärker
Text Notes 2700 3800 0    60   ~ 0
Gleichrichter + \nHochpass (20kHz)
Text Notes 5400 4300 0    60   ~ 0
Integrierverstärker
Text Notes 7900 4050 0    60   ~ 0
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
P 4600 3150
F 0 "R?" V 4680 3150 40  0000 C CNN
F 1 "1.8k" V 4607 3151 40  0000 C CNN
F 2 "~" V 4530 3150 30  0000 C CNN
F 3 "~" H 4600 3150 30  0000 C CNN
	1    4600 3150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 55478A5E
P 4600 3650
F 0 "R?" V 4680 3650 40  0000 C CNN
F 1 "1.8k" V 4607 3651 40  0000 C CNN
F 2 "~" V 4530 3650 30  0000 C CNN
F 3 "~" H 4600 3650 30  0000 C CNN
	1    4600 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 55478A64
P 4600 3900
F 0 "#PWR?" H 4600 3900 30  0001 C CNN
F 1 "GND" H 4600 3830 30  0001 C CNN
F 2 "" H 4600 3900 60  0000 C CNN
F 3 "" H 4600 3900 60  0000 C CNN
	1    4600 3900
	1    0    0    -1  
$EndComp
$Comp
L DIODE D?
U 1 1 55478AAA
P 2700 2800
F 0 "D?" H 2700 2900 40  0000 C CNN
F 1 "DIODE" H 2700 2700 40  0000 C CNN
F 2 "~" H 2700 2800 60  0000 C CNN
F 3 "~" H 2700 2800 60  0000 C CNN
	1    2700 2800
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 55478B01
P 5800 2700
F 0 "C?" H 5800 2800 40  0000 L CNN
F 1 "100p" H 5806 2615 40  0000 L CNN
F 2 "~" H 5838 2550 30  0000 C CNN
F 3 "~" H 5800 2700 60  0000 C CNN
	1    5800 2700
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 55478B07
P 5850 2400
F 0 "R?" V 5930 2400 40  0000 C CNN
F 1 "40k" V 5857 2401 40  0000 C CNN
F 2 "~" V 5780 2400 30  0000 C CNN
F 3 "~" H 5850 2400 30  0000 C CNN
	1    5850 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	9700 2900 9700 2700
Wire Wire Line
	10250 2800 9700 2800
Connection ~ 9700 2800
Wire Wire Line
	9700 3300 9700 3600
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
	6400 3400 7000 3400
Wire Wire Line
	8400 2500 8700 2500
Wire Wire Line
	8700 2500 8700 3100
Wire Wire Line
	7700 3000 7700 2500
Wire Wire Line
	7700 2500 7900 2500
Wire Wire Line
	7300 3000 7700 3000
Wire Wire Line
	7500 2600 7500 2950
Wire Wire Line
	7650 3200 7700 3200
Wire Wire Line
	8700 3100 8900 3100
Wire Wire Line
	3600 3000 3600 3400
Wire Wire Line
	3600 3400 4600 3400
Wire Wire Line
	4600 2900 4800 2900
Wire Wire Line
	6400 3400 6400 2400
Wire Wire Line
	6400 2400 6100 2400
Wire Wire Line
	5400 2400 5400 3300
Wire Wire Line
	5400 2400 5600 2400
Wire Wire Line
	5600 2700 5400 2700
Connection ~ 5400 2700
Wire Wire Line
	6000 2700 6400 2700
Connection ~ 6400 2700
$Comp
L R R?
U 1 1 55478C22
P 5150 3300
F 0 "R?" V 5230 3300 40  0000 C CNN
F 1 "40k" V 5157 3301 40  0000 C CNN
F 2 "~" V 5080 3300 30  0000 C CNN
F 3 "~" H 5150 3300 30  0000 C CNN
	1    5150 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 2800 2500 2800
Wire Wire Line
	3300 2800 3600 2800
$EndSCHEMATC
