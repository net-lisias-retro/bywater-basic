5 CLS
10 PRINT"   CHECKBOOK MAINTENANCE PROGRAM
15 PRINT"          BY DR. PETER SHENKIN
17 PRINT"******************************************************
20 PRINT" THIS SELF-DOCUMENTING PROGRAM WILL KEEP TRACK OF ALL
22 PRINT" CHECKBOOK ITEMS. dEPOSITS AND EXPENSES MAY BE 
24 PRINT" CATEGORIZED. UP TO 100 CATEGORIES ARE ALLOWED.
25 PRINT" CATEGORIES ENTERED FROM PROG. LINES 3020-3089
26 PRINT" CHECKBOOK ITEMS MAY BE STORED ON CASSETTE OR DISKETTE
27 PRINT" AND READ IN FROM CASSETTE OR DISKETTE.
28 PRINT" AT PRESENT DIMENSIONING IS SET UP FOR A MAXIMUM OF
30 PRINT" 120 ITEMS IN YOUR CHECKBOOK AT ANY ONE TIME. THIS MAY BE
32 PRINT" CHANGED BY CHANGING DIMENSION VARIABLE V IN LINE 101
34 PRINT" TO RUN PROGRAM DELETE REM STATEMENTS FOR MEMORY SPACE.
36 INPUT" PRESS ENTER TO BEGIN.THERE SHOULD BE NO PROBLEM";Z9
50 CLS:CLEAR 5500
70 INPUT "ARE DISK DRIVE(S) IN USE(Y/N)";ZD$
80 IF ZD$<>"Y" AND ZD$<>"N" THEN PRINT"INPUT ERROR!":GOTO 70
101 V=120
102 DIM CN(V),D$(V),P$(V),T(V),A(V),B(V)
105 GOSUB 990
110 REM CHECK MENU
120 GOSUB 2000
990 REM SUBROUTINE WITH PRINT USING FORMAT VARIABLES
1000 H$="CHK NO.   DATE     CHK ISSUED TO      TYPE    AMOUNT      BAL.!"
1010 Z$="####   %      %   %              %    ##  $$#####.## $$#####.##"
1020 Z1$="       %      %                                      $$#####.##"
1099 RETURN
1100 REM SUBROUTINE PRINTING FORMATS
1110 PRINT USING H$;ZZ$
1120 IF Z2$="Y" THEN LPRINT "ITEM #";TAB(10); " ";:LPRINT USING H$;ZZ$
1199 RETURN
1200 REM SUBROUTINE FOR PRINTING CHECKBOOK INFORMATION
1210 PRINT USING Z$;CN(I);D$(I);P$(I);T(I);A(I);B(I)
1212 IF Z2$="Y" THEN LPRINT USING "####";I;:LPRINT TAB(10); " ";:LPRINT USING Z$;CN(I),D$(I),P$(I),T(I),A(I),B(I)
1215 RETURN
1230 REM SUBROUTINE FOR INPUTTING CHECKBOOK INFO. FROM TAPE
1235 INPUT #-1,CN(I),D$(I),P$(I),T(I),A(I),B(I)
1240 RETURN
1245 REM SUBROUTINE FOR OUTPUTTING CHECKBOOK INFO. ONTO TAPE
1250 WRITE #-1,CN(I),D$(I),P$(I),T(I),A(I),B(I)
1255 RETURN
1260 REM SUBROUTINE FOR PRINTING PREVIOUS BALANCE
1262 PRINT USING Z1$;D$(I-1);B(I-1)
1263 IF Z2$="Y" THEN LPRINT USING "####";0;: LPRINT  TAB(10); " ";:LPRINT USING Z1$;D$(I-1),B(I-1)
1265 RETURN
1299 RETURN
1300 REM SUBROUTINE FOR INPUTTING CHECKBOOK INFO. FROM DISK
1305 PRINT "I=";I
1310 INPUT # 1,CN(I),D$(I),P$(I),T(I),A(I),B(I)
1320 RETURN
1350 REM SUBROUTINE FOR OUTPUTTING CHECKBOOK INFO. ONTO DISK
1360 WRITE # 1,CN(I),D$(I),P$(I),T(I),A(I),B(I)
1370 RETURN
1500 REM SUBROUTINE TO ENTER NEW ENTRY
1510 INPUT "INPUT DATE ";D$(I)
1515 PRINT "INPUT C FOR CHECK,D FOR DEP.,CM FOR MISC. CHARGE";
1520 INPUT Z9$
1525 IF Z9$="C" GOTO 1540
1526 IF Z9$="D" GOTO 1570
1527 IF Z9$="CM" GOTO 1600
1530 PRINT "INPUT ERROR. TRY AGAIN":GOTO 1515
1540 CN(I)=CI :CI=CI+1
1545 IF ZJ=99 THEN CI=CI-1
1550 INPUT "CHECK ISSUED TO";P$(I)
1555 INPUT "CHECK CATEGORY TYPE(0 TO SEE CATEGORIES)";T(I):IF T(I)=0 THEN GOSUB 3000: CLS: GOTO 1555
1560 INPUT "CHECK AMOUNT";A(I)
1565 B(I)=B(I-1)-A(I):IF ZJ=99 THEN B(I)=B(IT-1)-A(I)
1569 GOTO 1610
1570 CN(I)=-1
1575 INPUT "WHAT WAS DEPOSITED ";P$(I)
1580 INPUT"DEPOSIT CATEGORY TYPE(0 TO SEE CATEGORIES)";T(I):IF T(I)=0 THEN GOSUB 3000: CLS: GOTO 1580
1585 INPUT "AMOUNT OF DEPOSIT ";A(I)
1590 B(I)=B(I-1)+A(I):IF ZJ=99 THEN B(I)=B(IT-1)+A(I)
1595 GOTO 1610
1600 CN(I)=-2
1602 INPUT "WHY CHARGED TO ACCT. ";P$(I)
1604 INPUT "CHARGE AMOUNT";A(I)
1605 INPUT "CHARGE CATEGORY TYPE(0 TO SEE CATEGORIES)";T(I):IF T(I)=0 THEN GOSUB 3000: CLS: GOTO 1605
1606 B(I)=B(I-1)-A(I):IF ZJ=99 THEN B(I)=B(IT-1)-A(I)
1608 GOTO 1610
1610 CLS
1613 GOSUB 1100
1614 GOSUB 1260
1615 GOSUB 1200
1616 FOR K=1 TO 4:PRINT:NEXT K
1617 PRINT "IF ERROR INPUT E.OTHERWISE ENTER";:INPUT Z8$
1619 IF ZJ=99 THEN RETURN
1621 IF Z8$="E" GOTO 1623
1622 GOTO 1625
1623 Z8$="ZZZZ":IF Z9$="C" THEN CI=CI-1
1624 CLS:GOTO 1510
1625 PRINT "ANY MORE ENTRIES (Y/N)";:INPUT Z9$
1630 IF Z9$="N" GOTO 1690
1635 IF Z9$="Y" GOTO 1650
1640 PRINT "INPUT ERROR. TRY AGAIN.":GOTO 1625
1650 I=I+1 :CLS:GOTO 1510
1690 CN(0)=I
1699 RETURN
2000 REM MENU SUBROUTINE
2010 CLS
2020 PRINT"       CHECKBOOK MAINTENANCE PROGRAM  "
2025 PRINT:PRINT "CHOOSE NUMBER OF DESIRED OPTION":PRINT
2030 PRINT "1.SET UP NEW CHECKBOOK"
2035 PRINT "2.INPUT OLD CHECKBOOK FROM TAPE"
2040 PRINT "3.ADD TO OLD CHECKBOOK"
2050 PRINT "4.OUTPUT CHECKBOOK TO CASSETTE"
2055 PRINT "5.REVIEW OF CHECK EXPENSE CATEGORIES"
2060 PRINT "6.PRINT CHECKBOOK 10 ENTRIES AT A TIME OR LINEPRINT."
2070 PRINT "7.LIST BY CATEGORY"
2075 PRINT "8.LOAD OLD CHECKBOOK FROM DISKETTE
2080 PRINT "9.OUTPUT CHECKBOOK TO DISKETTE
2082 PRINT"10.EDIT CHECKBOOK ITEM
2085 PRINT "11.END THIS PROGRAM"
2090 PRINT:INPUT "OPTION # ";Z
2092 CLS
2094 ON Z GOSUB 2200,2400,2600,2800,3000,3200,3500,2500,2900,4000,3900
2097 GOTO 2010
2099 RETURN
2200 REM SUBROUTINE FOR SETTING UP NEW CHECKBOOK
2210 I=1
2215 INPUT "INITIAL BALANCE";B(0)
2217 INPUT "INITIAL CHECK NUMBER";CI
2218 INPUT"INPUT INITIAL DATE IN FORM MM/DD/YY";D$(0)
2219 CLS
2220 REM NOW WRITE CHECK ,MAKE DEPOSIT,OR OTHER CHARGE
2225 GOSUB 1500
2250 RETURN
2400 REM SUBROUTINE FOR INPUTTING OLD CHECKBOOK FROM TAPE
2410 CLS:PRINT "PUT & POSITION DATA TAPE IN CASSETTE #-1."
2412 PRINT "PRESS PLAY BUTTON."
2415 PRINT "PRESS ENTER WHEN READY.":INPUT Q
2417 ' IF ZD$="Y" THEN CMD"T"
2420 INPUT #-1,CI,CN(0),B(0),D$(0)
2430 FOR I=1 TO CN(0)
2435 ' IF ZD$="Y" THEN CMD"T"
2440 GOSUB 1230
2450 NEXT I
2460 RETURN
2500 REM SUBROUTINE FOR INPUTTING OLD CHECKBOOK FROM DISK
2510 CLS:INPUT"WHAT IS THE NAME OF THE DISK CHECK FILE";CF$
2515 PRINT"PRESS ENTER WHEN DISKETTE WITH ";CF$;" IS READY";:INPUT Q
2520 OPEN"I",1,CF$: INPUT #1,CI,CN(0),B(0),D$(0)
2530 FOR I=1 TO CN(0): GOSUB 1300:NEXT I
2560 RETURN
2600 REM SUBROUTINE TO ADD TO CHECKBOOK
2610 GOSUB 1500
2615 CLOSE 1
2620 RETURN
2800 REM SUBROUTINE FOR OUTPUTTING CHECKBOOK TO CASSETTE
2810 CLS:PRINT"POSITION BLANK TAPE INTO CASSETTE PLAYER"
2812 PRINT"PRESS PLAY AND RECORD BUTTONS."
2815 PRINT "PRESS ENTER WHEN READY.":INPUT Q
2817 ' IF ZD$="Y" THEN CMD"T"
2820 WRITE #-1,CI,CN(0),B(0),D$(0)
2830 FOR I=1 TO CN(0)
2835 ' IF ZD$="Y" THEN CMD"T"
2840 GOSUB 1245
2850 NEXT I
2860 RETURN
2900 REM SUBROUTINE FOR OUTPUTTING OLD CHECKBOOK TO DISKETTE
2905 CLS:PRINT CF$;" IS THE PRESENT FILE."
2910 INPUT"ENTER THE DISK FILE NAME FOR OUTPUT ";CF$
2915 OPEN"O",1,CF$
2920 WRITE # 1,CI,CN(0),B(0),D$(0)
2930 FOR I=1 TO CN(0):GOSUB 1350: NEXT I
2955 CLOSE 1
2960 RETURN
3000 REM SUBROUTINE TO REVIEW EXPENSE CATEGORIES
3010 PRINT "CATEGORY   DESCRIPTION"
3020 PRINT "    1.      LOAN PAYMENT"
3022 PRINT "    2.      BANK CARD PAYMENT"
3024 PRINT "    3.      MEDICAL EXPENSE"
3025 REM THIS SPACE IS TO PUT IN CATEGORIES & DESCRIPTIONS IN
3026 PRINT "    4.      HOUSEKEEPING MONEY"
3028 PRINT "    5.      MORTGAGE
3030 PRINT "    6.      HOME EXPENSE,UTILITIES,ETC."
3050 PRINT "    7.      STORE CHARGE CARD PAYMENT"
3052 PRINT "    8.      INSURANCE"
3060 PRINT "   50.      PAYCHECK DEPOSIT "
3062 PRINT "   51.      CONSULTING FEE "
3064 PRINT "   52.      MEDICAL REIMBURSEMENT"
3066 PRINT "   53.      OTHER BUSINESS INCOME"
3068 PRINT "   54.      MISC. DEPOSITS"
3070 PRINT @ 230 ,"9.   BUSINESS EXPENSE ";
3072 PRINT @ 294,"10.  OTHER EXPENSE ";
3088 PRINT @ 896," "
3090 INPUT "PRESS ENTER TO RETURN ";Z3
3099 RETURN
3200 REM SUBROUTINE TO REVIEW CHECKBOOK
3204 INPUT"IS OUTPUT ON LINE PRINTER DESIRED(Y/N)";Z2$
3206 IF Z2$<>"Y" AND Z2$<>"N" THEN PRINT"INPUT ERROR!":GOTO 3204
3210 CLS
3215 I=1
3220 GOSUB 1100
3230 GOSUB 1260
3240 FOR I=1 TO CN(0)
3250 GOSUB 1200
3255 IF Z2$="Y" THEN GOTO 3270
3260 IF I/10=INT(I/10) AND I<>0 THEN GOSUB 3300
3270 NEXT I
3280 PRINT:INPUT"THE END. PRESS ENTER TO RETURN TO MENU.";Z3
3290 RETURN
3300 REM SUBROUTINE FOR TEN ENTRY SCREEN DISPLAY
3310 IF I=CN(0) THEN RETURN
3320 PRINT
3330 INPUT "PRESS ENTER FOR MORE ENTRIES.";Z3
3335 CLS:GOSUB 1100
3340 RETURN
3500 REM SUBROUTINE FOR LISTING BY CATEGORIES
3502 CLS:INPUT"IS LINE PRINTER OUTPUT DESIRED(Y/N)";Z2$
3504 IF Z2$<>"Y" AND Z2$<>"N" THEN GOTO 3502
3505 REM E1 IS TOTAL OF ITEM
3506 E1=0
3510 INPUT "INPUT CATEGORY NUMBER OF INTEREST";Z5
3520 GOSUB 1100
3530 FOR I=1 TO CN(0)
3540 IF T(I)=Z5 GOTO 3560
3550 GOTO 3580
3560 GOSUB 1200
3570 E1=E1+A(I)
3580 NEXT I
3590 PRINT:PRINT "TOTAL FOR THIS ITEM =$";E1
3592 IF Z2$="Y" THEN LPRINT:LPRINT"TOTAL FOR THIS ITEM =$";E1
3595 PRINT"PRESS ENTER TO RETURN TO MENU";:INPUT Z3
3599 RETURN
3900 REM SUBROUTINE TO END 
3905 CLS
3910 PRINT "ARE YOU SURE YOU WANT TO END(Y/N)";:INPUT Z3$
3920 IF Z3$="N" THEN RETURN
3930 IF Z3$="Y" THEN END
3940 PRINT "INPUT ERROR.TRY AGAIN.":GOTO 3910
4000 REM EDIT ROUTINE
4005 Z2$=""
4010 CLS:INPUT"ENTER ITEM NUMBER OF ITEM TO EDIT(-1 TO END)";IT
4015 IF IT=-1 THEN RETURN
4020 IF IT<0 OR IT>CN(0) OR IT<>INT(IT) THEN PRINT"INPUT ERROR!":FOR JJ=1 TO 300:NEXT:GOTO 4010
4030 I=IT:GOSUB 1100:GOSUB 1200
4033 ZA$=""
4035 INPUT"PRESS Y & <ENTER> IF EDIT DESIRED, JUST <ENTER> IF NOT";ZA$
4037 IF ZA$<>"Y" THEN GOTO 4005
4040 I=CN(0)+1
4042 IF IT=0 THEN GOTO 4200
4045 P$(I)=P$(IT):T(I)=T(IT):A(I)=A(IT):CN(I)=CN(IT)
4050 PRINT :INPUT"CHECK # ";CN(I)
4060 ZJ=99:GOSUB 1500
4070 ZJ=0
4080 IF Z8$="E" THEN GOTO 4000
4085 B=B(IT):REM OLD BALANCE
4090 CN(IT)=CN(I):P$(IT)=P$(I):T(IT)=T(I):A(IT)=A(I):B(IT)=B(I)
4100 IF B=B(IT) THEN RETURN
4110 FOR I=IT+1 TO CN(0): B(I)=B(I)+(B(IT)-B):NEXT
4115 RETURN
4200 INPUT "INITIAL BALANCE ";B(I)
4210 INPUT "INITIAL DATE ";D$(I)
4213 ZA$=""
4215 INPUT"IF OK PRESS Y AND <ENTER> ELSE JUST <ENTER>";ZA$
4220 IF ZA$<>"Y" THEN RETURN
4230 D$(0)=D$(I):B=B(0):B(0)=B(I)
4235 IF B=B(0) THEN RETURN
4240 FOR I=1 TO CN(0): B(I)=B(I)+(B(0)-B):NEXT
4245 RETURN
