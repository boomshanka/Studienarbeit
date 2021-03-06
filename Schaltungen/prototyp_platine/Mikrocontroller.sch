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
Sheet 2 4
Title ""
Date "11 jan 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA8-P µC1
U 1 1 54AEB6A8
P 3550 2750
F 0 "µC1" H 2800 4050 40  0000 L BNN
F 1 "ATMEGA8-P" H 4050 1300 40  0000 L BNN
F 2 "DIL28" H 3550 2750 30  0000 C CIN
F 3 "~" H 3550 2750 60  0000 C CNN
	1    3550 2750
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 54AEB6AB
P 2150 1650
F 0 "SW1" H 2300 1760 50  0000 C CNN
F 1 "SW_PUSH" H 2150 1570 50  0000 C CNN
F 2 "~" H 2150 1650 60  0000 C CNN
F 3 "~" H 2150 1650 60  0000 C CNN
	1    2150 1650
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 54AEB6AC
P 2650 1400
F 0 "R17" V 2730 1400 40  0000 C CNN
F 1 "10k" V 2657 1401 40  0000 C CNN
F 2 "~" V 2580 1400 30  0000 C CNN
F 3 "~" H 2650 1400 30  0000 C CNN
	1    2650 1400
	1    0    0    -1  
$EndComp
$Comp
L C C_S1
U 1 1 54AEB6AD
P 1600 2900
F 0 "C_S1" H 1600 3000 40  0000 L CNN
F 1 "100n" H 1606 2815 40  0000 L CNN
F 2 "~" H 1638 2750 30  0000 C CNN
F 3 "~" H 1600 2900 60  0000 C CNN
	1    1600 2900
	1    0    0    -1  
$EndComp
Text HLabel 4950 1850 2    60   Output ~ 0
40kHz PWM
Text HLabel 4900 3250 2    60   Input ~ 0
Signal
Text GLabel 4950 2750 2    60   BiDi ~ 0
SDA
Text GLabel 4950 2850 2    60   BiDi ~ 0
SCL
Text GLabel 2250 1850 0    60   Input ~ 0
Reset
Text GLabel 4950 1950 2    60   Input ~ 0
MOSI
Text GLabel 4950 2050 2    60   Output ~ 0
MISO
Text GLabel 4950 2150 2    60   Input ~ 0
SCK
$Comp
L LED D2
U 1 1 54AED7AA
P 5600 2750
F 0 "D2" H 5600 2850 50  0000 C CNN
F 1 "Gelb (2,1V)" H 5600 2650 50  0000 C CNN
F 2 "~" H 5600 2750 60  0000 C CNN
F 3 "~" H 5600 2750 60  0000 C CNN
	1    5600 2750
	0    -1   1    0   
$EndComp
$Comp
L LED D1
U 1 1 54AED7EA
P 5350 2750
F 0 "D1" H 5350 2850 50  0000 C CNN
F 1 "Grün (2,2V)" H 5350 2650 50  0000 C CNN
F 2 "~" H 5350 2750 60  0000 C CNN
F 3 "~" H 5350 2750 60  0000 C CNN
	1    5350 2750
	0    -1   1    0   
$EndComp
$Comp
L LED D3
U 1 1 54AED7F9
P 5850 2750
F 0 "D3" H 5850 2850 50  0000 C CNN
F 1 "Rot (2V)" H 5850 2650 50  0000 C CNN
F 2 "~" H 5850 2750 60  0000 C CNN
F 3 "~" H 5850 2750 60  0000 C CNN
	1    5850 2750
	0    -1   1    0   
$EndComp
$Comp
L R R14
U 1 1 54AEDC96
P 4800 2350
F 0 "R14" V 4880 2350 40  0000 C CNN
F 1 "1,5k" V 4807 2351 40  0000 C CNN
F 2 "~" V 4730 2350 30  0000 C CNN
F 3 "~" H 4800 2350 30  0000 C CNN
	1    4800 2350
	0    -1   -1   0   
$EndComp
$Comp
L R R16
U 1 1 54AEDCA5
P 4800 2450
F 0 "R16" V 4880 2450 40  0000 C CNN
F 1 "1,5k" V 4807 2451 40  0000 C CNN
F 2 "~" V 4730 2450 30  0000 C CNN
F 3 "~" H 4800 2450 30  0000 C CNN
	1    4800 2450
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 54AEDCF5
P 5600 2300
F 0 "R15" V 5680 2300 40  0000 C CNN
F 1 "1,5k" V 5607 2301 40  0000 C CNN
F 2 "~" V 5530 2300 30  0000 C CNN
F 3 "~" H 5600 2300 30  0000 C CNN
	1    5600 2300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 54AFC8FE
P 3550 750
F 0 "#PWR05" H 3550 840 20  0001 C CNN
F 1 "+5V" H 3550 840 30  0000 C CNN
F 2 "" H 3550 750 60  0000 C CNN
F 3 "" H 3550 750 60  0000 C CNN
	1    3550 750 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 54AFC90D
P 3550 4900
F 0 "#PWR06" H 3550 4900 30  0001 C CNN
F 1 "GND" H 3550 4830 30  0001 C CNN
F 2 "" H 3550 4900 60  0000 C CNN
F 3 "" H 3550 4900 60  0000 C CNN
	1    3550 4900
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 54B01350
P 4650 1200
F 0 "R18" V 4730 1200 40  0000 C CNN
F 1 "10k" V 4657 1201 40  0000 C CNN
F 2 "~" V 4580 1200 30  0000 C CNN
F 3 "~" H 4650 1200 30  0000 C CNN
	1    4650 1200
	1    0    0    -1  
$EndComp
$Comp
L R R19
U 1 1 54B0136B
P 4850 1200
F 0 "R19" V 4930 1200 40  0000 C CNN
F 1 "10k" V 4857 1201 40  0000 C CNN
F 2 "~" V 4780 1200 30  0000 C CNN
F 3 "~" H 4850 1200 30  0000 C CNN
	1    4850 1200
	1    0    0    -1  
$EndComp
Connection ~ 3550 4650
Wire Wire Line
	1600 4650 3550 4650
Wire Wire Line
	1600 3100 1600 4650
Connection ~ 3550 900 
Wire Wire Line
	1600 900  1600 2700
Wire Wire Line
	1600 900  4850 900 
Connection ~ 3550 4400
Wire Wire Line
	1850 4400 5600 4400
Wire Wire Line
	1850 1650 1850 4400
Connection ~ 3550 1150
Wire Wire Line
	2650 1150 3550 1150
Wire Wire Line
	2450 1650 2650 1650
Wire Wire Line
	3550 4250 3550 4900
Wire Wire Line
	4750 3450 4750 3250
Connection ~ 4750 3250
Wire Wire Line
	2450 1650 2450 1850
Wire Wire Line
	2450 1850 2250 1850
Wire Wire Line
	4550 3250 4900 3250
Wire Wire Line
	4750 3450 4550 3450
Wire Wire Line
	4550 2750 4950 2750
Wire Wire Line
	4950 2850 4550 2850
Wire Wire Line
	4550 1850 4950 1850
Wire Wire Line
	4950 1950 4550 1950
Wire Wire Line
	4550 2050 4950 2050
Wire Wire Line
	4950 2150 4550 2150
Wire Wire Line
	5350 2950 5850 2950
Wire Wire Line
	5600 4400 5600 2950
Connection ~ 5600 2950
Wire Wire Line
	5050 2450 5850 2450
Wire Wire Line
	5850 2450 5850 2550
Wire Wire Line
	5350 2550 5350 2350
Wire Wire Line
	5350 2350 5050 2350
Wire Wire Line
	5600 2050 5600 1700
Wire Wire Line
	5600 1700 4750 1700
Wire Wire Line
	4750 1700 4750 1850
Connection ~ 4750 1850
Wire Wire Line
	3550 750  3550 1350
Connection ~ 4650 2750
Connection ~ 4850 2850
Wire Wire Line
	4850 900  4850 950 
Wire Wire Line
	4650 950  4650 900 
Connection ~ 4650 900 
Wire Wire Line
	4850 1450 4850 2850
Wire Wire Line
	4650 1450 4650 2750
$EndSCHEMATC
