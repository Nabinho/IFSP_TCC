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
Text Label 4400 4500 0    50   ~ 0
Fontes_de_Alimentação
Text Label 4800 4300 0    50   ~ 0
Fonte_5V
Text Label 4800 3900 0    50   ~ 0
Fonte_12V
Wire Bus Line
	4800 3500 4800 3900
Wire Bus Line
	4800 3900 5200 3900
Wire Bus Line
	5200 3900 5200 3500
Wire Bus Line
	5200 3500 4800 3500
Wire Bus Line
	4800 4000 4800 4300
Wire Bus Line
	4800 4300 5200 4300
Wire Bus Line
	5200 4300 5200 4000
Wire Bus Line
	5200 4000 4800 4000
$Comp
L power:AC #PWR?
U 1 1 5F2A13DE
P 5400 3700
F 0 "#PWR?" H 5400 3600 50  0001 C CNN
F 1 "AC" H 5400 3975 50  0000 C CNN
F 2 "" H 5400 3700 50  0001 C CNN
F 3 "" H 5400 3700 50  0001 C CNN
	1    5400 3700
	1    0    0    -1  
$EndComp
$Comp
L power:AC #PWR?
U 1 1 5F2A24C9
P 5600 3700
F 0 "#PWR?" H 5600 3600 50  0001 C CNN
F 1 "AC" H 5600 3975 50  0000 C CNN
F 2 "" H 5600 3700 50  0001 C CNN
F 3 "" H 5600 3700 50  0001 C CNN
	1    5600 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3700 5100 3700
Wire Wire Line
	5600 3700 5600 3800
Wire Wire Line
	5600 3800 5100 3800
Wire Wire Line
	5400 3700 5400 4100
Wire Wire Line
	5400 4100 5100 4100
Connection ~ 5400 3700
Wire Wire Line
	5600 3800 5600 4200
Wire Wire Line
	5600 4200 5100 4200
Connection ~ 5600 3800
Text GLabel 4700 4200 0    50   Input ~ 0
5V
Text GLabel 4700 3800 0    50   Input ~ 0
12V
Text GLabel 4700 4100 0    50   Input ~ 0
GND
Text GLabel 4700 3700 0    50   Input ~ 0
GND
Wire Wire Line
	4700 3700 4900 3700
Wire Wire Line
	4700 3800 4900 3800
Wire Wire Line
	4700 4100 4900 4100
Wire Wire Line
	4700 4200 4900 4200
Wire Notes Line
	5700 3300 5700 4500
Wire Notes Line
	4400 4500 4400 3300
Wire Notes Line
	4400 3300 5700 3300
Wire Notes Line
	4400 4500 5700 4500
Text Label 4728 3378 0    50   ~ 0
Saída_|_Entrada
Wire Bus Line
	2600 1000 3600 1000
Wire Bus Line
	3600 1000 3600 2500
Wire Bus Line
	3600 2500 2600 2500
Wire Bus Line
	2600 2500 2600 1000
Wire Bus Line
	3600 3700 2600 3700
Wire Bus Line
	2600 3700 2600 2700
Text Label 2600 2500 0    50   ~ 0
BlackBoard_Mega
Text Label 2600 3700 0    50   ~ 0
Shield_Ethernet
Text GLabel 2500 1200 0    50   Input ~ 0
5V
Text GLabel 2500 1300 0    50   Input ~ 0
GND
Text GLabel 2500 1100 0    50   Input ~ 0
3,3V
Text GLabel 2500 2300 0    50   Input ~ 0
A15
Text GLabel 2500 2200 0    50   Input ~ 0
A14
Text GLabel 2500 2100 0    50   Input ~ 0
A13
Text GLabel 2500 2000 0    50   Input ~ 0
A12
Wire Wire Line
	2500 1100 2800 1100
Wire Wire Line
	2500 1200 2800 1200
Wire Wire Line
	2500 1300 2800 1300
Wire Wire Line
	2500 2000 2800 2000
Wire Wire Line
	2500 2100 2800 2100
Wire Wire Line
	2500 2200 2800 2200
Wire Wire Line
	2500 2300 2800 2300
Text GLabel 3700 1100 2    50   Input ~ 0
SDA
Text GLabel 3700 1200 2    50   Input ~ 0
SCL
Text GLabel 3700 1400 2    50   Input ~ 0
D22
Text GLabel 3700 1600 2    50   Input ~ 0
DATA
Text GLabel 3700 1700 2    50   Input ~ 0
CLK
Text GLabel 3700 1900 2    50   Input ~ 0
MISO
Text GLabel 3700 2000 2    50   Input ~ 0
MOSI
Text GLabel 3700 2100 2    50   Input ~ 0
SCK
Text GLabel 3700 2200 2    50   Input ~ 0
CS_W5500
Text GLabel 3700 2300 2    50   Input ~ 0
CS_SD
Wire Wire Line
	3700 1100 3400 1100
Wire Wire Line
	3700 1200 3400 1200
Wire Wire Line
	3700 1400 3400 1400
Wire Wire Line
	3700 1600 3400 1600
Wire Wire Line
	3700 1700 3400 1700
Wire Wire Line
	3700 1900 3400 1900
Wire Wire Line
	3700 2000 3400 2000
Wire Wire Line
	3700 2100 3400 2100
Wire Wire Line
	3700 2200 3400 2200
Wire Wire Line
	3700 2300 3400 2300
Text Label 2800 1200 0    50   ~ 0
IN_5V
Text Label 2800 1100 0    50   ~ 0
OUT_3,3V
Text Label 2800 1300 0    50   ~ 0
GND
Text Label 2800 2000 0    50   ~ 0
A12
Text Label 2800 2100 0    50   ~ 0
A13
Text Label 2800 2200 0    50   ~ 0
A14
Text Label 2800 2300 0    50   ~ 0
A15
Text Label 3400 1100 2    50   ~ 0
D20
Text Label 3400 1200 2    50   ~ 0
D21
Text Label 3400 1400 2    50   ~ 0
D22
Text Label 3400 1600 2    50   ~ 0
D39
Text Label 3400 1700 2    50   ~ 0
D40
Text Label 3400 1900 2    50   ~ 0
D50
Text Label 3400 2000 2    50   ~ 0
D51
Text Label 3400 2100 2    50   ~ 0
D52
Text Label 3400 2200 2    50   ~ 0
D10
Text Label 3400 2300 2    50   ~ 0
D4
Wire Bus Line
	3600 2700 3600 3700
Text GLabel 2500 3300 0    50   Input ~ 0
3,3V
Text GLabel 2500 3400 0    50   Input ~ 0
GND
Text GLabel 3700 3600 2    50   Input ~ 0
MISO
Text GLabel 3700 3500 2    50   Input ~ 0
MOSI
Text GLabel 3700 3400 2    50   Input ~ 0
SCK
Text GLabel 3700 3300 2    50   Input ~ 0
CS_SD
Text GLabel 3700 3200 2    50   Input ~ 0
CS_W5500
Wire Wire Line
	2500 3300 2800 3300
Wire Wire Line
	2500 3400 2800 3400
Wire Wire Line
	3700 3200 3400 3200
Wire Wire Line
	3700 3300 3400 3300
Wire Wire Line
	3700 3400 3400 3400
Wire Wire Line
	3700 3500 3400 3500
Wire Wire Line
	3700 3600 3400 3600
Wire Bus Line
	2600 2700 3600 2700
Text Label 2800 3300 0    50   ~ 0
IN_3,3V
Text Label 2800 3400 0    50   ~ 0
GND
Text Label 3400 3200 2    50   ~ 0
W5500
Text Label 3400 3300 2    50   ~ 0
SD
Text Label 3400 3400 2    50   ~ 0
ICSP_2
Text Label 3400 3500 2    50   ~ 0
ICSP_5
Text Label 3400 3600 2    50   ~ 0
ICSP_1
Wire Notes Line
	2200 900  2200 3900
Wire Notes Line
	2200 3900 4200 3900
Wire Notes Line
	4200 3900 4200 900 
Wire Notes Line
	4200 900  2200 900 
Text Label 2200 3900 0    50   ~ 0
Sistema_de_Controle_e_Conexão
Wire Notes Line
	700  2000 2000 2000
Text GLabel 1700 2200 2    50   Input ~ 0
5V
Text GLabel 1700 2300 2    50   Input ~ 0
GND
Text GLabel 1700 2400 2    50   Input ~ 0
A15
Wire Bus Line
	1600 2500 1600 2100
Wire Wire Line
	1700 2200 1400 2200
Wire Wire Line
	1700 2300 1400 2300
Wire Wire Line
	1700 2400 1400 2400
Text GLabel 1000 2300 0    50   Input ~ 0
BNC
Wire Bus Line
	1600 2100 1000 2100
Wire Bus Line
	1000 2100 1000 2500
Wire Bus Line
	1000 2500 1600 2500
Text Label 1000 2500 0    50   ~ 0
pH
Text Label 1400 2200 2    50   ~ 0
Vcc
Text Label 1400 2300 2    50   ~ 0
GND
Text Label 1400 2400 2    50   ~ 0
A_OUT
Wire Bus Line
	1000 3000 1600 3000
Wire Bus Line
	1600 3000 1600 2600
Wire Bus Line
	1600 2600 1000 2600
Wire Bus Line
	1000 2600 1000 3000
Text GLabel 1700 2700 2    50   Input ~ 0
5V
Text GLabel 1700 2800 2    50   Input ~ 0
GND
Text GLabel 1700 2900 2    50   Input ~ 0
A14
Text GLabel 1000 2800 0    50   Input ~ 0
PP
Wire Wire Line
	1700 2700 1400 2700
Wire Wire Line
	1700 2800 1400 2800
Wire Wire Line
	1700 2900 1400 2900
Text Label 1400 2700 2    50   ~ 0
Vcc
Text Label 1400 2800 2    50   ~ 0
GND
Text Label 1400 2900 2    50   ~ 0
A_OUT
Text Label 1000 3000 0    50   ~ 0
Umidade_Solo
Wire Bus Line
	1000 3100 1000 3500
Wire Bus Line
	1000 3500 1600 3500
Wire Bus Line
	1600 3500 1600 3100
Wire Bus Line
	1600 3100 1000 3100
Text GLabel 1700 3200 2    50   Input ~ 0
5V
Text GLabel 1700 3300 2    50   Input ~ 0
GND
Text GLabel 1700 3400 2    50   Input ~ 0
A13
Wire Wire Line
	1700 3200 1400 3200
Wire Wire Line
	1700 3300 1400 3300
Wire Wire Line
	1700 3400 1400 3400
Text Label 1400 3200 2    50   ~ 0
Vcc
Text Label 1400 3300 2    50   ~ 0
GND
Text Label 1400 3400 2    50   ~ 0
A_OUT
Wire Bus Line
	1000 3600 1000 4000
Wire Bus Line
	1000 4000 1600 4000
Wire Bus Line
	1600 4000 1600 3600
Wire Bus Line
	1000 3600 1600 3600
Text GLabel 1700 3700 2    50   Input ~ 0
5V
Text GLabel 1700 3800 2    50   Input ~ 0
GND
Text GLabel 1700 3900 2    50   Input ~ 0
A12
Text Label 1000 3500 0    50   ~ 0
CO2
Text Label 1000 4000 0    50   ~ 0
Luz
Wire Wire Line
	1700 3700 1400 3700
Wire Wire Line
	1700 3800 1400 3800
Wire Wire Line
	1700 3900 1400 3900
Text Label 1400 3700 2    50   ~ 0
Vcc
Text Label 1400 3800 2    50   ~ 0
GND
Text Label 1400 3900 2    50   ~ 0
A_OUT
Wire Bus Line
	1000 4200 1000 4700
Wire Bus Line
	1000 4700 1600 4700
Wire Bus Line
	1600 4700 1600 4200
Wire Bus Line
	1600 4200 1000 4200
Text GLabel 1700 4300 2    50   Input ~ 0
3,3V
Text GLabel 1700 4400 2    50   Input ~ 0
GND
Text GLabel 1700 4500 2    50   Input ~ 0
SDA
Text GLabel 1700 4600 2    50   Input ~ 0
SCL
Text Label 1000 4700 0    50   ~ 0
HTU21D
Wire Wire Line
	1700 4300 1400 4300
Wire Wire Line
	1700 4400 1400 4400
Wire Wire Line
	1700 4500 1400 4500
Wire Wire Line
	1700 4600 1400 4600
Text Label 1400 4300 2    50   ~ 0
Vcc
Text Label 1400 4400 2    50   ~ 0
GND
Text Label 1400 4500 2    50   ~ 0
I2C_A
Text Label 1400 4600 2    50   ~ 0
I2C_L
Wire Bus Line
	2700 4200 2100 4200
Text GLabel 2800 4300 2    50   Input ~ 0
5V
Text GLabel 2800 4400 2    50   Input ~ 0
GND
Text GLabel 2800 4500 2    50   Input ~ 0
SDA
Text GLabel 2800 4600 2    50   Input ~ 0
SCL
Wire Wire Line
	2800 4300 2500 4300
Wire Wire Line
	2800 4400 2500 4400
Wire Wire Line
	2800 4600 2500 4600
Text Label 2100 4700 0    50   ~ 0
RTC
Text Label 2500 4300 2    50   ~ 0
Vcc
Text Label 2500 4400 2    50   ~ 0
GND
Text Label 2500 4500 2    50   ~ 0
I2C_A
Text Label 2500 4600 2    50   ~ 0
I2C_L
Wire Notes Line
	2000 2000 2000 4100
Wire Notes Line
	700  2000 700  4900
Text Label 700  4900 0    50   ~ 0
Sensores
Wire Notes Line
	2000 4100 4200 4100
Wire Notes Line
	4200 4100 4200 4900
Wire Notes Line
	4400 900  7900 900 
Wire Bus Line
	4800 1100 7600 1100
Wire Bus Line
	7600 2000 4800 2000
Wire Bus Line
	4900 1600 5400 1600
Wire Bus Line
	5400 1600 5400 1900
Wire Bus Line
	5400 1900 4900 1900
Wire Bus Line
	4900 1900 4900 1600
Wire Bus Line
	5600 1600 6100 1600
Wire Bus Line
	6100 1600 6100 1900
Wire Bus Line
	6100 1900 5600 1900
Wire Bus Line
	5600 1600 5600 1900
Wire Bus Line
	6300 1600 6300 1900
Wire Bus Line
	6300 1900 6800 1900
Wire Bus Line
	6300 1600 6800 1600
Wire Bus Line
	6800 1600 6800 1900
Wire Bus Line
	7000 1600 7000 1900
Wire Bus Line
	7000 1900 7500 1900
Wire Bus Line
	7000 1600 7500 1600
Wire Bus Line
	7500 1600 7500 1900
Text GLabel 4700 1200 0    50   Input ~ 0
SCK
Text GLabel 4700 1300 0    50   Input ~ 0
DATA
Text GLabel 4700 1400 0    50   Input ~ 0
12V
Wire Bus Line
	7600 1100 7600 2000
Wire Bus Line
	4800 1100 4800 2000
Text GLabel 4700 1500 0    50   Input ~ 0
GND
Wire Wire Line
	4700 1200 5000 1200
Wire Wire Line
	4700 1300 5000 1300
Wire Wire Line
	4700 1400 5000 1400
Wire Wire Line
	4700 1500 5000 1500
Text Label 5000 1200 0    50   ~ 0
Serial_Clock
Text Label 5000 1300 0    50   ~ 0
Serial_Data
Text Label 5000 1400 0    50   ~ 0
Vcc
Text Label 5000 1500 0    50   ~ 0
GND
Text Label 7600 1200 2    50   ~ 0
Relé_Serial
Text Label 6100 1700 2    50   ~ 0
Relé_2
Text Label 6800 1700 2    50   ~ 0
Relé_3
Text Label 7500 1700 2    50   ~ 0
Relé_4
Wire Wire Line
	5200 1800 5200 2100
Wire Wire Line
	5900 1800 5900 2100
Wire Wire Line
	6400 1800 6400 2100
Wire Wire Line
	6600 1800 6600 2100
Wire Wire Line
	7100 1800 7100 2100
Wire Wire Line
	7300 1800 7300 2100
Text Label 5000 1800 2    50   ~ 0
NA
Text Label 5700 1800 2    50   ~ 0
NA
Text Label 6400 1800 2    50   ~ 0
NA
Text Label 7100 1800 2    50   ~ 0
NA
Text Label 5100 1800 2    50   ~ 0
C
Text Label 5800 1800 2    50   ~ 0
C
Text Label 6500 1800 2    50   ~ 0
C
Text Label 7200 1800 2    50   ~ 0
C
Text Label 5200 1800 0    50   ~ 0
NF
Text Label 5400 1700 2    50   ~ 0
Relé_1
Text Label 5900 1800 0    50   ~ 0
NF
Text Label 6600 1800 0    50   ~ 0
NF
Text Label 7300 1800 0    50   ~ 0
NF
$Comp
L Device:Lamp LA?
U 1 1 5F350F5F
P 5000 2500
F 0 "LA?" H 5128 2546 50  0001 L CNN
F 1 "Lamp" H 5128 2455 50  0001 L CNN
F 2 "" V 5000 2600 50  0001 C CNN
F 3 "~" V 5000 2600 50  0001 C CNN
	1    5000 2500
	1    0    0    -1  
$EndComp
$Comp
L power:AC #PWR?
U 1 1 5F351B07
P 5400 2300
F 0 "#PWR?" H 5400 2200 50  0001 C CNN
F 1 "AC" H 5400 2575 50  0000 C CNN
F 2 "" H 5400 2300 50  0001 C CNN
F 3 "" H 5400 2300 50  0001 C CNN
	1    5400 2300
	1    0    0    -1  
$EndComp
$Comp
L power:AC #PWR?
U 1 1 5F352CAB
P 5400 2700
F 0 "#PWR?" H 5400 2600 50  0001 C CNN
F 1 "AC" H 5400 2975 50  0000 C CNN
F 2 "" H 5400 2700 50  0001 C CNN
F 3 "" H 5400 2700 50  0001 C CNN
	1    5400 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2300 5100 2300
Wire Wire Line
	5100 1800 5100 2300
Wire Wire Line
	5000 1800 5000 2300
Wire Wire Line
	5000 2700 5400 2700
$Comp
L pspice:INDUCTOR L?
U 1 1 5F35D27B
P 5700 2400
F 0 "L?" V 5654 2478 50  0001 L CNN
F 1 "INDUCTOR" V 5745 2478 50  0001 L CNN
F 2 "" H 5700 2400 50  0001 C CNN
F 3 "~" H 5700 2400 50  0001 C CNN
	1    5700 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 1800 5700 2150
Text GLabel 5900 2400 2    50   Input ~ 0
12V
Text GLabel 5900 2700 2    50   Input ~ 0
GND
Wire Wire Line
	5900 2700 5700 2700
Wire Wire Line
	5700 2700 5700 2650
Text GLabel 5200 2100 3    50   Input ~ 0
NC
Text GLabel 5900 2100 3    50   Input ~ 0
NC
Wire Wire Line
	5800 1800 5800 2400
Wire Wire Line
	5800 2400 5900 2400
Text Label 4900 2900 0    50   ~ 0
Lâmpada
Text Label 5600 2900 0    50   ~ 0
Solenoide
Text Label 6300 2900 0    50   ~ 0
Bomba_D'Água
Text Label 7000 2900 0    50   ~ 0
Cooler
$Comp
L Motor:Motor_DC M?
U 1 1 5F36F08D
P 6400 2300
F 0 "M?" H 6558 2296 50  0001 L CNN
F 1 "Motor_DC" H 6558 2205 50  0001 L CNN
F 2 "" H 6400 2210 50  0001 C CNN
F 3 "~" H 6400 2210 50  0001 C CNN
	1    6400 2300
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 5F36FA75
P 7100 2300
F 0 "M?" H 7258 2296 50  0001 L CNN
F 1 "Motor_DC" H 7258 2205 50  0001 L CNN
F 2 "" H 7100 2210 50  0001 C CNN
F 3 "~" H 7100 2210 50  0001 C CNN
	1    7100 2300
	1    0    0    -1  
$EndComp
Text GLabel 6600 2700 2    50   Input ~ 0
GND
Text GLabel 7300 2700 2    50   Input ~ 0
GND
Wire Wire Line
	7300 2700 7100 2700
Wire Wire Line
	7100 2700 7100 2600
Wire Wire Line
	6600 2700 6400 2700
Wire Wire Line
	6400 2700 6400 2600
Text GLabel 6700 2400 2    50   Input ~ 0
12V
Text GLabel 7400 2400 2    50   Input ~ 0
12V
Wire Wire Line
	6700 2400 6600 2400
Wire Wire Line
	6600 2400 6600 2200
Wire Wire Line
	6600 2200 6500 2200
Wire Wire Line
	6500 1800 6500 2200
Wire Wire Line
	7400 2400 7300 2400
Wire Wire Line
	7300 2400 7300 2200
Wire Wire Line
	7300 2200 7200 2200
Wire Wire Line
	7200 1800 7200 2200
Text GLabel 6700 2100 2    50   Input ~ 0
NC
Text GLabel 7400 2100 2    50   Input ~ 0
NC
Wire Wire Line
	7400 2100 7300 2100
Wire Wire Line
	6700 2100 6600 2100
Wire Notes Line
	4400 3100 7900 3100
Wire Notes Line
	7900 900  7900 3100
Wire Notes Line
	4400 900  4400 3100
Text Label 4400 3100 0    50   ~ 0
Relés_e_Atuadores
Wire Bus Line
	2100 4200 2100 4700
Wire Bus Line
	2700 4200 2700 4700
Wire Wire Line
	2500 4500 2800 4500
Wire Notes Line
	4200 4900 700  4900
Text Label 3200 4700 0    50   ~ 0
Nível
Wire Bus Line
	3800 4200 3800 4700
Wire Bus Line
	3200 4200 3200 4700
Wire Bus Line
	3200 4700 3800 4700
Wire Bus Line
	3800 4200 3200 4200
$Comp
L Switch:SW_Push SW?
U 1 1 5F2E4825
P 3500 4400
F 0 "SW?" H 3500 4685 50  0001 C CNN
F 1 "SW_Push" V 3500 4593 50  0001 C CNN
F 2 "" H 3500 4600 50  0001 C CNN
F 3 "~" H 3500 4600 50  0001 C CNN
	1    3500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4500 3900 4500
Wire Wire Line
	3300 4400 3300 4500
Wire Wire Line
	3900 4400 3700 4400
Text GLabel 3900 4500 2    50   Input ~ 0
GND
Text GLabel 3900 4400 2    50   Input ~ 0
D22
Wire Notes Line
	700  900  700  1800
Wire Notes Line
	700  1800 2000 1800
Wire Notes Line
	2000 1800 2000 900 
Wire Notes Line
	2000 900  700  900 
Text Label 800  1100 0    79   ~ 0
Esquema_Elétrico
Text Label 800  1300 0    79   ~ 0
Giovanni_Castro
Text Label 800  1500 0    79   ~ 0
Gabriel_Barbosa
Text Label 800  1700 0    79   ~ 0
04-08-2019
Text Notes 6100 4400 0    98   ~ 0
GitHub_Repository\n- github.com/Nabinho\nIncludes:\n- KiCad_Project\n- Arduino_Code\n- HTML_Code\n- B.O.M.
Wire Notes Line
	6000 3300 6000 4500
Wire Notes Line
	6000 4500 7900 4500
Wire Notes Line
	7900 4500 7900 3300
Wire Notes Line
	7900 3300 6000 3300
$EndSCHEMATC
