5 REM -			COMPACTED:6/08/84
7 REM -     Removed LPRINT references 4-13-2020 Ken
10 PRINT "                     -=*OHM'S LAW*=-"
40 PRINT "                          MENU"
50 PRINT:PRINT TAB(10);"(1) Find I, given VOLTAGE and RESISTANCE (E and R)"
70 PRINT TAB(10);"(2) Find R, given VOLTAGE and CURRENT (V and I)"
90 PRINT TAB(10);"(3) Find E, given CURRENT and RESISTANCE (I and R)"
110 PRINT TAB(10);"(4) Find P (POWER), given VOLTAGE and CURRENT (E and I)"
130 PRINT TAB(10);"(5) Find P (POWER), given CURRENT and RESISTANCE (I and R)"
150 PRINT TAB(10);"(6) Find P (POWER), given VOLTAGE and RESISTANCE (E and R)"
170 PRINT TAB(10);"(7) Find two resistances in parallel, given R1 and R2"
190 PRINT TAB(10);"(8) Find RT, given unequal R1, R2, R3, R4 in parallel"
270 PRINT TAB(10);"(9) Find RT, given R1,R2,R3,R4 in SERIES-PARALLEL"
290 PRINT TAB(10);"(10) Find TOTAL CAPACITANCE (CT), in series circuit"
310 PRINT TAB(10);"(11) Find TOTAL CAPACITANCE (CT), 2 caps, parallel circuit"
330 PRINT TAB(10);"(12) Find TOTAL CAPACITANCE (CT), 3 caps in parallel"
350 PRINT TAB(10);"(13) Find PEAK AC VOLTAGE, given RMS value"
370 PRINT TAB(10);"(14) Find RMS VOLTAGE, given PEAK value"
390 PRINT TAB(10);"(15) Find INDUCTIVE REACTANCE (XL)"
410 PRINT TAB(10);"(16) Find CAPACITIVE REACTANCE (XC)"
430 PRINT TAB(10);"(17) Find IMPEDANCE (Z) of a series circuit"
445 PRINT TAB(10);"(18) Find IMPEDANCE (Z) of a parallel circuit"
447 PRINT
450 PRINT "     Select the number you require from the menu and press 'RETURN'"
485 PRINT
490 INPUT "Caps Lock ON. Enter choice from above or -1 to exit :",C
515 IF C = -1 THEN END
517 PRINT "Choice is:";C
520 IF C= 0 OR C> 18 THEN 10
530 ON C GOTO 540,710,880,1050,1220,1380,1540,1700,1930,2190,2360,2560,2770,2930,3070,3260,3430,3680
540 PRINT "Calculate CURRENT (I), given VOLTAGE and RESISTANCE (E and R)"
555 PRINT
560 INPUT "What is the value of E, in volts:",V
580 INPUT "Now enter the value of R, in ohms:",R
600 LET I= (V/R)
610 PRINT " I= ";(V/R);"amperes"
630 PRINT
640 PRINT " Do you wish to do this calculation again? (Y/N)":INPUT ANS$
660 IF ANS$="Y" THEN 540
670 PRINT "Do you wish to return to the menu? (Y/N)":INPUT ANS$
690 IF ANS$="Y" THEN 10
700 GOTO 10020
710 PRINT "Calculate RESISTANCE (R), given VOLTAGE and CURRENT (E and I)"
730 PRINT:PRINT
740 INPUT "Input the value of E, in volts:",V
760 INPUT "Now enter the value of I, in amperes:",I
780 LET R=(V/I):PRINT "R= ";(V/I);"ohms"
800 PRINT
810 PRINT "Do you wish to do this calculation again? (Y/N)":INPUT ANS$
830 IF ANS$="Y" THEN 710
835 PRINT
840 PRINT "Do you wish to return to the menu? (Y/N)":INPUT ANS$
860 IF ANS$="Y" THEN 10
870 GOTO 10020
875 PRINT
880 PRINT "Calculate VOLTAGE (E), given CURRENT and RESISTANCE (I and R)"
895 PRINT
900 INPUT "Enter the value for I, in amperes:",I
920 INPUT "Now enter the value for R, in ohms:",R
940 LET E=(I*R):PRINT "E= ";(I*R);"volts"
960 PRINT
970 PRINT "Do you wish to do this calculation again? (Y/N)":INPUT ANS$
990 IF ANS$="Y" THEN 880
995 PRINT
1000 PRINT "Do you wish to return to the menu? (Y/N)":INPUT ANS$
1020 IF ANS$="Y" THEN 10
1030 GOTO 10020
1040 PRINT
1050 PRINT "Calculate POWER(P), given VOLTAGE(E) and CURRENT(I)"
1065 PRINT
1070 INPUT "Input the value for E, in volts:",V
1090 INPUT "Now enter the value for I, in amperes:",I
1110 LET P=V*I:PRINT "I= ";(V*I);"watts"
1130 PRINT
1140 PRINT "Do you wish to do this calculation again? (Y/N)":INPUT ANS$
1160 IF ANS$="Y" THEN 1050
1175 PRINT
1180 PRINT "Do you wish to return to the menu? (Y/N)":INPUT ANS$
1200 IF ANS$="Y" THEN 10
1210 GOTO 10020
1220 PRINT "Calculate POWER(P), given CURRENT(I) and RESISTANCE(R)"
1235 PRINT
1240 INPUT "Enter the value for I, in amperes:",I
1260 INPUT "Now enter the value for R, in ohms:",R
1280 LET P=(I*I)*R:PRINT "P= ";(I*I)*R;"watts"
1300 PRINT
1310 PRINT "Do you wish to do this calculation again? (Y/N)":INPUT ANS$
1330 IF ANS$="Y" THEN 1220
1335 PRINT
1340 PRINT "Do you wish to return to the menu? (Y/N)":INPUT ANS$
1360 IF ANS$="Y" THEN 10
1370 GOTO 10020
1380 PRINT "Calculate POWER(P), given VOLTAGE(E) and RESISTANCE(R)"
1385 PRINT
1400 INPUT "Enter the value for E, in volts:",V
1420 INPUT "Now enter the value for R, in ohms:",R
1440 LET P=(V*V)/(R):PRINT "P= ";(V*V)/(R);"watts"
1460 PRINT
1470 PRINT "Do you wish to do this calculation again ? (Y/N)":INPUT ANS$
1490 IF ANS$="Y" THEN 1380
1495 PRINT
1500 PRINT "Do you wish to return to the menu? (Y/N)":INPUT ANS$
1520 IF ANS$="Y" THEN 10
1530 GOTO 10020
1535 PRINT
1540 PRINT "Calculate TOTAL RESISTANCE(RT) in parallel, given R1,R2"
1555 PRINT
1560 INPUT "Input the value for R1:",R1
1580 INPUT "Now input the value for R2:",R2
1600 LET RT= (R1*R2)/(R1+R2):PRINT "RT= ";(R1*R2)/(R1+R2);"ohms"
1620 PRINT
1630 PRINT "Do you wish to do this calculation again? (Y/N)":INPUT ANS$
1650 IF ANS$="Y" THEN 1540
1655 PRINT
1660 PRINT "Do you wish to return to the menu? (Y/N)":INPUT ANS$
1680 IF ANS$="Y" THEN 10
1690 GOTO 10020
1695 PRINT
1700 PRINT "Calculate TOTAL RESISTANCE(RT), given unequal R1,R2,R3,R4 values"
1715 PRINT
1720 PRINT "Enter the values for R1,R2,R3 and R4, in ohms"
1740 INPUT "R1=",R1
1750 INPUT "R2=",R2
1760 INPUT "R3=",R3
1770 INPUT "R4=",R4
1780 PRINT "R1=";R1;"ohms"
1790 PRINT "R2=";R2;"ohms"
1800 PRINT "R3=";R3;"ohms"
1810 PRINT "R4=";R4;"ohms"
1820 LET RT=(1)/(1/R1+1/R2+1/R3+1/R4)
1830 PRINT "RT= ";(1)/(1/R1+1/R2+1/R3+1/R4);"ohms"
1850 PRINT
1860 PRINT "Do you wish to do this calculation again? (Y/N)":INPUT ANS$
1880 IF ANS$="Y" THEN 1700
1885 PRINT
1890 PRINT "Do you wish to return to the menu? (Y/N)":INPUT ANS$
1910 IF ANS$="Y" THEN 10
1920 GOTO 10020
1925 PRINT
1930 PRINT "Calculate TOTAL RESISTANCE(RT), in series-parallel,"
1940 PRINT "given R1, R2, R3 and R4"
1965 PRINT
1970 PRINT "Enter the values for R1, R2, R3 and R4"
1990 INPUT "R1=",R1
2000 INPUT "R2=",R2
2010 INPUT "R3=",R3
2020 INPUT "R4=",R4
2030 PRINT "R1=";R1;"ohms"
2040 PRINT "R2=";R2;"ohms"
2050 PRINT "R3=";R3;"ohms"
2060 PRINT "R4=";R4;"ohms"
2070 PRINT
2080 LET RT=(1)/(1/(R1+R2))+(1/(R3+R4))
2090 PRINT "RT=";(1)/(1/(R1+R2))+(1/(R3+R4));"ohms"
2110 PRINT
2120 PRINT "Do you wish to do this calculation again? (Y/N)":INPUT ANS$
2140 IF ANS$="Y" THEN 1930
2145 PRINT
2150 PRINT "Do you wish to return to the menu? (Y/N)":INPUT ANS$
2170 IF ANS$="Y" THEN 10
2180 GOTO 10020
2185 PRINT
2190 PRINT "Calculate TOTAL CAPACITANCE(CT), in series circuit, given C1 and C2"
2205 PRINT
2210 INPUT "Enter value for C1, in MFD:",C1
2220 INPUT "Now enter the value for C2, in MFD:",C2
2240 PRINT "C1=";C1;"mfd"
2250 PRINT "C2=";C2;"mfd"
2260 LET CT=(C1*C2)/(C1+C2):PRINT "CT=";(C1*C2)/(C1+C2);"mfd"
2280 PRINT
2290 PRINT "Do you wish to do this calculation again? (Y/N)":INPUT ANS$
2310 IF ANS$="Y" THEN 2190
2315 PRINT
2320 PRINT "Do you wish to return to the menu? (Y/N)":INPUT ANS$
2340 IF ANS$="Y" THEN 10
2350 GOTO 10020
2355 PRINT
2360 PRINT "Calculate TOTAL CAPACITANCE(CT), parallel circuit, given C1 and C2"
2395 PRINT
2400 INPUT "Enter the value for C1, in mfd:",C1
2420 INPUT "Now enter the value for C2, in mfd:",C2
2440 PRINT "C1=";C1;"mfd"
2450 PRINT "C2=";C2;"mfd"
2460 LET CT=(C1*C2)/(C1+C2):PRINT "CT=";(C1*C2)/(C1+C2);"mfd"
2480 PRINT
2490 PRINT "Do you wish to do this calculation again? (Y/N)":INPUT ANS$
2510 IF ANS$="Y" THEN 2360
2515 PRINT
2520 PRINT "Do you wish to return to the menu? (Y/N)":INPUT ANS$
2540 IF ANS$="Y" THEN 10
2550 GOTO 10020
2555 PRINT
2560 PRINT "Calculate TOTAL CAPACITANCE(CT) for a parallel circuit,"
2570 PRINT "given C1, C2 and C3, in mfd"
2595 PRINT
2600 INPUT "C1=",C1
2610 INPUT "C2=",C2
2620 INPUT "C3=",C3
2630 PRINT "C1=";C1;"mfd"
2640 PRINT "C2=";C2;"mfd"
2650 PRINT "C3=";C3;"mfd"
2660 PRINT
2670 LET CT=(C1+C2+C3):PRINT "CT=";(C1+C2+C3);"mfd"
2690 PRINT
2700 PRINT "D0 you wish to do this calculation again? (Y/N)":INPUT ANS$
2720 IF ANS$="Y" THEN 2560
2725 PRINT
2730 PRINT "Do you wish to return to the menu? (Y/N)":INPUT ANS$
2750 IF ANS$="Y" THEN 10
2760 GOTO 10020
2765 PRINT
2770 PRINT "Calculate PEAK AC VOLTAGE, given RMS value"
2785 PRINT
2790 INPUT "Enter the RMS value, in volts:",RMS
2810 PRINT "RMS=";RMS;"volts"
2820 LET PEAK=(RMS*1.414):PRINT "PEAK=";(RMS*1.414);"volts"
2840 PRINT
2850 PRINT "Do you wish to do this calculation again? (Y/N)":INPUT ANS$
2870 IF ANS$="Y" THEN 2770
2875 PRINT
2880 PRINT "Do you wish to return to the menu? (Y/N)":INPUT ANS$
2900 IF ANS$="Y" THEN 10
2910 GOTO 10020
2920 PRINT
2930 PRINT "Calculate RMS VOLTAGE, given a value in PEAK VOLTS"
2945 PRINT
2950 INPUT "Enter the PEAK value, in volts AC:",PEAK
2960 PRINT "PEAK VOLTS=";PEAK
2970 LET RMS=(.707*PEAK):PRINT "RMS=";(.707*PEAK);"volts AC"
3000 PRINT "Do you wish to do this calculation again? (Y/N)":INPUT ANS$
3020 IF ANS$="Y" THEN 2930
3025 PRINT
3030 PRINT "Do you wish to return to the menu? (Y/N)":INPUT ANS$
3050 IF ANS$="Y" THEN 10
3060 GOTO 10020
3065 PRINT
3070 PRINT "Calculate INDUCTIVE REACTANCE (XL), given FREQUENCY and INDUCTANCE"
3090 PRINT
3100 INPUT "Enter FREQUENCY (F), in Hertz:",FREQ
3120 PRINT "FREQUENCY=";FREQ;"Hertz
3130 INPUT "Now enter the value for INDUCTANCE (L), in henrys:",L
3150 PRINT "INDUCTANCE=";L;"henrys"
3160 LET XL=(2*3.1416)*FREQ*L:PRINT "XL=";(2*3.1416)*FREQ*L;"ohms"
3180 PRINT
3190 PRINT "Do you wish to do this calculation again? (Y/N)":INPUT ANS$
3210 IF ANS$="Y" THEN 3070
3215 PRINT
3220 PRINT "Do you wish to return to the menu? (Y/N)":INPUT ANS$
3240 IF ANS$="Y" THEN 10
3245 GOTO 10020
3250 PRINT
3260 PRINT "Calculate CAPACITIVE REACTANCE (XC), given FREQ(F) and CAP(C)"
3275 PRINT
3280 INPUT "Enter the value for FREQ(F), in Hertz:",F
3290 PRINT "FREQ(F)=";F;"Hertz"
3300 INPUT "Now enter the value for CAP(C), in mfd:",C
3310 PRINT "CAP(C)=";C;"mfd"
3320 PRINT
3330 LET XC=(1)/((2*3.1416)*F*C):PRINT "XC=";(1)/((2*3.1416)*F*C);"ohms"
3350 PRINT
3360 PRINT "Do you wish to do this calculation again? (Y/N)":INPUT ANS$
3380 IF ANS$="Y" THEN 3260
3385 PRINT
3390 PRINT "Do you wish to return to the menu? (Y/N)":INPUT ANS$
3410 IF ANS$="Y" THEN 10
3415 GOTO 10020
3420 PRINT
3430 PRINT "Calculate IMPEDANCE(Z) of a series circuit, given values of"
3435 PRINT "RES(R), CAPACITIVE REACTANCE(XC) and INDUCTIVE REACTANCE(XL)"
3446 PRINT
3450 INPUT "Enter the value for RESISTANCE(R), in ohms:",R
3470 INPUT "Enter the value for CAPACITIVE REACTANCE(XC), in ohms:",XC
3490 INPUT "Enter the value for INDUCTIVE REACTANCE(XL), in ohms:",XL
3510 PRINT
3520 PRINT "RESISTANCE(R)=";R;"ohms"
3530 PRINT "CAPACITIVE REACTANCE(XC)=";XC;"ohms"
3540 PRINT "INDUCTIVE REACTANCE(XL)=";XL;"ohms"
3550 PRINT
3560 LET Z=SQR(R^2+((XL-XC)^2))
3570 PRINT "IMPEDANCE(Z)=";SQR(R^2+((XL-XC)^2));"ohms"
3590 PRINT
3600 PRINT "Do you wish to do this calculation again? (Y/N)":INPUT ANS$
3620 IF ANS$="Y" THEN 3430
3625 PRINT
3630 PRINT "Do you wish to return to the menu? (Y/N)":INPUT ANS$
3650 IF ANS$="Y" THEN 10
3660 GOTO 10020
3670 PRINT
3680 PRINT "Calculate IMPEDANCE (Z) of a parallel circuit"
3700 PRINT
3710 INPUT "Enter the value of L, in henrys:",L
3730 INPUT "Enter the value for FREQ (F), in Hertz:",F
3750 INPUT "Now enter the value for RESISTANCE (R) in ohms:",R
3765 PRINT "INDUCTANCE (L)=";L;"henrys"
3770 PRINT "FREQ (F)=";F;" Hertz"
3775 PRINT "RESISTANCE (R)=";R;"ohms"
3776 PRINT
3780 LET Z=((2*3.1416*F*L)^2)/(R)
3790 PRINT "IMPEDANCE (Z)=";((2*3.1416*F*L)^2)/(R);"ohms"
3810 PRINT "Do you wish to do this calculation again? (Y/N)":INPUT ANS$
3830 IF ANS$="Y" THEN 3680
3840 PRINT
3850 PRINT "Do you wish to return to the menu? (Y/N)":INPUT ANS$
3870 IF ANS$="Y" THEN 10
3880 GOTO 10020
3890 PRINT
10020 PRINT "Glad to have been of service! BYE!!
12000 REM --------------------------------------------------------------------------
12010 REM Change line number 0 to line number 5
12020 REM For automated testing, added 515 IF C = -1 THEN END
12999 END
