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
Sheet 1 4
Title ""
Date "9 jan 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 6300 2350 950  600 
U 54AEB44F
F0 "Mikrocontroller" 50
F1 "Mikrocontroller.sch" 50
F2 "40kHz PWM" O L 6300 2450 60 
F3 "Signal" I L 6300 2550 60 
$EndSheet
$Sheet
S 6300 1500 950  600 
U 54AEB4A6
F0 "Sender" 50
F1 "Sender.sch" 50
F2 "40kHz PWM" I L 6300 1600 60 
$EndSheet
$Comp
L DIL10 P
U 1 1 54AEEBBD
P 4400 2250
F 0 "P" H 4400 2550 60  0000 C CNN
F 1 "DIL10" V 4400 2250 50  0000 C CNN
F 2 "~" H 4400 2250 60  0000 C CNN
F 3 "~" H 4400 2250 60  0000 C CNN
	1    4400 2250
	1    0    0    -1  
$EndComp
$Sheet
S 6300 3200 950  550 
U 54AEEF81
F0 "Empfänger" 50
F1 "Empfänger.sch" 50
F2 "Signal" O L 6300 3300 60 
$EndSheet
Wire Wire Line
	6300 3300 6100 3300
Wire Wire Line
	6100 3300 6100 2550
Wire Wire Line
	6100 2550 6300 2550
Wire Wire Line
	6300 1600 6100 1600
Wire Wire Line
	6100 1600 6100 2450
Wire Wire Line
	6100 2450 6300 2450
Text GLabel 4050 2050 0    60   Output ~ 0
MISO
Text GLabel 4050 2150 0    60   Input ~ 0
SCK
Text GLabel 4050 2250 0    60   Input ~ 0
Reset
Text GLabel 4750 2150 2    60   Input ~ 0
MOSI
$Comp
L GND #PWR?
U 1 1 54AFC83A
P 4750 2250
F 0 "#PWR?" H 4750 2250 30  0001 C CNN
F 1 "GND" H 4750 2180 30  0001 C CNN
F 2 "" H 4750 2250 60  0000 C CNN
F 3 "" H 4750 2250 60  0000 C CNN
	1    4750 2250
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 54AFC849
P 4750 2050
F 0 "#PWR?" H 4750 2140 20  0001 C CNN
F 1 "+5V" H 4750 2140 30  0000 C CNN
F 2 "" H 4750 2050 60  0000 C CNN
F 3 "" H 4750 2050 60  0000 C CNN
	1    4750 2050
	0    1    1    0   
$EndComp
Text GLabel 4050 2350 0    60   BiDi ~ 0
SDA
Text GLabel 4050 2450 0    60   BiDi ~ 0
SCL
$Comp
L +12V #PWR?
U 1 1 54AFCBCD
P 4750 2350
F 0 "#PWR?" H 4750 2300 20  0001 C CNN
F 1 "+12V" H 4750 2450 30  0000 C CNN
F 2 "" H 4750 2350 60  0000 C CNN
F 3 "" H 4750 2350 60  0000 C CNN
	1    4750 2350
	0    1    1    0   
$EndComp
$Comp
L -12V #PWR?
U 1 1 54AFCBDC
P 4750 2450
F 0 "#PWR?" H 4750 2580 20  0001 C CNN
F 1 "-12V" H 4750 2550 30  0000 C CNN
F 2 "" H 4750 2450 60  0000 C CNN
F 3 "" H 4750 2450 60  0000 C CNN
	1    4750 2450
	0    1    1    0   
$EndComp
$EndSCHEMATC
