EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:device.farm
LIBS:omg-esp-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ESP-12 U3
U 1 1 5777B23A
P 7550 5050
F 0 "U3" H 7550 5987 60  0000 C CNN
F 1 "ESP-12" H 7550 5881 60  0000 C CNN
F 2 "device.farm:ESP-12" H 7550 5050 60  0001 C CNN
F 3 "" H 7550 5050 60  0001 C CNN
	1    7550 5050
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5777B24E
P 6950 5300
F 0 "C3" H 6950 5400 50  0000 L CNN
F 1 "100n" H 6950 5200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6988 5150 50  0001 C CNN
F 3 "" H 6950 5300 50  0000 C CNN
	1    6950 5300
	1    0    0    -1  
$EndComp
Text Label 8100 4800 0    60   ~ 0
GPIO0
Text Label 7000 4400 2    60   ~ 0
RESET
$Comp
L GND #PWR06
U 1 1 5777B25A
P 8100 5100
F 0 "#PWR06" H 8100 4850 50  0001 C CNN
F 1 "GND" H 8105 4927 50  0000 C CNN
F 2 "" H 8100 5100 50  0000 C CNN
F 3 "" H 8100 5100 50  0000 C CNN
	1    8100 5100
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5777B25B
P 9550 4400
F 0 "R4" V 9650 4450 50  0000 C CNN
F 1 "10k" V 9650 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9480 4400 50  0001 C CNN
F 3 "" H 9550 4400 50  0000 C CNN
	1    9550 4400
	0    -1   -1   0   
$EndComp
Text Label 7000 4600 2    60   ~ 0
EN
Text Label 8100 4900 0    60   ~ 0
GPIO2
Text Label 8100 5000 0    60   ~ 0
GPIO15
Text Label 8100 4400 0    60   ~ 0
TX
Text Label 8100 4500 0    60   ~ 0
RX
$Comp
L R R5
U 1 1 5777B25C
P 9550 4600
F 0 "R5" V 9650 4650 50  0000 C CNN
F 1 "10k" V 9650 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9480 4600 50  0001 C CNN
F 3 "" H 9550 4600 50  0000 C CNN
	1    9550 4600
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 5777B25D
P 9550 4800
F 0 "R6" V 9650 4850 50  0000 C CNN
F 1 "10k" V 9650 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9480 4800 50  0001 C CNN
F 3 "" H 9550 4800 50  0000 C CNN
	1    9550 4800
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 5777B25E
P 9550 5000
F 0 "R7" V 9650 5050 50  0000 C CNN
F 1 "10k" V 9650 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9480 5000 50  0001 C CNN
F 3 "" H 9550 5000 50  0000 C CNN
	1    9550 5000
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 5777B25F
P 9550 5500
F 0 "R8" V 9650 5550 50  0000 C CNN
F 1 "10k" V 9650 5400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9480 5500 50  0001 C CNN
F 3 "" H 9550 5500 50  0000 C CNN
	1    9550 5500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 5777B260
P 9700 5500
F 0 "#PWR07" H 9700 5250 50  0001 C CNN
F 1 "GND" H 9705 5327 50  0000 C CNN
F 2 "" H 9700 5500 50  0000 C CNN
F 3 "" H 9700 5500 50  0000 C CNN
	1    9700 5500
	0    -1   -1   0   
$EndComp
Text Label 9350 4400 2    60   ~ 0
GPIO0
Text Label 9350 4600 2    60   ~ 0
GPIO2
Text Label 9350 5500 2    60   ~ 0
GPIO15
Text Label 9350 4800 2    60   ~ 0
EN
Text Label 9350 5000 2    60   ~ 0
RESET
$Comp
L C C4
U 1 1 5777B261
P 9550 5200
F 0 "C4" V 9500 5250 50  0000 L CNN
F 1 "100n" V 9600 5250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9588 5050 50  0001 C CNN
F 3 "" H 9550 5200 50  0000 C CNN
	1    9550 5200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 5777B262
P 9700 5200
F 0 "#PWR08" H 9700 4950 50  0001 C CNN
F 1 "GND" H 9705 5027 50  0000 C CNN
F 2 "" H 9700 5200 50  0000 C CNN
F 3 "" H 9700 5200 50  0000 C CNN
	1    9700 5200
	0    -1   -1   0   
$EndComp
Text HLabel 7000 4500 0    60   BiDi ~ 0
ADC
Text HLabel 7000 4700 0    60   Input ~ 0
GPIO16
Text HLabel 7000 4800 0    60   BiDi ~ 0
GPIO14
Text HLabel 7000 4900 0    60   BiDi ~ 0
GPIO12
Text HLabel 7000 5000 0    60   BiDi ~ 0
GPIO13
Text HLabel 8100 4600 2    60   BiDi ~ 0
GPIO5
$Comp
L GND #PWR09
U 1 1 5778ED26
P 1850 2300
F 0 "#PWR09" H 1850 2050 50  0001 C CNN
F 1 "GND" V 1855 2127 50  0000 C CNN
F 2 "" H 1850 2300 50  0000 C CNN
F 3 "" H 1850 2300 50  0000 C CNN
	1    1850 2300
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG010
U 1 1 5778ED65
P 1850 2300
F 0 "#FLG010" H 1850 2395 50  0001 C CNN
F 1 "PWR_FLAG" V 1850 2650 50  0000 C CNN
F 2 "" H 1850 2300 50  0000 C CNN
F 3 "" H 1850 2300 50  0000 C CNN
	1    1850 2300
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG011
U 1 1 57790FA9
P 1850 2100
F 0 "#FLG011" H 1850 2195 50  0001 C CNN
F 1 "PWR_FLAG" V 1850 2450 50  0000 C CNN
F 2 "" H 1850 2100 50  0000 C CNN
F 3 "" H 1850 2100 50  0000 C CNN
	1    1850 2100
	0    1    1    0   
$EndComp
Text HLabel 8100 4700 2    60   BiDi ~ 0
GPIO4
$Comp
L D_Schottky_x2_KCom_AAK D2
U 1 1 579135F5
P 4050 4350
F 0 "D2" V 4096 4430 50  0000 L CNN
F 1 "BAT54C" V 4005 4430 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4050 4350 50  0001 C CNN
F 3 "" H 4050 4350 50  0000 C CNN
	1    4050 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9750 5000 9700 5000
Wire Wire Line
	9750 4400 9750 5000
Wire Wire Line
	9700 4400 9800 4400
Wire Wire Line
	9750 4600 9700 4600
Connection ~ 9750 4600
Wire Wire Line
	9700 4800 9750 4800
Connection ~ 9750 4800
Connection ~ 9750 4400
Wire Wire Line
	9400 5500 9350 5500
Wire Wire Line
	9400 5000 9350 5000
Wire Wire Line
	9400 4800 9350 4800
Wire Wire Line
	9400 4600 9350 4600
Wire Wire Line
	9400 4400 9350 4400
Wire Wire Line
	9400 5200 9400 5000
Connection ~ 9400 5000
$Comp
L C C2
U 1 1 5A74BDF9
P 6750 5300
F 0 "C2" H 6750 5400 50  0000 L CNN
F 1 "47u" H 6750 5200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6788 5150 50  0001 C CNN
F 3 "" H 6750 5300 50  0000 C CNN
	1    6750 5300
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5A74BEDA
P 6550 5300
F 0 "C1" H 6550 5400 50  0000 L CNN
F 1 "47u" H 6550 5200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6588 5150 50  0001 C CNN
F 3 "" H 6550 5300 50  0000 C CNN
	1    6550 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5A74BFA4
P 6750 5550
F 0 "#PWR012" H 6750 5300 50  0001 C CNN
F 1 "GND" H 6755 5377 50  0000 C CNN
F 2 "" H 6750 5550 50  0000 C CNN
F 3 "" H 6750 5550 50  0000 C CNN
	1    6750 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5100 7000 5100
Wire Wire Line
	6750 5150 6750 5100
Connection ~ 6750 5100
Wire Wire Line
	6550 5150 6550 5100
Connection ~ 6550 5100
Wire Wire Line
	6550 5450 6950 5450
$Comp
L ESP-PROG X2
U 1 1 5A97E79C
P 7000 2850
F 0 "X2" H 7000 3300 60  0000 C CNN
F 1 "ESP-PROG" H 7000 2400 60  0000 C CNN
F 2 "device.farm:Micro-Match-FOB-6" H 7250 2900 60  0001 C CNN
F 3 "" H 7250 2900 60  0001 C CNN
	1    7000 2850
	1    0    0    -1  
$EndComp
Text Label 7450 2700 0    60   ~ 0
RESET
Text Label 7450 2800 0    60   ~ 0
GPIO0
Text Label 7450 2900 0    60   ~ 0
RX
Text Label 7450 3000 0    60   ~ 0
TX
$Comp
L GND #PWR013
U 1 1 5A97EADF
P 7450 3150
F 0 "#PWR013" H 7450 2900 50  0001 C CNN
F 1 "GND" H 7455 2977 50  0000 C CNN
F 2 "" H 7450 3150 50  0000 C CNN
F 3 "" H 7450 3150 50  0000 C CNN
	1    7450 3150
	1    0    0    -1  
$EndComp
Text Label 7450 2550 0    60   ~ 0
3V3-PROG
Wire Wire Line
	6950 5150 6950 5100
Connection ~ 6950 5100
Connection ~ 6750 5450
Wire Wire Line
	6750 5550 6750 5450
Text Label 4050 4050 2    60   ~ 0
3V3-PROG
Wire Wire Line
	4250 4350 4400 4350
Text HLabel 4050 4650 3    60   Input ~ 0
3V3_SYSTEM
Text Label 9800 4400 0    60   ~ 0
3V3_ESP
Text Label 4400 4350 0    60   ~ 0
3V3_ESP
Text Label 6450 5100 2    60   ~ 0
3V3_ESP
Text Label 1850 2100 2    60   ~ 0
3V3_ESP
$EndSCHEMATC