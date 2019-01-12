EESchema Schematic File Version 4
LIBS:board-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Transistor_Array:ULN2803A U5
U 1 1 5BF5848F
P 8650 3550
F 0 "U5" H 8650 4117 50  0000 C CNN
F 1 "ULN2803A" H 8650 4026 50  0000 C CNN
F 2 "" H 8700 2900 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2803a.pdf" H 8750 3350 50  0001 C CNN
	1    8650 3550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_Array:ULN2803A U6
U 1 1 5BF585AB
P 8700 5100
F 0 "U6" H 8700 5667 50  0000 C CNN
F 1 "ULN2803A" H 8700 5576 50  0000 C CNN
F 2 "" H 8750 4450 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2803a.pdf" H 8800 4900 50  0001 C CNN
	1    8700 5100
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM7805_TO220 U3
U 1 1 5BF587E9
P 8000 1050
F 0 "U3" H 8000 1200 50  0000 C CNN
F 1 "LM7805_TO220" H 8000 1291 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8000 1275 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 8000 1000 50  0001 C CNN
	1    8000 1050
	-1   0    0    1   
$EndComp
$Comp
L Interface_UART:ST485EBDR U4
U 1 1 5BF588F9
P 8650 2250
F 0 "U4" H 8650 2828 50  0000 C CNN
F 1 "ST485EBDR" H 8650 2737 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8650 1350 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/st485eb.pdf" H 8650 2300 50  0001 C CNN
	1    8650 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 5BF58CC8
P 10850 1050
F 0 "J5" H 10930 1042 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 10930 951 50  0000 L CNN
F 2 "" H 10850 1050 50  0001 C CNN
F 3 "~" H 10850 1050 50  0001 C CNN
	1    10850 1050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J6
U 1 1 5BF58D2C
P 10850 1450
F 0 "J6" H 10930 1442 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 10930 1351 50  0000 L CNN
F 2 "" H 10850 1450 50  0001 C CNN
F 3 "~" H 10850 1450 50  0001 C CNN
	1    10850 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5BF58DCF
P 800 1050
F 0 "J1" H 720 1267 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 720 1176 50  0000 C CNN
F 2 "" H 800 1050 50  0001 C CNN
F 3 "~" H 800 1050 50  0001 C CNN
	1    800  1050
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5BF58EB9
P 800 1450
F 0 "J2" H 720 1667 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 720 1576 50  0000 C CNN
F 2 "" H 800 1450 50  0001 C CNN
F 3 "~" H 800 1450 50  0001 C CNN
	1    800  1450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10650 1150 10550 1150
Wire Wire Line
	10650 1550 9500 1550
$Comp
L pspice:DIODE D2
U 1 1 5BF5A880
P 8950 1050
F 0 "D2" H 8950 1315 50  0000 C CNN
F 1 "DIODE" H 8950 1224 50  0000 C CNN
F 2 "" H 8950 1050 50  0001 C CNN
F 3 "~" H 8950 1050 50  0001 C CNN
	1    8950 1050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10650 1050 9150 1050
Wire Wire Line
	8750 1050 8550 1050
$Comp
L Device:Crystal Y1
U 1 1 5BF5B8B1
P 4550 3000
F 0 "Y1" V 4504 3131 50  0000 L CNN
F 1 "Crystal 16MHz" V 4595 3131 50  0000 L CNN
F 2 "" H 4550 3000 50  0001 C CNN
F 3 "~" H 4550 3000 50  0001 C CNN
	1    4550 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 2850 5000 2850
Wire Wire Line
	5000 2850 5000 2900
Wire Wire Line
	5000 3150 5000 3100
$Comp
L Device:C C8
U 1 1 5BF5C610
P 4200 2850
F 0 "C8" V 4452 2850 50  0000 C CNN
F 1 "12-22pF" V 4361 2850 50  0000 C CNN
F 2 "" H 4238 2700 50  0001 C CNN
F 3 "~" H 4200 2850 50  0001 C CNN
	1    4200 2850
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C9
U 1 1 5BF5C9A9
P 4200 3150
F 0 "C9" V 4452 3150 50  0000 C CNN
F 1 "12-22pF" V 4361 3150 50  0000 C CNN
F 2 "" H 4238 3000 50  0001 C CNN
F 3 "~" H 4200 3150 50  0001 C CNN
	1    4200 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 3150 4550 3150
Connection ~ 4550 3150
Wire Wire Line
	4550 3150 5000 3150
Wire Wire Line
	4350 2850 4550 2850
Connection ~ 4550 2850
$Comp
L power:GND #PWR030
U 1 1 5BF60418
P 8650 4250
F 0 "#PWR030" H 8650 4000 50  0001 C CNN
F 1 "GND" H 8655 4077 50  0000 C CNN
F 2 "" H 8650 4250 50  0001 C CNN
F 3 "" H 8650 4250 50  0001 C CNN
	1    8650 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5BF60CF6
P 5600 6300
F 0 "#PWR023" H 5600 6050 50  0001 C CNN
F 1 "GND" H 5605 6127 50  0000 C CNN
F 2 "" H 5600 6300 50  0001 C CNN
F 3 "" H 5600 6300 50  0001 C CNN
	1    5600 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6300 5600 6000
$Comp
L power:GND #PWR021
U 1 1 5BF60FBB
P 5500 6300
F 0 "#PWR021" H 5500 6050 50  0001 C CNN
F 1 "GND" H 5505 6127 50  0000 C CNN
F 2 "" H 5500 6300 50  0001 C CNN
F 3 "" H 5500 6300 50  0001 C CNN
	1    5500 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6300 5500 6000
$Comp
L power:GND #PWR031
U 1 1 5BF615C0
P 8700 5800
F 0 "#PWR031" H 8700 5550 50  0001 C CNN
F 1 "GND" H 8705 5627 50  0000 C CNN
F 2 "" H 8700 5800 50  0001 C CNN
F 3 "" H 8700 5800 50  0001 C CNN
	1    8700 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5BF61F8C
P 3850 3150
F 0 "#PWR018" H 3850 2900 50  0001 C CNN
F 1 "GND" H 3855 2977 50  0000 C CNN
F 2 "" H 3850 3150 50  0001 C CNN
F 3 "" H 3850 3150 50  0001 C CNN
	1    3850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3150 4050 3150
Wire Wire Line
	3850 3150 3850 2850
Wire Wire Line
	3850 2850 4050 2850
Connection ~ 3850 3150
$Comp
L Device:C C4
U 1 1 5BF635E2
P 1750 2500
F 0 "C4" H 1865 2546 50  0000 L CNN
F 1 "100nF" H 1865 2455 50  0000 L CNN
F 2 "" H 1788 2350 50  0001 C CNN
F 3 "~" H 1750 2500 50  0001 C CNN
	1    1750 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5BF63BAE
P 1300 2500
F 0 "C3" H 1415 2546 50  0000 L CNN
F 1 "100nF" H 1415 2455 50  0000 L CNN
F 2 "" H 1338 2350 50  0001 C CNN
F 3 "~" H 1300 2500 50  0001 C CNN
	1    1300 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5BF63BFE
P 850 2500
F 0 "C1" H 965 2546 50  0000 L CNN
F 1 "100nF" H 965 2455 50  0000 L CNN
F 2 "" H 888 2350 50  0001 C CNN
F 3 "~" H 850 2500 50  0001 C CNN
	1    850  2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5BF63C48
P 2200 2500
F 0 "C5" H 2315 2546 50  0000 L CNN
F 1 "100nF" H 2315 2455 50  0000 L CNN
F 2 "" H 2238 2350 50  0001 C CNN
F 3 "~" H 2200 2500 50  0001 C CNN
	1    2200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  2350 1300 2350
Wire Wire Line
	1300 2350 1750 2350
Connection ~ 1300 2350
Wire Wire Line
	1750 2350 2200 2350
Connection ~ 1750 2350
Wire Wire Line
	2200 2650 1750 2650
Wire Wire Line
	1750 2650 1300 2650
Connection ~ 1750 2650
Wire Wire Line
	1300 2650 850  2650
Connection ~ 1300 2650
$Comp
L power:GND #PWR010
U 1 1 5BF6519B
P 1750 2650
F 0 "#PWR010" H 1750 2400 50  0001 C CNN
F 1 "GND" H 1755 2477 50  0000 C CNN
F 2 "" H 1750 2650 50  0001 C CNN
F 3 "" H 1750 2650 50  0001 C CNN
	1    1750 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5BF66D67
P 10550 1150
F 0 "#PWR032" H 10550 900 50  0001 C CNN
F 1 "GND" H 10555 977 50  0000 C CNN
F 2 "" H 10550 1150 50  0001 C CNN
F 3 "" H 10550 1150 50  0001 C CNN
	1    10550 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5BF67830
P 8000 750
F 0 "#PWR027" H 8000 500 50  0001 C CNN
F 1 "GND" H 8005 577 50  0000 C CNN
F 2 "" H 8000 750 50  0001 C CNN
F 3 "" H 8000 750 50  0001 C CNN
	1    8000 750 
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5BF68F38
P 1000 1150
F 0 "#PWR03" H 1000 900 50  0001 C CNN
F 1 "GND" V 1005 1022 50  0000 R CNN
F 2 "" H 1000 1150 50  0001 C CNN
F 3 "" H 1000 1150 50  0001 C CNN
	1    1000 1150
	0    -1   1    0   
$EndComp
$Comp
L Connector:USB_B_Micro J4
U 1 1 5BF69699
P 3300 3700
F 0 "J4" H 3355 4167 50  0000 C CNN
F 1 "USB_B_Micro" H 3355 4076 50  0000 C CNN
F 2 "" H 3450 3650 50  0001 C CNN
F 3 "~" H 3450 3650 50  0001 C CNN
	1    3300 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5BF69816
P 4250 3700
F 0 "R4" V 4043 3700 50  0000 C CNN
F 1 "22" V 4134 3700 50  0000 C CNN
F 2 "" V 4180 3700 50  0001 C CNN
F 3 "~" H 4250 3700 50  0001 C CNN
	1    4250 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3700 3900 3700
Wire Wire Line
	4400 3700 5000 3700
$Comp
L Device:R R5
U 1 1 5BF6A9A5
P 4550 3800
F 0 "R5" V 4343 3800 50  0000 C CNN
F 1 "22" V 4434 3800 50  0000 C CNN
F 2 "" V 4480 3800 50  0001 C CNN
F 3 "~" H 4550 3800 50  0001 C CNN
	1    4550 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 3800 4050 3800
Wire Wire Line
	4700 3800 5000 3800
Wire Wire Line
	3750 3500 3600 3500
$Comp
L power:GND #PWR015
U 1 1 5BF6C77A
P 3200 4100
F 0 "#PWR015" H 3200 3850 50  0001 C CNN
F 1 "GND" H 3205 3927 50  0000 C CNN
F 2 "" H 3200 4100 50  0001 C CNN
F 3 "" H 3200 4100 50  0001 C CNN
	1    3200 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5BF6C7AD
P 3300 4100
F 0 "#PWR016" H 3300 3850 50  0001 C CNN
F 1 "GND" H 3305 3927 50  0000 C CNN
F 2 "" H 3300 4100 50  0001 C CNN
F 3 "" H 3300 4100 50  0001 C CNN
	1    3300 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5BF6CBD2
P 8650 2750
F 0 "#PWR029" H 8650 2500 50  0001 C CNN
F 1 "GND" H 8655 2577 50  0000 C CNN
F 2 "" H 8650 2750 50  0001 C CNN
F 3 "" H 8650 2750 50  0001 C CNN
	1    8650 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 1450 9550 2450
Wire Wire Line
	9550 2450 9050 2450
Connection ~ 9550 1450
Wire Wire Line
	9550 1450 10650 1450
Wire Wire Line
	3750 2250 5500 2250
Wire Wire Line
	3750 2250 3750 3500
Wire Wire Line
	5500 2250 5500 2400
$Comp
L Connector:AVR-ISP-6 J3
U 1 1 5BF740EB
P 1250 5000
F 0 "J3" H 970 5096 50  0000 R CNN
F 1 "AVR-ISP-6" H 970 5005 50  0000 R CNN
F 2 "" V 1000 5050 50  0001 C CNN
F 3 " ~" H -25 4450 50  0001 C CNN
	1    1250 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1250 4850 1250 4900
$Comp
L power:GND #PWR06
U 1 1 5BF76A37
P 1350 5400
F 0 "#PWR06" H 1350 5150 50  0001 C CNN
F 1 "GND" H 1355 5227 50  0000 C CNN
F 2 "" H 1350 5400 50  0001 C CNN
F 3 "" H 1350 5400 50  0001 C CNN
	1    1350 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3400 7050 3400
Wire Wire Line
	7050 3400 7050 3250
Wire Wire Line
	7050 3250 8200 3250
Wire Wire Line
	8200 3250 8200 2450
Wire Wire Line
	8200 2450 8250 2450
Wire Wire Line
	6200 3100 8050 3100
Wire Wire Line
	8050 3100 8050 2150
Wire Wire Line
	8050 2150 8250 2150
$Comp
L Amplifier_Operational:LMV358 U1
U 2 1 5C1917F0
P 1550 6500
F 0 "U1" H 1550 6867 50  0000 C CNN
F 1 "LMV358" H 1550 6776 50  0000 C CNN
F 2 "" H 1550 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmv324.pdf" H 1550 6500 50  0001 C CNN
	2    1550 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C19190A
P 650 6250
F 0 "R1" H 720 6296 50  0000 L CNN
F 1 "10K" H 720 6205 50  0000 L CNN
F 2 "" V 580 6250 50  0001 C CNN
F 3 "~" H 650 6250 50  0001 C CNN
	1    650  6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C191F74
P 650 6650
F 0 "R2" H 720 6696 50  0000 L CNN
F 1 "10K" H 720 6605 50  0000 L CNN
F 2 "" V 580 6650 50  0001 C CNN
F 3 "~" H 650 6650 50  0001 C CNN
	1    650  6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  6500 650  6400
Wire Wire Line
	650  6400 950  6400
Connection ~ 650  6400
$Comp
L Device:C C2
U 1 1 5C19B675
P 950 6650
F 0 "C2" H 1065 6696 50  0000 L CNN
F 1 "100n" H 1065 6605 50  0000 L CNN
F 2 "" H 988 6500 50  0001 C CNN
F 3 "~" H 950 6650 50  0001 C CNN
	1    950  6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  6500 950  6400
Connection ~ 950  6400
Wire Wire Line
	950  6400 1250 6400
Wire Wire Line
	650  6800 950  6800
Wire Wire Line
	1500 1050 1000 1050
$Comp
L power:+5V #PWR04
U 1 1 5C1D5277
P 1250 7000
F 0 "#PWR04" H 1250 6850 50  0001 C CNN
F 1 "+5V" H 1265 7173 50  0000 C CNN
F 2 "" H 1250 7000 50  0001 C CNN
F 3 "" H 1250 7000 50  0001 C CNN
	1    1250 7000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1250 6600 1250 7000
Text Notes 850  5950 0    50   ~ 0
+5V AUTOSELECTOR\nUSB power on if Vin < 10v
$Comp
L power:+12V #PWR028
U 1 1 5C1DBB5F
P 8550 1050
F 0 "#PWR028" H 8550 900 50  0001 C CNN
F 1 "+12V" H 8565 1223 50  0000 C CNN
F 2 "" H 8550 1050 50  0001 C CNN
F 3 "" H 8550 1050 50  0001 C CNN
	1    8550 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR07
U 1 1 5C1E1209
P 1500 1050
F 0 "#PWR07" H 1500 900 50  0001 C CNN
F 1 "+12V" H 1515 1223 50  0000 C CNN
F 2 "" H 1500 1050 50  0001 C CNN
F 3 "" H 1500 1050 50  0001 C CNN
	1    1500 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR01
U 1 1 5C1E67F9
P 650 6100
F 0 "#PWR01" H 650 5950 50  0001 C CNN
F 1 "+12V" H 665 6273 50  0000 C CNN
F 2 "" H 650 6100 50  0001 C CNN
F 3 "" H 650 6100 50  0001 C CNN
	1    650  6100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR026
U 1 1 5C1E6D8A
P 7450 1050
F 0 "#PWR026" H 7450 900 50  0001 C CNN
F 1 "+5V" H 7465 1223 50  0000 C CNN
F 2 "" H 7450 1050 50  0001 C CNN
F 3 "" H 7450 1050 50  0001 C CNN
	1    7450 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5C1F1240
P 1750 2350
F 0 "#PWR09" H 1750 2200 50  0001 C CNN
F 1 "+5V" H 1765 2523 50  0000 C CNN
F 2 "" H 1750 2350 50  0001 C CNN
F 3 "" H 1750 2350 50  0001 C CNN
	1    1750 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 5C20000A
P 5600 2100
F 0 "#PWR022" H 5600 1950 50  0001 C CNN
F 1 "+5V" H 5615 2273 50  0000 C CNN
F 2 "" H 5600 2100 50  0001 C CNN
F 3 "" H 5600 2100 50  0001 C CNN
	1    5600 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 1050 7700 1050
Wire Wire Line
	5600 2100 5600 2400
$Comp
L power:+5V #PWR05
U 1 1 5C2141AC
P 1350 4500
F 0 "#PWR05" H 1350 4350 50  0001 C CNN
F 1 "+5V" H 1365 4673 50  0000 C CNN
F 2 "" H 1350 4500 50  0001 C CNN
F 3 "" H 1350 4500 50  0001 C CNN
	1    1350 4500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF7404 Q1
U 1 1 5C214B90
P 2150 6800
F 0 "Q1" V 2400 6800 50  0000 C CNN
F 1 "IRF7404" V 2491 6800 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2350 6725 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irf7404.pdf?fileId=5546d462533600a4015355fa2b5b1b9e" V 2150 6800 50  0001 L CNN
	1    2150 6800
	0    -1   1    0   
$EndComp
Wire Wire Line
	1850 6500 2150 6500
Wire Wire Line
	2150 6500 2150 6600
$Comp
L power:VBUS #PWR011
U 1 1 5C21F069
P 1800 6900
F 0 "#PWR011" H 1800 6750 50  0001 C CNN
F 1 "VBUS" H 1815 7073 50  0000 C CNN
F 2 "" H 1800 6900 50  0001 C CNN
F 3 "" H 1800 6900 50  0001 C CNN
	1    1800 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 6900 1950 6900
$Comp
L power:+5V #PWR012
U 1 1 5C224495
P 2550 6900
F 0 "#PWR012" H 2550 6750 50  0001 C CNN
F 1 "+5V" H 2565 7073 50  0000 C CNN
F 2 "" H 2550 6900 50  0001 C CNN
F 3 "" H 2550 6900 50  0001 C CNN
	1    2550 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6900 2550 6900
$Comp
L Device:C C6
U 1 1 5C234371
P 2550 7050
F 0 "C6" H 2665 7096 50  0000 L CNN
F 1 "1u" H 2665 7005 50  0000 L CNN
F 2 "" H 2588 6900 50  0001 C CNN
F 3 "~" H 2550 7050 50  0001 C CNN
	1    2550 7050
	1    0    0    -1  
$EndComp
Connection ~ 2550 6900
$Comp
L power:GND #PWR013
U 1 1 5C234405
P 2550 7200
F 0 "#PWR013" H 2550 6950 50  0001 C CNN
F 1 "GND" H 2555 7027 50  0000 C CNN
F 2 "" H 2550 7200 50  0001 C CNN
F 3 "" H 2550 7200 50  0001 C CNN
	1    2550 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:Polyfuse F3
U 1 1 5C2348B9
P 4600 3500
F 0 "F3" V 4375 3500 50  0000 C CNN
F 1 "MSMF050 500mA" V 4466 3500 50  0000 C CNN
F 2 "" H 4650 3300 50  0001 L CNN
F 3 "~" H 4600 3500 50  0001 C CNN
	1    4600 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 3500 5000 3500
Wire Wire Line
	4450 3500 3750 3500
Connection ~ 3750 3500
NoConn ~ 3600 3900
NoConn ~ 5000 4000
$Comp
L Device:Polyfuse F2
U 1 1 5C261633
P 4050 3950
F 0 "F2" H 4138 3996 50  0000 L CNN
F 1 "CG0603MLC-05E" H 4138 3905 50  0000 L CNN
F 2 "" H 4100 3750 50  0001 L CNN
F 3 "~" H 4050 3950 50  0001 C CNN
	1    4050 3950
	1    0    0    -1  
$EndComp
Connection ~ 4050 3800
Wire Wire Line
	4050 3800 3600 3800
$Comp
L Device:Polyfuse F1
U 1 1 5C261734
P 3650 4300
F 0 "F1" H 3738 4346 50  0000 L CNN
F 1 "CG0603MLC-05E" H 3738 4255 50  0000 L CNN
F 2 "" H 3700 4100 50  0001 L CNN
F 3 "~" H 3650 4300 50  0001 C CNN
	1    3650 4300
	1    0    0    -1  
$EndComp
Connection ~ 3900 3700
Wire Wire Line
	3900 3700 3600 3700
$Comp
L power:GND #PWR017
U 1 1 5C26D1FE
P 3650 4450
F 0 "#PWR017" H 3650 4200 50  0001 C CNN
F 1 "GND" H 3655 4277 50  0000 C CNN
F 2 "" H 3650 4450 50  0001 C CNN
F 3 "" H 3650 4450 50  0001 C CNN
	1    3650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4150 3900 4150
Wire Wire Line
	3900 3700 3900 4150
$Comp
L power:GND #PWR019
U 1 1 5C2733A4
P 4050 4100
F 0 "#PWR019" H 4050 3850 50  0001 C CNN
F 1 "GND" H 4055 3927 50  0000 C CNN
F 2 "" H 4050 4100 50  0001 C CNN
F 3 "" H 4050 4100 50  0001 C CNN
	1    4050 4100
	1    0    0    -1  
$EndComp
Text Notes 10700 850  0    50   ~ 0
12VDC
Text Notes 10700 1800 0    50   ~ 0
RS485 BUS
$Comp
L Device:C C7
U 1 1 5C2E6FC3
P 2750 3750
F 0 "C7" H 2865 3796 50  0000 L CNN
F 1 "100nF" H 2865 3705 50  0000 L CNN
F 2 "" H 2788 3600 50  0001 C CNN
F 3 "~" H 2750 3750 50  0001 C CNN
	1    2750 3750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5C2F3EBD
P 2750 3900
F 0 "#PWR014" H 2750 3650 50  0001 C CNN
F 1 "GND" H 2755 3727 50  0000 C CNN
F 2 "" H 2750 3900 50  0001 C CNN
F 3 "" H 2750 3900 50  0001 C CNN
	1    2750 3900
	1    0    0    -1  
$EndComp
Text Label 6400 2900 0    50   ~ 0
MOSI
Text Label 6400 2800 0    50   ~ 0
SCK
Wire Wire Line
	6400 2800 6200 2800
Wire Wire Line
	6200 2900 6400 2900
Text Label 650  4900 0    50   ~ 0
MOSI
Text Label 650  5000 0    50   ~ 0
SCK
Wire Wire Line
	650  4900 850  4900
Wire Wire Line
	650  5000 850  5000
Text Label 6400 3000 0    50   ~ 0
MISO
Wire Wire Line
	6400 3000 6200 3000
Connection ~ 8550 1050
Wire Wire Line
	8550 1050 8300 1050
Text Label 650  4800 0    50   ~ 0
MISO
Wire Wire Line
	650  4800 850  4800
Text Label 2350 3850 2    50   ~ 0
RESET
$Comp
L Device:R R3
U 1 1 5C434FE9
P 2000 3600
F 0 "R3" V 1793 3600 50  0000 C CNN
F 1 "10k" V 1884 3600 50  0000 C CNN
F 2 "" V 1930 3600 50  0001 C CNN
F 3 "~" H 2000 3600 50  0001 C CNN
	1    2000 3600
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D1
U 1 1 5C43B4D5
P 1400 3650
F 0 "D1" H 1400 3915 50  0000 C CNN
F 1 "DIODE" H 1400 3824 50  0000 C CNN
F 2 "" H 1400 3650 50  0001 C CNN
F 3 "~" H 1400 3650 50  0001 C CNN
	1    1400 3650
	0    1    -1   0   
$EndComp
Wire Wire Line
	1400 3450 1650 3450
Wire Wire Line
	1400 3850 2000 3850
Wire Wire Line
	2000 3850 2000 3750
Connection ~ 2000 3850
$Comp
L power:+5V #PWR08
U 1 1 5C4CA57A
P 1650 3450
F 0 "#PWR08" H 1650 3300 50  0001 C CNN
F 1 "+5V" H 1665 3623 50  0000 C CNN
F 2 "" H 1650 3450 50  0001 C CNN
F 3 "" H 1650 3450 50  0001 C CNN
	1    1650 3450
	1    0    0    -1  
$EndComp
Connection ~ 1650 3450
Wire Wire Line
	2750 3450 2750 3600
Text Notes 1250 3200 0    50   ~ 0
Power on reset + reset switch
Text Notes 850  2100 0    50   ~ 0
Decoupling capacitors
Wire Wire Line
	2000 3850 2350 3850
Wire Wire Line
	1650 3450 2000 3450
Connection ~ 2000 3450
Wire Wire Line
	2000 3450 2750 3450
$Comp
L MCU_Microchip_ATmega:ATmega32U4-AU U2
U 1 1 5BF5B41A
P 5600 4200
F 0 "U2" H 5600 2314 50  0000 C CNN
F 1 "ATmega32U4-AU" H 5600 2223 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 5600 4200 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7766-8-bit-AVR-ATmega16U4-32U4_Datasheet.pdf" H 5600 4200 50  0001 C CNN
	1    5600 4200
	1    0    0    -1  
$EndComp
Text Label 650  5100 0    50   ~ 0
RESET
Wire Wire Line
	650  5100 850  5100
Text Label 4650 2700 0    50   ~ 0
RESET
Wire Wire Line
	4650 2700 5000 2700
Text Notes 900  4250 0    50   ~ 0
6 pin ICSP Connector
$Comp
L Connector_Generic:Conn_01x02 J21
U 1 1 5C56C13E
P 10950 6000
F 0 "J21" H 11030 5992 50  0000 L CNN
F 1 "Conn_01x02" H 11030 5901 50  0000 L CNN
F 2 "" H 10950 6000 50  0001 C CNN
F 3 "~" H 10950 6000 50  0001 C CNN
	1    10950 6000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J20
U 1 1 5C56C244
P 10950 5750
F 0 "J20" H 11030 5742 50  0000 L CNN
F 1 "Conn_01x02" H 11030 5651 50  0000 L CNN
F 2 "" H 10950 5750 50  0001 C CNN
F 3 "~" H 10950 5750 50  0001 C CNN
	1    10950 5750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J19
U 1 1 5C56C2A0
P 10950 5500
F 0 "J19" H 11030 5492 50  0000 L CNN
F 1 "Conn_01x02" H 11030 5401 50  0000 L CNN
F 2 "" H 10950 5500 50  0001 C CNN
F 3 "~" H 10950 5500 50  0001 C CNN
	1    10950 5500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J18
U 1 1 5C56C2FE
P 10950 5250
F 0 "J18" H 11030 5242 50  0000 L CNN
F 1 "Conn_01x02" H 11030 5151 50  0000 L CNN
F 2 "" H 10950 5250 50  0001 C CNN
F 3 "~" H 10950 5250 50  0001 C CNN
	1    10950 5250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J17
U 1 1 5C56C368
P 10950 5000
F 0 "J17" H 11030 4992 50  0000 L CNN
F 1 "Conn_01x02" H 11030 4901 50  0000 L CNN
F 2 "" H 10950 5000 50  0001 C CNN
F 3 "~" H 10950 5000 50  0001 C CNN
	1    10950 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J16
U 1 1 5C56C3C6
P 10950 4750
F 0 "J16" H 11030 4742 50  0000 L CNN
F 1 "Conn_01x02" H 11030 4651 50  0000 L CNN
F 2 "" H 10950 4750 50  0001 C CNN
F 3 "~" H 10950 4750 50  0001 C CNN
	1    10950 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J15
U 1 1 5C56C42A
P 10950 4500
F 0 "J15" H 11030 4492 50  0000 L CNN
F 1 "Conn_01x02" H 11030 4401 50  0000 L CNN
F 2 "" H 10950 4500 50  0001 C CNN
F 3 "~" H 10950 4500 50  0001 C CNN
	1    10950 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J14
U 1 1 5C56C494
P 10950 4250
F 0 "J14" H 11030 4242 50  0000 L CNN
F 1 "Conn_01x02" H 11030 4151 50  0000 L CNN
F 2 "" H 10950 4250 50  0001 C CNN
F 3 "~" H 10950 4250 50  0001 C CNN
	1    10950 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J13
U 1 1 5C56C7DD
P 10950 4000
F 0 "J13" H 11030 3992 50  0000 L CNN
F 1 "Conn_01x02" H 11030 3901 50  0000 L CNN
F 2 "" H 10950 4000 50  0001 C CNN
F 3 "~" H 10950 4000 50  0001 C CNN
	1    10950 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J12
U 1 1 5C56C7E4
P 10950 3750
F 0 "J12" H 11030 3742 50  0000 L CNN
F 1 "Conn_01x02" H 11030 3651 50  0000 L CNN
F 2 "" H 10950 3750 50  0001 C CNN
F 3 "~" H 10950 3750 50  0001 C CNN
	1    10950 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J11
U 1 1 5C56C7EB
P 10950 3500
F 0 "J11" H 11030 3492 50  0000 L CNN
F 1 "Conn_01x02" H 11030 3401 50  0000 L CNN
F 2 "" H 10950 3500 50  0001 C CNN
F 3 "~" H 10950 3500 50  0001 C CNN
	1    10950 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J10
U 1 1 5C56C7F2
P 10950 3250
F 0 "J10" H 11030 3242 50  0000 L CNN
F 1 "Conn_01x02" H 11030 3151 50  0000 L CNN
F 2 "" H 10950 3250 50  0001 C CNN
F 3 "~" H 10950 3250 50  0001 C CNN
	1    10950 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 5C56C7F9
P 10950 3000
F 0 "J9" H 11030 2992 50  0000 L CNN
F 1 "Conn_01x02" H 11030 2901 50  0000 L CNN
F 2 "" H 10950 3000 50  0001 C CNN
F 3 "~" H 10950 3000 50  0001 C CNN
	1    10950 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 5C56C800
P 10950 2750
F 0 "J8" H 11030 2742 50  0000 L CNN
F 1 "Conn_01x02" H 11030 2651 50  0000 L CNN
F 2 "" H 10950 2750 50  0001 C CNN
F 3 "~" H 10950 2750 50  0001 C CNN
	1    10950 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5C56C807
P 10950 2500
F 0 "J7" H 11030 2492 50  0000 L CNN
F 1 "Conn_01x02" H 11030 2401 50  0000 L CNN
F 2 "" H 10950 2500 50  0001 C CNN
F 3 "~" H 10950 2500 50  0001 C CNN
	1    10950 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J22
U 1 1 5C56C80E
P 10950 6250
F 0 "J22" H 11030 6242 50  0000 L CNN
F 1 "Conn_01x02" H 11030 6151 50  0000 L CNN
F 2 "" H 10950 6250 50  0001 C CNN
F 3 "~" H 10950 6250 50  0001 C CNN
	1    10950 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 3450 9900 3450
Wire Wire Line
	9900 3450 9900 2750
Wire Wire Line
	9900 2750 10750 2750
Wire Wire Line
	9050 3350 9850 3350
Wire Wire Line
	9850 3350 9850 2500
Wire Wire Line
	9850 2500 10750 2500
Wire Wire Line
	9050 3550 9950 3550
Wire Wire Line
	9950 3550 9950 3000
Wire Wire Line
	9950 3000 10750 3000
Wire Wire Line
	9050 3650 10000 3650
Wire Wire Line
	10000 3650 10000 3250
Wire Wire Line
	10000 3250 10750 3250
Wire Wire Line
	9050 3750 10050 3750
Wire Wire Line
	10050 3750 10050 3500
Wire Wire Line
	10050 3500 10750 3500
Wire Wire Line
	9050 3850 10100 3850
Wire Wire Line
	10100 3850 10100 3750
Wire Wire Line
	10100 3750 10750 3750
Wire Wire Line
	9050 3950 10750 3950
Wire Wire Line
	10750 3950 10750 4000
Wire Wire Line
	9050 4050 10550 4050
Wire Wire Line
	10550 4050 10550 4250
Wire Wire Line
	10550 4250 10750 4250
Wire Wire Line
	9050 3250 9350 3250
Wire Wire Line
	9350 3250 9350 3100
Wire Wire Line
	9350 2600 10750 2600
Wire Wire Line
	10750 2850 9350 2850
Connection ~ 9350 2850
Wire Wire Line
	9350 2850 9350 2600
Wire Wire Line
	10750 3100 9350 3100
Connection ~ 9350 3100
Wire Wire Line
	9350 3100 9350 2850
Wire Wire Line
	9350 3250 9350 3400
Wire Wire Line
	9350 4350 10750 4350
Connection ~ 9350 3250
Wire Wire Line
	10750 3350 10100 3350
Wire Wire Line
	10100 3350 10100 3400
Wire Wire Line
	10100 3400 9350 3400
Connection ~ 9350 3400
Wire Wire Line
	9350 3400 9350 3600
Wire Wire Line
	10750 3600 9350 3600
Connection ~ 9350 3600
Wire Wire Line
	9350 3600 9350 3800
Wire Wire Line
	10750 3850 10150 3850
Wire Wire Line
	10150 3850 10150 3800
Wire Wire Line
	10150 3800 9350 3800
Connection ~ 9350 3800
Wire Wire Line
	9350 3800 9350 4000
Wire Wire Line
	10750 4100 10650 4100
Wire Wire Line
	10650 4100 10650 4000
Wire Wire Line
	10650 4000 9350 4000
Connection ~ 9350 4000
Wire Wire Line
	9350 4000 9350 4350
Wire Wire Line
	9100 4800 9100 4600
Wire Wire Line
	9100 4600 9350 4600
Wire Wire Line
	10750 4850 9350 4850
Wire Wire Line
	9350 4850 9350 4600
Connection ~ 9350 4600
Wire Wire Line
	9350 4600 10750 4600
Wire Wire Line
	9100 4900 9850 4900
Wire Wire Line
	9850 4900 9850 4500
Wire Wire Line
	9850 4500 10750 4500
Wire Wire Line
	9100 5000 9900 5000
Wire Wire Line
	9900 5000 9900 4750
Wire Wire Line
	9900 4750 10750 4750
Wire Wire Line
	9100 5100 9950 5100
Wire Wire Line
	9950 5100 9950 5000
Wire Wire Line
	9950 5000 10750 5000
Wire Wire Line
	9100 5200 10000 5200
Wire Wire Line
	10000 5200 10000 5250
Wire Wire Line
	10000 5250 10750 5250
Wire Wire Line
	9100 5300 9950 5300
Wire Wire Line
	9950 5300 9950 5500
Wire Wire Line
	9950 5500 10750 5500
Wire Wire Line
	9100 5400 9900 5400
Wire Wire Line
	9900 5400 9900 5750
Wire Wire Line
	9900 5750 10750 5750
Wire Wire Line
	9100 5500 9850 5500
Wire Wire Line
	9850 5500 9850 6000
Wire Wire Line
	9850 6000 10750 6000
Wire Wire Line
	9100 5600 9800 5600
Wire Wire Line
	9800 5600 9800 6250
Wire Wire Line
	9800 6250 10750 6250
Wire Wire Line
	9350 4850 9350 5150
Wire Wire Line
	9350 6350 10750 6350
Connection ~ 9350 4850
Wire Wire Line
	10750 6100 9350 6100
Connection ~ 9350 6100
Wire Wire Line
	9350 6100 9350 6350
Wire Wire Line
	10750 5850 9350 5850
Connection ~ 9350 5850
Wire Wire Line
	9350 5850 9350 6100
Wire Wire Line
	10750 5600 10100 5600
Wire Wire Line
	10100 5600 10100 5700
Wire Wire Line
	10100 5700 9350 5700
Connection ~ 9350 5700
Wire Wire Line
	9350 5700 9350 5850
Wire Wire Line
	10750 5350 9350 5350
Connection ~ 9350 5350
Wire Wire Line
	9350 5350 9350 5700
Wire Wire Line
	10750 5100 10050 5100
Wire Wire Line
	10050 5100 10050 5150
Wire Wire Line
	10050 5150 9350 5150
Connection ~ 9350 5150
Wire Wire Line
	9350 5150 9350 5350
$Comp
L Device:R R6
U 1 1 5C7CA226
P 6350 4800
F 0 "R6" V 6143 4800 50  0000 C CNN
F 1 "10k" V 6234 4800 50  0000 C CNN
F 2 "" V 6280 4800 50  0001 C CNN
F 3 "~" H 6350 4800 50  0001 C CNN
	1    6350 4800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5C7CA322
P 6750 4800
F 0 "#PWR025" H 6750 4550 50  0001 C CNN
F 1 "GND" H 6755 4627 50  0000 C CNN
F 2 "" H 6750 4800 50  0001 C CNN
F 3 "" H 6750 4800 50  0001 C CNN
	1    6750 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4800 6750 4800
NoConn ~ 6200 2700
NoConn ~ 6200 4900
Wire Wire Line
	1000 1450 9550 1450
Wire Wire Line
	9050 2150 9500 2150
Wire Wire Line
	9500 2150 9500 1550
Connection ~ 9500 1550
Wire Wire Line
	9500 1550 1000 1550
$Comp
L power:+5V #PWR024
U 1 1 5C1C840B
P 5700 2100
F 0 "#PWR024" H 5700 1950 50  0001 C CNN
F 1 "+5V" H 5715 2273 50  0000 C CNN
F 2 "" H 5700 2100 50  0001 C CNN
F 3 "" H 5700 2100 50  0001 C CNN
	1    5700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2100 5700 2400
$Comp
L power:+5V #PWR020
U 1 1 5C1D6D5C
P 4900 3300
F 0 "#PWR020" H 4900 3150 50  0001 C CNN
F 1 "+5V" H 4915 3473 50  0000 C CNN
F 2 "" H 4900 3300 50  0001 C CNN
F 3 "" H 4900 3300 50  0001 C CNN
	1    4900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3300 5000 3300
Wire Wire Line
	8250 2350 8150 2350
Wire Wire Line
	8150 2350 8150 2250
Wire Wire Line
	8150 2250 8250 2250
Wire Wire Line
	6200 5600 8300 5600
Wire Wire Line
	6200 5500 8300 5500
Wire Wire Line
	6200 5400 8300 5400
Wire Wire Line
	6200 5300 8300 5300
Wire Wire Line
	6200 5200 8300 5200
Wire Wire Line
	6200 5100 8300 5100
Wire Wire Line
	6200 4600 7600 4600
Wire Wire Line
	7600 4600 7600 5000
Wire Wire Line
	7600 5000 8300 5000
Wire Wire Line
	6200 4500 7700 4500
Wire Wire Line
	7700 4500 7700 4900
Wire Wire Line
	7700 4900 8300 4900
Wire Wire Line
	6200 4400 8250 4400
Wire Wire Line
	8250 4400 8250 4050
Wire Wire Line
	6200 4300 8200 4300
Wire Wire Line
	8200 4300 8200 3950
Wire Wire Line
	8200 3950 8250 3950
Wire Wire Line
	6200 4200 8150 4200
Wire Wire Line
	8150 4200 8150 3850
Wire Wire Line
	8150 3850 8250 3850
Wire Wire Line
	6200 4100 8100 4100
Wire Wire Line
	8100 4100 8100 3750
Wire Wire Line
	8100 3750 8250 3750
Wire Wire Line
	6200 4000 8050 4000
Wire Wire Line
	8050 4000 8050 3650
Wire Wire Line
	8050 3650 8250 3650
Wire Wire Line
	6200 3900 8000 3900
Wire Wire Line
	8000 3900 8000 3550
Wire Wire Line
	8000 3550 8250 3550
Wire Wire Line
	6200 3700 7950 3700
Wire Wire Line
	7950 3450 8250 3450
Wire Wire Line
	7950 3450 7950 3700
Wire Wire Line
	6200 3600 7900 3600
Wire Wire Line
	7900 3600 7900 3350
Wire Wire Line
	7900 3350 8250 3350
$Comp
L Switch:SW_Push_Open_Dual SW1
U 1 1 5C421EF1
P 900 3650
F 0 "SW1" H 900 3860 50  0000 C CNN
F 1 "SW_Push_Open_Dual" H 900 3769 50  0000 C CNN
F 2 "" H 900 3850 50  0001 C CNN
F 3 "" H 900 3850 50  0001 C CNN
	1    900  3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3650 1100 3850
Wire Wire Line
	1100 3850 1400 3850
Connection ~ 1100 3850
Connection ~ 1400 3850
Wire Wire Line
	700  3850 700  3650
$Comp
L power:GND #PWR02
U 1 1 5C449E07
P 700 3850
F 0 "#PWR02" H 700 3600 50  0001 C CNN
F 1 "GND" H 705 3677 50  0000 C CNN
F 2 "" H 700 3850 50  0001 C CNN
F 3 "" H 700 3850 50  0001 C CNN
	1    700  3850
	1    0    0    -1  
$EndComp
Connection ~ 700  3850
$EndSCHEMATC
