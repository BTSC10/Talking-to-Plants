EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector:Conn_01x08_Female J1
U 1 1 6492D238
P 2000 1175
F 0 "J1" H 2028 1151 50  0000 L CNN
F 1 " " H 2028 1060 50  0000 L CNN
F 2 "" H 2000 1175 50  0001 C CNN
F 3 "~" H 2000 1175 50  0001 C CNN
	1    2000 1175
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Female J2
U 1 1 649312F4
P 3150 1175
F 0 "J2" H 3178 1151 50  0000 L CNN
F 1 " " H 3178 1060 50  0000 L CNN
F 2 "" H 3150 1175 50  0001 C CNN
F 3 "~" H 3150 1175 50  0001 C CNN
	1    3150 1175
	1    0    0    -1  
$EndComp
Wire Notes Line
	4100 750  1250 750 
Wire Notes Line
	1250 750  1250 1700
Wire Notes Line
	1250 1700 4100 1700
Wire Notes Line
	4100 1700 4100 750 
Text Notes 1250 750  0    50   ~ 0
OpenMV H7 Headers
Text GLabel 2250 875  2    50   Input ~ 0
TX
Text GLabel 2250 975  2    50   Input ~ 0
RX
Text GLabel 2250 1575 2    50   Input ~ 0
3V3
Wire Wire Line
	2200 875  2250 875 
Wire Wire Line
	2250 975  2200 975 
Wire Wire Line
	2200 1575 2250 1575
Text GLabel 2900 1475 0    50   Input ~ 0
VIN
Text GLabel 2900 1575 0    50   Input ~ 0
GND
NoConn ~ 2950 875 
NoConn ~ 2950 975 
NoConn ~ 2950 1075
Text Notes 3175 900  0    50   ~ 0
RESET
Text Notes 3175 1000 0    50   ~ 0
BOOT_0
Text Notes 3175 1100 0    50   ~ 0
SYNC
Wire Wire Line
	2950 1475 2900 1475
Wire Wire Line
	2950 1575 2900 1575
$Comp
L Connector:RJ45 J3
U 1 1 6493D961
P 1850 2525
F 0 "J3" H 1375 2575 50  0000 C CNN
F 1 "RJ45" H 1375 2475 50  0000 C CNN
F 2 "" V 1850 2550 50  0001 C CNN
F 3 "~" V 1850 2550 50  0001 C CNN
	1    1850 2525
	1    0    0    -1  
$EndComp
Wire Notes Line
	1250 1925 1250 3050
Wire Notes Line
	1250 3050 2775 3050
Wire Notes Line
	2775 3050 2775 1925
Wire Notes Line
	2775 1925 1250 1925
Text Notes 1250 1925 0    50   ~ 0
RJ45 - Connector to Motherboard
Text GLabel 2375 2725 2    50   Input ~ 0
POWC
Wire Wire Line
	2250 2725 2300 2725
Wire Wire Line
	2250 2825 2300 2825
Wire Wire Line
	2300 2825 2300 2725
Connection ~ 2300 2725
Wire Wire Line
	2300 2725 2375 2725
Text GLabel 2375 2525 2    50   Input ~ 0
TX
Text GLabel 2375 2625 2    50   Input ~ 0
RX
Wire Wire Line
	2250 2625 2375 2625
Wire Wire Line
	2375 2525 2250 2525
Text GLabel 2375 2125 2    50   Input ~ 0
GND
Wire Wire Line
	2375 2125 2300 2125
Wire Wire Line
	2250 2225 2300 2225
Wire Wire Line
	2300 2225 2300 2125
Connection ~ 2300 2125
Wire Wire Line
	2300 2125 2250 2125
Text Notes 3175 1500 0    50   ~ 0
Is this used?
Wire Notes Line
	3025 1925 4100 1925
Wire Notes Line
	4100 1925 4100 3050
Wire Notes Line
	3025 3050 3025 1925
Text Notes 3025 1925 0    50   ~ 0
Power
$Comp
L Device:C C1
U 1 1 6494727C
P 3575 2075
F 0 "C1" V 3500 1950 50  0000 C CNN
F 1 "1 uF" V 3500 2225 50  0000 C CNN
F 2 "" H 3613 1925 50  0001 C CNN
F 3 "~" H 3575 2075 50  0001 C CNN
	1    3575 2075
	0    1    1    0   
$EndComp
Text GLabel 3825 2075 2    50   Input ~ 0
GND
Text GLabel 3325 2075 0    50   Input ~ 0
3V3
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 649492D7
P 3425 2800
F 0 "J4" H 3325 2725 50  0000 C CNN
F 1 " " H 3325 2625 50  0000 C CNN
F 2 "" H 3425 2800 50  0001 C CNN
F 3 "~" H 3425 2800 50  0001 C CNN
	1    3425 2800
	1    0    0    -1  
$EndComp
Text Notes 3175 2800 0    50   ~ 0
P_SEL
Text GLabel 3700 2700 2    50   Input ~ 0
3V3
Text GLabel 3700 2800 2    50   Input ~ 0
POWC
Text GLabel 3700 2900 2    50   Input ~ 0
VBAT
Wire Wire Line
	3625 2700 3700 2700
Wire Wire Line
	3700 2800 3625 2800
Wire Wire Line
	3625 2900 3700 2900
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 6494D97A
P 3750 2375
F 0 "J5" H 3700 2500 50  0000 L CNN
F 1 " " H 3830 2276 50  0000 L CNN
F 2 "" H 3750 2375 50  0001 C CNN
F 3 "~" H 3750 2375 50  0001 C CNN
	1    3750 2375
	1    0    0    -1  
$EndComp
Wire Notes Line
	4100 3050 3025 3050
Text GLabel 3500 2375 0    50   Input ~ 0
VBAT
Text GLabel 3500 2475 0    50   Input ~ 0
GND
Wire Wire Line
	3825 2075 3725 2075
Wire Wire Line
	3425 2075 3325 2075
Wire Wire Line
	3550 2375 3500 2375
Wire Wire Line
	3550 2475 3500 2475
Text GLabel 2250 1075 2    50   Input ~ 0
S0
Text GLabel 2250 1175 2    50   Input ~ 0
S1
Text GLabel 2250 1275 2    50   Input ~ 0
S2
Text GLabel 2250 1375 2    50   Input ~ 0
S3
Text GLabel 2900 1175 0    50   Input ~ 0
EN-16
Wire Wire Line
	2200 1175 2250 1175
Wire Wire Line
	2200 1075 2250 1075
Wire Wire Line
	2200 1275 2250 1275
Wire Wire Line
	2200 1375 2250 1375
Wire Wire Line
	2200 1475 2250 1475
Wire Wire Line
	5350 2975 5350 2950
Wire Wire Line
	5250 2975 5350 2975
$Comp
L 74xx:CD74HC4067M U1
U 1 1 64956EB8
P 5350 1850
F 0 "U1" H 5525 2775 50  0000 C CNN
F 1 " " H 5350 2940 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 6250 850 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4067.pdf" H 5000 2700 50  0001 C CNN
	1    5350 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 825  5350 850 
Wire Wire Line
	5250 825  5350 825 
Text GLabel 5250 2975 0    50   Input ~ 0
GND
Text GLabel 5250 825  0    50   Input ~ 0
3V3
Wire Wire Line
	5925 2650 5850 2650
Wire Wire Line
	5850 2550 5925 2550
Wire Wire Line
	5925 2450 5850 2450
Wire Wire Line
	5850 2350 5925 2350
Wire Wire Line
	5925 2250 5850 2250
Wire Wire Line
	5850 2150 5925 2150
Wire Wire Line
	5925 2050 5850 2050
Wire Wire Line
	5850 1950 5925 1950
Wire Wire Line
	5925 1850 5850 1850
Wire Wire Line
	5850 1750 5925 1750
Wire Wire Line
	5925 1650 5850 1650
Wire Wire Line
	5850 1550 5925 1550
Wire Wire Line
	5925 1450 5850 1450
Wire Wire Line
	5850 1350 5925 1350
Wire Wire Line
	5925 1250 5850 1250
Wire Wire Line
	5850 1150 5925 1150
Text GLabel 5925 2650 2    50   Input ~ 0
C15_DRV
Text GLabel 5925 2550 2    50   Input ~ 0
C14_DRV
Text GLabel 5925 2450 2    50   Input ~ 0
C13_DRV
Text GLabel 5925 2350 2    50   Input ~ 0
C12_DRV
Text GLabel 5925 2250 2    50   Input ~ 0
C11_DRV
Text GLabel 5925 2150 2    50   Input ~ 0
C10_DRV
Text GLabel 5925 2050 2    50   Input ~ 0
C9_DRV
Text GLabel 5925 1950 2    50   Input ~ 0
C8_DRV
Text GLabel 5925 1850 2    50   Input ~ 0
C7_DRV
Text GLabel 5925 1750 2    50   Input ~ 0
C6_DRV
Text GLabel 5925 1650 2    50   Input ~ 0
C5_DRV
Text GLabel 5925 1550 2    50   Input ~ 0
C4_DRV
Text GLabel 5925 1450 2    50   Input ~ 0
C3_DRV
Text GLabel 5925 1350 2    50   Input ~ 0
C2_DRV
Text GLabel 5925 1250 2    50   Input ~ 0
C1_DRV
Text GLabel 5925 1150 2    50   Input ~ 0
C0_DRV
Wire Wire Line
	4850 2050 4775 2050
Wire Wire Line
	4775 1950 4850 1950
Wire Wire Line
	4850 1850 4775 1850
Wire Wire Line
	4775 1750 4850 1750
Text GLabel 4775 1750 0    50   Input ~ 0
S0
Wire Wire Line
	4775 2450 4850 2450
Text GLabel 4775 2450 0    50   Input ~ 0
EN-16
Text GLabel 4775 2050 0    50   Input ~ 0
S3
Text GLabel 4775 1950 0    50   Input ~ 0
S2
Text GLabel 4775 1850 0    50   Input ~ 0
S1
Wire Wire Line
	2900 1175 2950 1175
NoConn ~ 2250 2325
NoConn ~ 2250 2425
Text GLabel 2250 1475 2    50   Input ~ 0
OUT
Text GLabel 4775 1350 0    50   Input ~ 0
OUT
Wire Wire Line
	4775 1350 4850 1350
Wire Notes Line
	4400 3050 4400 750 
Text Notes 4400 750  0    50   ~ 0
1:16 Multiplexer
Wire Notes Line
	4400 3050 6375 3050
Wire Notes Line
	6375 3050 6375 750 
Wire Notes Line
	6375 750  4400 750 
$Comp
L Driver_LED:BCR_420U_E6327 U3
U 1 1 64968F4B
P 7625 1075
F 0 "U3" H 7625 1325 50  0000 C CNN
F 1 " " H 7625 1349 50  0000 C CNN
F 2 "" H 7425 1075 50  0001 C CNN
F 3 "" H 7425 1075 50  0001 C CNN
	1    7625 1075
	1    0    0    -1  
$EndComp
NoConn ~ 7225 1075
NoConn ~ 7225 1175
Text GLabel 9075 4650 0    50   Input ~ 0
C15_DRV
Text GLabel 9075 4125 0    50   Input ~ 0
C14_DRV
Text GLabel 9075 3600 0    50   Input ~ 0
C13_DRV
Text GLabel 9075 3075 0    50   Input ~ 0
C12_DRV
Text GLabel 9075 2550 0    50   Input ~ 0
C11_DRV
Text GLabel 9075 2025 0    50   Input ~ 0
C10_DRV
Text GLabel 9075 1500 0    50   Input ~ 0
C9_DRV
Text GLabel 9075 975  0    50   Input ~ 0
C8_DRV
Text GLabel 7150 4650 0    50   Input ~ 0
C7_DRV
Text GLabel 7150 4125 0    50   Input ~ 0
C6_DRV
Text GLabel 7150 3600 0    50   Input ~ 0
C5_DRV
Text GLabel 7150 3075 0    50   Input ~ 0
C4_DRV
Text GLabel 7150 2550 0    50   Input ~ 0
C3_DRV
Text GLabel 5825 3875 2    50   Input ~ 0
C2_DRV
Text GLabel 7150 1500 0    50   Input ~ 0
C1_DRV
Text GLabel 7150 975  0    50   Input ~ 0
C0_DRV
Text GLabel 8075 1175 2    50   Input ~ 0
GND
Wire Wire Line
	8075 1175 8025 1175
$Comp
L Driver_LED:BCR_420U_E6327 U4
U 1 1 64982743
P 7625 1600
F 0 "U4" H 7625 1850 50  0000 C CNN
F 1 " " H 7625 1874 50  0000 C CNN
F 2 "" H 7425 1600 50  0001 C CNN
F 3 "" H 7425 1600 50  0001 C CNN
	1    7625 1600
	1    0    0    -1  
$EndComp
NoConn ~ 7225 1600
NoConn ~ 7225 1700
Text GLabel 8075 1700 2    50   Input ~ 0
GND
Wire Wire Line
	8075 1700 8025 1700
$Comp
L Driver_LED:BCR_420U_E6327 U2
U 1 1 649843A6
P 5375 4375
F 0 "U2" H 5375 4625 50  0000 C CNN
F 1 " " H 5375 4649 50  0000 C CNN
F 2 "" H 5175 4375 50  0001 C CNN
F 3 "" H 5175 4375 50  0001 C CNN
	1    5375 4375
	1    0    0    -1  
$EndComp
NoConn ~ 4975 4375
NoConn ~ 4975 4475
Text GLabel 5825 4475 2    50   Input ~ 0
GND
Wire Wire Line
	5825 4475 5775 4475
$Comp
L Driver_LED:BCR_420U_E6327 U5
U 1 1 64985CC7
P 7625 2650
F 0 "U5" H 7625 2900 50  0000 C CNN
F 1 " " H 7625 2924 50  0000 C CNN
F 2 "" H 7425 2650 50  0001 C CNN
F 3 "" H 7425 2650 50  0001 C CNN
	1    7625 2650
	1    0    0    -1  
$EndComp
NoConn ~ 7225 2650
NoConn ~ 7225 2750
Text GLabel 8075 2750 2    50   Input ~ 0
GND
Wire Wire Line
	8075 2750 8025 2750
$Comp
L Driver_LED:BCR_420U_E6327 U6
U 1 1 64987B19
P 7625 3175
F 0 "U6" H 7625 3425 50  0000 C CNN
F 1 " " H 7625 3449 50  0000 C CNN
F 2 "" H 7425 3175 50  0001 C CNN
F 3 "" H 7425 3175 50  0001 C CNN
	1    7625 3175
	1    0    0    -1  
$EndComp
NoConn ~ 7225 3175
NoConn ~ 7225 3275
Text GLabel 8075 3275 2    50   Input ~ 0
GND
Wire Wire Line
	8075 3275 8025 3275
NoConn ~ 7225 3700
NoConn ~ 7225 3800
Text GLabel 8075 3800 2    50   Input ~ 0
GND
Wire Wire Line
	8075 3800 8025 3800
$Comp
L Driver_LED:BCR_420U_E6327 U7
U 1 1 64989A25
P 7625 3700
F 0 "U7" H 7625 3950 50  0000 C CNN
F 1 " " H 7625 3974 50  0000 C CNN
F 2 "" H 7425 3700 50  0001 C CNN
F 3 "" H 7425 3700 50  0001 C CNN
	1    7625 3700
	1    0    0    -1  
$EndComp
Text GLabel 9900 5675 3    50   Input ~ 0
GND
Text GLabel 7925 5675 3    50   Input ~ 0
GND
$Comp
L Driver_LED:BCR_420U_E6327 U8
U 1 1 649929B8
P 7625 4225
F 0 "U8" H 7625 4475 50  0000 C CNN
F 1 " " H 7625 4499 50  0000 C CNN
F 2 "" H 7425 4225 50  0001 C CNN
F 3 "" H 7425 4225 50  0001 C CNN
	1    7625 4225
	1    0    0    -1  
$EndComp
NoConn ~ 7225 4225
NoConn ~ 7225 4325
Text GLabel 8075 4325 2    50   Input ~ 0
GND
Wire Wire Line
	8075 4325 8025 4325
$Comp
L Driver_LED:BCR_420U_E6327 U9
U 1 1 649948A9
P 7625 4750
F 0 "U9" H 7625 5000 50  0000 C CNN
F 1 " " H 7625 5024 50  0000 C CNN
F 2 "" H 7425 4750 50  0001 C CNN
F 3 "" H 7425 4750 50  0001 C CNN
	1    7625 4750
	1    0    0    -1  
$EndComp
NoConn ~ 7225 4750
NoConn ~ 7225 4850
Text GLabel 8075 4850 2    50   Input ~ 0
GND
Wire Wire Line
	8075 4850 8025 4850
$Comp
L Driver_LED:BCR_420U_E6327 U10
U 1 1 649AE052
P 9550 1075
F 0 "U10" H 9550 1325 50  0000 C CNN
F 1 " " H 9550 1349 50  0000 C CNN
F 2 "" H 9350 1075 50  0001 C CNN
F 3 "" H 9350 1075 50  0001 C CNN
	1    9550 1075
	1    0    0    -1  
$EndComp
NoConn ~ 9150 1075
NoConn ~ 9150 1175
Text GLabel 10000 1175 2    50   Input ~ 0
GND
Wire Wire Line
	10000 1175 9950 1175
$Comp
L Driver_LED:BCR_420U_E6327 U11
U 1 1 649AE05C
P 9550 1600
F 0 "U11" H 9550 1850 50  0000 C CNN
F 1 " " H 9550 1874 50  0000 C CNN
F 2 "" H 9350 1600 50  0001 C CNN
F 3 "" H 9350 1600 50  0001 C CNN
	1    9550 1600
	1    0    0    -1  
$EndComp
NoConn ~ 9150 1600
NoConn ~ 9150 1700
Text GLabel 10000 1700 2    50   Input ~ 0
GND
Wire Wire Line
	10000 1700 9950 1700
$Comp
L Driver_LED:BCR_420U_E6327 U12
U 1 1 649AE066
P 9550 2125
F 0 "U12" H 9550 2375 50  0000 C CNN
F 1 " " H 9550 2399 50  0000 C CNN
F 2 "" H 9350 2125 50  0001 C CNN
F 3 "" H 9350 2125 50  0001 C CNN
	1    9550 2125
	1    0    0    -1  
$EndComp
NoConn ~ 9150 2125
NoConn ~ 9150 2225
Text GLabel 10000 2225 2    50   Input ~ 0
GND
Wire Wire Line
	10000 2225 9950 2225
$Comp
L Driver_LED:BCR_420U_E6327 U13
U 1 1 649AE070
P 9550 2650
F 0 "U13" H 9550 2900 50  0000 C CNN
F 1 " " H 9550 2924 50  0000 C CNN
F 2 "" H 9350 2650 50  0001 C CNN
F 3 "" H 9350 2650 50  0001 C CNN
	1    9550 2650
	1    0    0    -1  
$EndComp
NoConn ~ 9150 2650
NoConn ~ 9150 2750
Text GLabel 10000 2750 2    50   Input ~ 0
GND
Wire Wire Line
	10000 2750 9950 2750
$Comp
L Driver_LED:BCR_420U_E6327 U14
U 1 1 649AE07A
P 9550 3175
F 0 "U14" H 9550 3425 50  0000 C CNN
F 1 " " H 9550 3449 50  0000 C CNN
F 2 "" H 9350 3175 50  0001 C CNN
F 3 "" H 9350 3175 50  0001 C CNN
	1    9550 3175
	1    0    0    -1  
$EndComp
NoConn ~ 9150 3175
NoConn ~ 9150 3275
Text GLabel 10000 3275 2    50   Input ~ 0
GND
Wire Wire Line
	10000 3275 9950 3275
NoConn ~ 9150 3700
NoConn ~ 9150 3800
Text GLabel 10000 3800 2    50   Input ~ 0
GND
Wire Wire Line
	10000 3800 9950 3800
$Comp
L Driver_LED:BCR_420U_E6327 U15
U 1 1 649AE088
P 9550 3700
F 0 "U15" H 9550 3950 50  0000 C CNN
F 1 " " H 9550 3974 50  0000 C CNN
F 2 "" H 9350 3700 50  0001 C CNN
F 3 "" H 9350 3700 50  0001 C CNN
	1    9550 3700
	1    0    0    -1  
$EndComp
$Comp
L Driver_LED:BCR_420U_E6327 U16
U 1 1 649AE08E
P 9550 4225
F 0 "U16" H 9550 4475 50  0000 C CNN
F 1 " " H 9550 4499 50  0000 C CNN
F 2 "" H 9350 4225 50  0001 C CNN
F 3 "" H 9350 4225 50  0001 C CNN
	1    9550 4225
	1    0    0    -1  
$EndComp
NoConn ~ 9150 4225
NoConn ~ 9150 4325
Text GLabel 10000 4325 2    50   Input ~ 0
GND
Wire Wire Line
	10000 4325 9950 4325
$Comp
L Driver_LED:BCR_420U_E6327 U17
U 1 1 649AE098
P 9550 4750
F 0 "U17" H 9550 5000 50  0000 C CNN
F 1 " " H 9550 5024 50  0000 C CNN
F 2 "" H 9350 4750 50  0001 C CNN
F 3 "" H 9350 4750 50  0001 C CNN
	1    9550 4750
	1    0    0    -1  
$EndComp
NoConn ~ 9150 4750
NoConn ~ 9150 4850
Text GLabel 10000 4850 2    50   Input ~ 0
GND
Wire Wire Line
	10000 4850 9950 4850
Wire Wire Line
	7150 975  7225 975 
Wire Wire Line
	7150 1500 7225 1500
Wire Wire Line
	7150 2550 7225 2550
Wire Wire Line
	7150 3075 7225 3075
Wire Wire Line
	7150 3600 7225 3600
Wire Wire Line
	7150 4125 7225 4125
Wire Wire Line
	7150 4650 7225 4650
Text GLabel 8075 975  2    50   Input ~ 0
R0
Wire Wire Line
	8075 975  8025 975 
Text GLabel 8075 1500 2    50   Input ~ 0
R1
Wire Wire Line
	8075 1500 8025 1500
Text GLabel 8075 2550 2    50   Input ~ 0
R3
Wire Wire Line
	8075 2550 8025 2550
Text GLabel 8075 3075 2    50   Input ~ 0
R4
Wire Wire Line
	8075 3075 8025 3075
Text GLabel 8075 3600 2    50   Input ~ 0
R5
Wire Wire Line
	8075 3600 8025 3600
Text GLabel 8075 4125 2    50   Input ~ 0
R6
Wire Wire Line
	8075 4125 8025 4125
Text GLabel 8075 4650 2    50   Input ~ 0
R7
Wire Wire Line
	8075 4650 8025 4650
Text GLabel 10000 975  2    50   Input ~ 0
R8
Wire Wire Line
	10000 975  9950 975 
Text GLabel 10000 1500 2    50   Input ~ 0
R9
Wire Wire Line
	10000 1500 9950 1500
Text GLabel 10000 2025 2    50   Input ~ 0
R10
Wire Wire Line
	10000 2025 9950 2025
Text GLabel 10000 2550 2    50   Input ~ 0
R11
Wire Wire Line
	10000 2550 9950 2550
Text GLabel 10000 3075 2    50   Input ~ 0
R12
Wire Wire Line
	10000 3075 9950 3075
Text GLabel 10000 3600 2    50   Input ~ 0
R13
Wire Wire Line
	10000 3600 9950 3600
Text GLabel 10000 4125 2    50   Input ~ 0
R14
Wire Wire Line
	10000 4125 9950 4125
Text GLabel 10000 4650 2    50   Input ~ 0
R15
Wire Wire Line
	10000 4650 9950 4650
Text GLabel 5825 4275 2    50   Input ~ 0
R2
Wire Wire Line
	5825 4275 5775 4275
Text GLabel 7225 5275 1    50   Input ~ 0
R0
Text GLabel 7325 5275 1    50   Input ~ 0
R1
Text GLabel 7525 5275 1    50   Input ~ 0
R3
Text GLabel 7625 5275 1    50   Input ~ 0
R4
Text GLabel 7725 5275 1    50   Input ~ 0
R5
Text GLabel 7825 5275 1    50   Input ~ 0
R6
Text GLabel 7925 5275 1    50   Input ~ 0
R7
Text GLabel 9200 5275 1    50   Input ~ 0
R8
Text GLabel 9300 5275 1    50   Input ~ 0
R9
Text GLabel 9400 5275 1    50   Input ~ 0
R10
Text GLabel 9500 5275 1    50   Input ~ 0
R11
Text GLabel 9600 5275 1    50   Input ~ 0
R12
Text GLabel 9700 5275 1    50   Input ~ 0
R13
Text GLabel 9800 5275 1    50   Input ~ 0
R14
Text GLabel 9900 5275 1    50   Input ~ 0
R15
Text GLabel 7425 5275 1    50   Input ~ 0
R2
$Comp
L Device:R_Network08 RN1
U 1 1 64A5EACA
P 7525 5475
F 0 "RN1" H 7045 5429 50  0000 R CNN
F 1 "10 ohm" H 7045 5520 50  0000 R CNN
F 2 "Resistor_THT:R_Array_SIP9" V 8000 5475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 7525 5475 50  0001 C CNN
	1    7525 5475
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Network08 RN2
U 1 1 64A60B5E
P 9500 5475
F 0 "RN2" H 9020 5429 50  0000 R CNN
F 1 "10 ohm" H 9020 5520 50  0000 R CNN
F 2 "Resistor_THT:R_Array_SIP9" V 9975 5475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 9500 5475 50  0001 C CNN
	1    9500 5475
	-1   0    0    1   
$EndComp
Wire Notes Line
	6725 750  10600 750 
Wire Notes Line
	10600 750  10600 5950
Wire Notes Line
	10600 5950 6725 5950
Wire Notes Line
	6725 5950 6725 750 
Text Notes 6725 750  0    50   ~ 0
LED Drivers - MSI
Text GLabel 8075 1075 2    50   Input ~ 0
C0
Wire Wire Line
	8075 1075 8025 1075
Text GLabel 8075 1600 2    50   Input ~ 0
C1
Wire Wire Line
	8075 1600 8025 1600
Text GLabel 8075 2650 2    50   Input ~ 0
C3
Wire Wire Line
	8075 2650 8025 2650
Text GLabel 8075 3175 2    50   Input ~ 0
C4
Wire Wire Line
	8075 3175 8025 3175
Text GLabel 8075 3700 2    50   Input ~ 0
C5
Wire Wire Line
	8075 3700 8025 3700
Text GLabel 8075 4225 2    50   Input ~ 0
C6
Wire Wire Line
	8075 4225 8025 4225
Text GLabel 8075 4750 2    50   Input ~ 0
C7
Wire Wire Line
	8075 4750 8025 4750
Text GLabel 10000 1075 2    50   Input ~ 0
C8
Wire Wire Line
	10000 1075 9950 1075
Text GLabel 10000 1600 2    50   Input ~ 0
C9
Wire Wire Line
	10000 1600 9950 1600
Text GLabel 10000 2125 2    50   Input ~ 0
C10
Wire Wire Line
	10000 2125 9950 2125
Text GLabel 10000 2650 2    50   Input ~ 0
C11
Text GLabel 10000 3175 2    50   Input ~ 0
C12
Wire Wire Line
	10000 3175 9950 3175
Text GLabel 10000 3700 2    50   Input ~ 0
C13
Wire Wire Line
	10000 3700 9950 3700
Text GLabel 10000 4225 2    50   Input ~ 0
C14
Wire Wire Line
	10000 4225 9950 4225
Text GLabel 10000 4750 2    50   Input ~ 0
C15
Wire Wire Line
	10000 4750 9950 4750
Text GLabel 5825 4375 2    50   Input ~ 0
C2
Wire Wire Line
	5825 4375 5775 4375
Text GLabel 3300 3475 0    50   Input ~ 0
C0
Text GLabel 3300 3575 0    50   Input ~ 0
C1
Text GLabel 3300 3675 0    50   Input ~ 0
C2
Text GLabel 3300 3775 0    50   Input ~ 0
C3
Text GLabel 3300 3875 0    50   Input ~ 0
C4
Text GLabel 3300 3975 0    50   Input ~ 0
C5
Text GLabel 3300 4075 0    50   Input ~ 0
C6
Text GLabel 3300 4175 0    50   Input ~ 0
C7
Text GLabel 3800 3475 2    50   Input ~ 0
C8
Text GLabel 3800 3575 2    50   Input ~ 0
C9
Text GLabel 3800 3675 2    50   Input ~ 0
C10
Text GLabel 3800 3775 2    50   Input ~ 0
C11
Text GLabel 3800 3875 2    50   Input ~ 0
C12
Text GLabel 3800 3975 2    50   Input ~ 0
C13
Text GLabel 3800 4075 2    50   Input ~ 0
C14
Text GLabel 3800 4175 2    50   Input ~ 0
C15
Text GLabel 3800 4275 2    50   Input ~ 0
3V3
Text GLabel 3300 4275 0    50   Input ~ 0
3V3
$Comp
L Switch:74LVC1G3157 U18
U 1 1 6494E9BC
P 5375 3775
F 0 "U18" H 5375 4140 50  0000 C CNN
F 1 "74LVC1G3157" H 5375 4049 50  0000 C CNN
F 2 "" H 5375 3775 50  0001 C CNN
F 3 "" H 5375 3775 50  0001 C CNN
	1    5375 3775
	1    0    0    -1  
$EndComp
Text GLabel 4925 3775 0    50   Input ~ 0
GND
Wire Wire Line
	4925 3775 4975 3775
Wire Wire Line
	4925 4275 4975 4275
Text GLabel 5825 3775 2    50   Input ~ 0
3V3
Wire Wire Line
	5825 3775 5775 3775
Text GLabel 2900 1275 0    50   Input ~ 0
S_SMFI_MSI
Wire Wire Line
	2950 1275 2900 1275
Text GLabel 5825 3675 2    50   Input ~ 0
S_SMFI_MSI
Wire Wire Line
	5825 3675 5775 3675
Wire Wire Line
	4925 3875 4975 3875
Wire Wire Line
	4925 3675 4975 3675
Wire Wire Line
	5825 3875 5775 3875
Text GLabel 4925 3675 0    50   Input ~ 0
SMFI
Text GLabel 4925 4275 0    50   Input ~ 0
MSI
Text Notes 7450 2150 0    50   ~ 0
Driver 2
$Comp
L Device:R R1
U 1 1 6499127E
P 5175 5400
F 0 "R1" V 4968 5400 50  0000 C CNN
F 1 "100 ohm" V 5059 5400 50  0000 C CNN
F 2 "" V 5105 5400 50  0001 C CNN
F 3 "~" H 5175 5400 50  0001 C CNN
	1    5175 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 64991860
P 5700 4975
F 0 "R2" H 5630 4929 50  0000 R CNN
F 1 "18 ohm" H 5630 5020 50  0000 R CNN
F 2 "" V 5630 4975 50  0001 C CNN
F 3 "~" H 5700 4975 50  0001 C CNN
	1    5700 4975
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NMOS_DGS Q1
U 1 1 649934FA
P 5600 5400
F 0 "Q1" H 5805 5446 50  0000 L CNN
F 1 " " H 5805 5355 50  0000 L CNN
F 2 "" H 5800 5500 50  0001 C CNN
F 3 "~" H 5600 5400 50  0001 C CNN
	1    5600 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 5200 5700 5125
Wire Wire Line
	5400 5400 5325 5400
Text GLabel 5750 5675 2    50   Input ~ 0
GND
Wire Wire Line
	5750 5675 5700 5675
Wire Wire Line
	5700 5675 5700 5600
Text GLabel 4975 5400 0    50   Input ~ 0
SMFI
Wire Wire Line
	4975 5400 5025 5400
Text Notes 4900 5750 0    50   ~ 0
Does this need a\npull-up resistor?
Text GLabel 5750 4750 2    50   Input ~ 0
C2
Wire Wire Line
	5750 4750 5700 4750
Wire Wire Line
	5700 4750 5700 4825
Wire Notes Line
	4400 3300 6375 3300
Wire Notes Line
	6375 3300 6375 5950
Wire Notes Line
	6375 5950 4400 5950
Wire Notes Line
	4400 5950 4400 3300
Text Notes 4400 3300 0    50   ~ 0
LED Driver 2 - MSI or SMFI
Text Notes 1800 1500 0    50   ~ 0
DAC
NoConn ~ 2950 1375
Wire Wire Line
	9075 4650 9150 4650
Wire Wire Line
	9075 4125 9150 4125
Wire Wire Line
	9075 3600 9150 3600
Wire Wire Line
	9075 3075 9150 3075
Wire Wire Line
	9075 2550 9150 2550
Wire Wire Line
	9075 2025 9150 2025
Wire Wire Line
	9075 1500 9150 1500
Wire Wire Line
	9075 975  9150 975 
$Comp
L Connector_Generic:Conn_02x09_Odd_Even J6
U 1 1 6495EBE8
P 3500 3875
F 0 "J6" H 3550 4375 50  0000 C CNN
F 1 " " H 3550 4401 50  0000 C CNN
F 2 "" H 3500 3875 50  0001 C CNN
F 3 "~" H 3500 3875 50  0001 C CNN
	1    3500 3875
	1    0    0    -1  
$EndComp
Wire Notes Line
	3025 3300 4100 3300
Wire Notes Line
	4100 3300 4100 4450
Wire Notes Line
	4100 4450 3025 4450
Wire Notes Line
	3025 4450 3025 3300
Text Notes 3025 3300 0    50   ~ 0
LED Board Connector
$EndSCHEMATC
