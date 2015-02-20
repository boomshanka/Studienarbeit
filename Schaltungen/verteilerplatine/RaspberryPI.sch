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
Sheet 3 3
Title ""
Date "20 feb 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_13X2 PR1
U 1 1 54E72E73
P 3900 3000
F 0 "PR1" H 3900 3700 60  0000 C CNN
F 1 "CONN_13X2" V 3900 3000 50  0000 C CNN
F 2 "" H 3900 3000 60  0000 C CNN
F 3 "" H 3900 3000 60  0000 C CNN
	1    3900 3000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 54E72E91
P 3500 2400
F 0 "#PWR?" H 3500 2360 30  0001 C CNN
F 1 "+3.3V" H 3500 2510 30  0000 C CNN
F 2 "" H 3500 2400 60  0000 C CNN
F 3 "" H 3500 2400 60  0000 C CNN
	1    3500 2400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 54E72EA5
P 4300 2600
F 0 "#PWR?" H 4300 2600 30  0001 C CNN
F 1 "GND" H 4300 2530 30  0001 C CNN
F 2 "" H 4300 2600 60  0000 C CNN
F 3 "" H 4300 2600 60  0000 C CNN
	1    4300 2600
	0    -1   -1   0   
$EndComp
Text HLabel 3500 2500 0    60   BiDi ~ 0
SDA
Text HLabel 3500 2600 0    60   BiDi ~ 0
SCL
Text HLabel 3500 3300 0    60   Output ~ 0
MOSI
Text HLabel 3500 3400 0    60   Input ~ 0
MISO
Text HLabel 3500 3500 0    60   Output ~ 0
SCK
Text HLabel 4300 3400 2    60   Output ~ 0
Reset
$EndSCHEMATC
