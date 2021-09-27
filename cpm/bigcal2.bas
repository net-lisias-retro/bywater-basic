90 PRINT CHR$(26):      'Put your clear screen code here !!
100 PRINT TAB(25);"EXTENDED PRECISION CALCULATOR":PRINT
110 '
120 PRINT TAB(30); "JUDSON D. MCCLENDON":PRINT
130 ' 844 Sun Valley Road
140 ' Birmingham, AL 35215
150 '
160 ' Compuserve 74415,1003
170 '
180 PRINT TAB(20);" Modified for S-Basic by R.J. Sandel"
190 ' Added always dump and fundamental operations print.
191 ' Corrected obvious errors, and added initial instructions
192 PRINT:PRINT:PRINT:PRINT:
193 PRINT "Legal commands are: ADD, SUB, MUL, & DIV for math operations"
194 PRINT:PRINT "A or EA for Enter into Register A:  ";
195 PRINT " PA for Print A:   CA for Clear A "
196 PRINT: PRINT "XAB for Exchange A and B:   MAB for Move A into B:  ";
197 PRINT " similar for other registers":PRINT
198 PRINT "ZAP for Clear All:         END or QUIT or Q for termination.":PRINT
199 PRINT:PRINT "Warning !!! 100 place divisions take a while !!!":PRINT:PRINT
200 PRINT TAB(30);:INPUT "Enter maximum (10 to 100) precision desired ";SZ$
205                          ' SIZE = MAXIMUM DIGITS PRECISION
206 PRINT CHR$(26): '         Clear Screen Again
210 DEFINT A-Z : I=0:J=0:K=0:L=0
220 SIZE = VAL(SZ$)
221 IF SIZE <10  THEN 200
222 IF SIZE > 100 THEN 200
230 E1=0:E2=0:E3=0:E4=0:  ' DIGITS TO LEFT OF DECIMAL POINT
240 E6=0:E7=0:E8=0:E9=0:  ' NUMBER LENGTH
250 DIM EA(SIZE),EB(SIZE),EC(SIZE),EH(SIZE): ' REGISTERS EH IS TEMP HOLD
1000 ' *** Command Loop
1010 PRINT
1015 GOSUB 8000:PRINT
1020 LINE INPUT "ENTER COMMAND: ",COMMAND$
1025 COMMAND$=TRIM$(COMMAND$)
1030 IF COMMAND$="END" THEN END
1031 IF COMMAND$="Q"   THEN END
1032 IF COMMAND$="QUIT"   THEN END
1040 IF COMMAND$="ADD" THEN GOSUB 3000:GOTO 1000
1050 IF COMMAND$="SUB" THEN GOSUB 4000:GOTO 1000
1060 IF COMMAND$="MUL" THEN GOSUB 5000:GOTO 1000
1070 IF COMMAND$="DIV" THEN GOSUB 6000:GOTO 1000
1200 IF COMMAND$="DMP" THEN GOSUB 8000:GOTO 1000
1210 IF COMMAND$="EA" THEN GOSUB 8100:GOTO 1000
1211 IF COMMAND$="A"  THEN GOSUB 8100:GOTO 1000
1220 IF COMMAND$="PA" THEN GOSUB 8200:GOTO 1000
1230 IF COMMAND$="EB" THEN GOSUB 8300:GOTO 1000
1231 IF COMMAND$="B"  THEN GOSUB 8300:GOTO 1000
1240 IF COMMAND$="PB" THEN GOSUB 8400:GOTO 1000
1250 IF COMMAND$="EC" THEN GOSUB 8500:GOTO 1000
1251 IF COMMAND$="C"  THEN GOSUB 8500:GOTO 1000
1260 IF COMMAND$="PC" THEN GOSUB 8600:GOTO 1000
1270 IF COMMAND$="XAB" THEN GOSUB 8700:GOTO 1000
1280 IF COMMAND$="XAC" THEN GOSUB 8800:GOTO 1000
1290 IF COMMAND$="XBC" THEN GOSUB 8900:GOTO 1000
1300 IF COMMAND$="ZAP" THEN GOSUB 9000:GOTO 1000
1310 IF COMMAND$="MAB" THEN GOSUB 9100:GOTO 1000
1320 IF COMMAND$="MAC" THEN GOSUB 9200:GOTO 1000
1330 IF COMMAND$="CA" THEN GOSUB 9300:GOTO 1000
1340 IF COMMAND$="MBA" THEN GOSUB 9400:GOTO 1000
1350 IF COMMAND$="MBC" THEN GOSUB 9500:GOTO 1000
1360 IF COMMAND$="CB" THEN GOSUB 9600:GOTO 1000
1370 IF COMMAND$="MCA" THEN GOSUB 9700:GOTO 1000
1380 IF COMMAND$="MCB" THEN GOSUB 9800:GOTO 1000
1390 IF COMMAND$="CC" THEN GOSUB 9900:GOTO 1000
1900 PRINT "Invalid Command"
1910 GOTO 1000
3000 PRINT:PRINT " B = B + A ":PRINT
3010 IF E1<E2 THEN SC=E2-E1:GOSUB 7200
3020 IF E2<E1 THEN SC=E1-E2:GOSUB 7400
3030 IF E7<E6 THEN E7=E6
3100 FOR I=E6 TO 1 STEP -1
3110   EB(I)=EB(I)+EA(I)
3120   IF EB(I)>9 THEN EB(I-1)=EB(I-1)+1:EB(I)=EB(I)-10
3130 NEXT
3140 GOSUB 7700
3150 GOSUB 7800
3190 RETURN
4000 PRINT:PRINT " B = B - A ":PRINT
4010 IF E1<E2 THEN SC=E2-E1:GOSUB 7200
4020 IF E2<E1 THEN SC=E1-E2:GOSUB 7400
4030 IF E7<E6 THEN E7=E6
4100 FOR I=E6 TO 1 STEP -1
4110   EB(I)=EB(I)-EA(I)
4120   IF EB(I)<0 THEN EB(I-1)=EB(I-1)-1:EB(I)=EB(I)+10
4130 NEXT
4140 GOSUB 7700
4150 GOSUB 7800
4190 RETURN
5000 PRINT:PRINT " C = B * A ":PRINT
5010 GOSUB 9900
5020 E8=E7
5030 FOR I=E6 TO 1 STEP -1
5040   FOR K=E7 TO 0 STEP -1
5050     EC(K)=EC(K)+EB(K)*EA(I)
5060     IF K>=SIZE THEN 5100
5070     WHILE EC(K+1)>9
5080       EC(K)=EC(K)+1:EC(K+1)=EC(K+1)-10
5090     WEND
5100   NEXT
5110   FOR L=E8 TO 0 STEP -1
5120     EC(L+1)=EC(L)
5130   NEXT :EC(0)=0
5140   E8=E8+1
5150 NEXT
5160 E8=E6+E7:E3=E1+E2
5170 GOSUB 7900
5190 RETURN
6000 PRINT:PRINT " C = B / A ":PRINT
6010 IF E6=0 THEN PRINT "Divide by Zero":RETURN
6020 GOSUB 9900
6030 E9=E7:E4=E2:FOR I=0 TO E7:EH(I)=EB(I):NEXT
6040 IF E2<E1 THEN SC=E1-E2:GOSUB 7400
6050 IF E7<E6 THEN E7=E6
6060 E3=E2-E1+1 :E8=1
6090 ZF=0
6100 WHILE ZF=0
6110   I=0:WHILE ((I<=E6) AND (EA(I)=EB(I))):I=I+1:WEND
6120   IF I<=E6 AND EB(I)<EA(I) THEN GOSUB 6500:GOTO 6190
6130   EC(E8)=EC(E8)+1
6140   FOR I=E6 TO 1 STEP -1
6150     EB(I)=EB(I)-EA(I)
6160     IF EB(I)<0 THEN EB(I-1)=EB(I-1)-1:EB(I)=EB(I)+10
6170   NEXT
6190 WEND
6200 IF E8<E3 THEN E8=E3
6210 E7=E9:E2=E4:FOR I=0 TO E7:EB(I)=EH(I):NEXT
6270 GOSUB 7900
6290 RETURN
6500 ZF=1
6510 FOR I=1 TO E7+1
6520   IF EB(I)<>0 THEN ZF=0
6530   EB(I-1)=EB(I)
6540 NEXT
6560 IF E8<SIZE THEN E8=E8+1 ELSE ZF=1
6590 RETURN
7000 '  Get Shift Digits
7010 INPUT "Enter number of digits to shift: ",SC
7090 RETURN
7100 '  Shift A left (SC digits)
7110 FOR I=0 TO E6-SC
7120   EA(I)=EA(I+SC)
7130 NEXT
7140 FOR I=E6-SC+1 TO E6
7150   EA(I)=0
7160 NEXT
7170 E6=E6-SC:E1=E1-SC
7190 RETURN
7200 '  Shift A right (SC digits)
7210 FOR I=E6 TO 0 STEP -1
7220   EA(I+SC)=EA(I)
7230 NEXT
7240 FOR I=0 TO SC-1
7250   EA(I)=0
7260 NEXT
7270 E6=E6+SC:E1=E1+SC
7290 RETURN
7300 '  Shift B left (SC digits)
7310 FOR I=0 TO E7-SC
7320   EB(I)=EB(I+SC)
7330 NEXT
7340 FOR I=E7-SC+1 TO E7
7350   EB(I)=0
7360 NEXT
7370 E7=E7-SC:E2=E2-SC
7390 RETURN
7400 '  Shift B right (SC digits)
7410 FOR I=E7 TO 0 STEP -1
7420   EB(I+SC)=EB(I)
7430 NEXT
7440 FOR I=0 TO SC-1
7450   EB(I)=0
7460 NEXT
7470 E7=E7+SC:E2=E2+SC
7490 RETURN
7500 '  Shift C left (SC digits)
7510 FOR I=0 TO E8-SC
7520   EC(I)=EC(I+SC)
7530 NEXT
7540 FOR I=E8-SC+1 TO E8
7550   EC(I)=0
7560 NEXT
7570 E8=E8-SC:E3=E3-SC
7590 RETURN
7600 '  Shift C right (SC digits)
7610 FOR I=E8 TO 0 STEP -1
7620   EC(I+SC)=EC(I)
7630 NEXT
7640 FOR I=0 TO SC-1
7650   EC(I)=0
7660 NEXT
7670 E8=E8+SC:E3=E3+SC
7690 RETURN
7700 '  Normalize A
7710 WHILE (E6>E1) AND (EA(E6)=0):E6=E6-1:WEND
7720 IF E6=0 THEN E1=0:GOTO 7790
7730 IF EA(0)<>0 THEN SC=1:GOSUB 7200:GOTO 7790
7740 I=1:WHILE (I<E1) AND (EA(I)=0):I=I+1:WEND
7750 IF I>1 THEN SC=I-1:GOSUB 7100
7790 RETURN
7800 '  Normalize B
7810 WHILE (E7>E2) AND (EB(E7)=0):E7=E7-1:WEND
7820 IF E7=0 THEN E2=0:GOTO 7890
7830 IF EB(0)<>0 THEN SC=1:GOSUB 7400:GOTO 7890
7840 I=1:WHILE (I<E2) AND (EB(I)=0):I=I+1:WEND
7850 IF I>1 THEN SC=I-1:GOSUB 7300
7890 RETURN
7900 '  Normalize C
7910 WHILE (E8>E3) AND (EC(E8)=0):E8=E8-1:WEND
7920 IF E8=0 THEN E3=0:GOTO 7990
7930 IF EC(0)<>0 THEN SC=1:GOSUB 7600:GOTO 7990
7940 I=1:WHILE (I<E3) AND (EC(I)=0):I=I+1:WEND
7950 IF I>1 THEN SC=I-1:GOSUB 7500
7990 RETURN
8000 ' Dump Registers 
8010 GOSUB 8200
8020 GOSUB 8400
8030 GOSUB 8600
8090 RETURN
8100 ' Extract EA from string
8110 GOSUB 9300 :INPUT "Enter A: ",EN$ :E1=LEN(EN$)
8120 FOR I=1 TO LEN(EN$)
8130   X$=MID$(EN$,I,1)
8140   IF X$="." THEN E1=E6:GOTO 8180
8150   IF X$<"0" OR X$>"9" THEN PRINT "Error in A, char:";I
8160   E6=E6+1
8170   EA(E6)=VAL(X$)
8180 NEXT :GOSUB 7700
8190 RETURN
8200  ' PRINT A
8210 PRINT "A: "; :CC=3
8220 IF E1=0 THEN PRINT "0"; :CC=4
8230 FOR I=1 TO E6
8240   IF I=E1+1 THEN PRINT "."; :CC=CC+1
8250   PRINT USING "#";EA(I); :CC=CC+1
8260 IF I<>E1 THEN IF ABS(I-E1)MOD 5=0 THEN PRINT " ";
8261 CC=CC+1:IF CC>70 THEN PRINT:PRINT "   ";:CC=3
8262 IF E1=0 THEN PRINT "  ";:CC=4
8270 NEXT:PRINT
8290 RETURN
8300  ' EXTRACT EB FROM STRING
8310 GOSUB 9600 :INPUT "Enter B: ",EN$ :E2=LEN(EN$)
8320 FOR I=1 TO LEN(EN$)
8330   X$=MID$(EN$,I,1)
8340   IF X$="." THEN E2=E7:GOTO 8380
8350   IF X$<"0" OR X$>"9" THEN PRINT "Error in B, char:";I
8360   E7=E7+1
8370   EB(E7)=VAL(X$)
8380 NEXT :GOSUB 7800
8390 RETURN
8400  ' PRINT B
8410 PRINT "B: "; :CC=3
8420 IF E2=0 THEN PRINT "0"; :CC=4
8430 FOR I=1 TO E7
8440   IF I=E2+1 THEN PRINT "."; :CC=CC+1
8450   PRINT USING "#";EB(I); :CC=CC+1
8460   IF I<>E2 THEN IF ABS(I-E2)MOD 5=0 THEN PRINT " ";:CC=CC+1
8461   IF CC>70 THEN PRINT:PRINT "   ";:CC=3:IF E2=0 THEN PRINT "  ";:CC=4
8470 NEXT:PRINT
8490 RETURN
8500 '  Extract EC from string
8510 GOSUB 9900 :INPUT "Enter C: ",EN$ :E3=LEN(EN$)
8520 FOR I=1 TO LEN(EN$)
8530   X$=MID$(EN$,I,1)
8540   IF X$="." THEN E3=E8:GOTO 8580
8550   IF X$<"0" OR X$>"9" THEN PRINT "Error in C, char";I
8560   E8=E8+1
8570   EC(E8)=VAL(X$)
8580 NEXT :GOSUB 7900
8590 RETURN
8600 ' Print C
8610 PRINT "C: "; :CC=3
8620 IF E3=0 THEN PRINT "0"; :CC=4
8630 FOR I=1 TO E8
8640   IF I=E3+1 THEN PRINT "."; :CC=CC+1
8650   PRINT USING "#";EC(I); :CC=CC+1
8660   IF I<>E3 THEN IF ABS(I-E3)MOD 5=0 THEN PRINT " ";
8661   CC=CC+1:IF CC>70 THEN PRINT:PRINT "   ";
8662   CC=3:IF E3=0 THEN PRINT "  ";:CC=4
8670 NEXT:PRINT
8690 RETURN
8700 '  Exchange A BT
8710 IF E6>E7 THEN J=E6 ELSE J=E7
8720 FOR I=0 TO J:T=EA(I):EA(I)=EB(I):EB(I)=T:NEXT ' FOR I=0 TO J:SWAP EA(I),EB(I):NEXT
8730 SWAP E6,E7:SWAP E1,E2
8790 RETURN
8800 '   Exchange A C
8810 IF E6>E8 THEN J=E6 ELSE J=E8
8820 FOR I=0 TO J:T=EA(I):EA(I)=EC(I):EC(I)=T:NEXT ' FOR I=0 TO J:SWAP EA(I),EC(I):NEXT 
8830 SWAP E6,E8:SWAP E1,E3
8890 RETURN
8900 '  Exchange B C 
8910 IF E7>E8 THEN J=E7 ELSE J=E8
8920 FOR I=0 TO J:T=EB(I):EB(I)=EC(I):EC(I)=T:NEXT ' FOR I=0 TO J:SWAP EB(I),EC(I):NEXT
8930 SWAP E7,E8:SWAP E2,E3
8990 RETURN
9000 '  Clear all regs
9010 GOSUB 9300
9020 GOSUB 9600
9030 GOSUB 9900
9090 RETURN
9100 '  Move A B T
9110 IF E6>E7 THEN J=E6 ELSE J=E7
9120 FOR I=0 TO J:EB(I)=EA(I):NEXT
9130 E7=E6:E2=E1
9190 RETURN
9200 '  Move A C "
9210 IF E6>E8 THEN J=E6 ELSE J=E8
9220 FOR I=0 TO J:EC(I)=EA(I):NEXT
9230 E8=E6:E3=E1
9290 RETURN
9300  ' Clear A
9320 FOR I=0 TO E6:EA(I)=0:NEXT
9330 E6=0:E1=0
9390 RETURN
9400 '  Move B A
9410 IF E6>E7 THEN J=E6 ELSE J=E7
9420 FOR I=0 TO J:EA(I)=EB(I):NEXT
9430 E6=E7:E1=E2
9490 RETURN
9500 '  Move B C
9510 IF E7>E8 THEN J=E7 ELSE J=E8
9520 FOR I=0 TO J:EC(I)=EB(I):NEXT
9530 E8=E7:E3=E2
9590 RETURN
9600  ' Clear BNT
9620 FOR I=0 TO E7:EB(I)=0:NEXT
9630 E7=0:E2=0
9690 RETURN
9700 '  Move C A 
9710 IF E6>E8 THEN J=E6 ELSE J=E8
9720 FOR I=0 TO J:EA(I)=EC(I):NEXT
9730 E6=E8:E1=E3
9790 RETURN
9800 '  Move C B
9810 IF E7>E8 THEN J=E7 ELSE J=E8
9820 FOR I=0 TO J:EB(I)=EC(I):NEXT
9830 E7=E8:E2=E3
9890 RETURN
9900 '  Clear C
9920 FOR I=0 TO E8:EC(I)=0:NEXT
9930 E8=0:E3=0
9990 RETURN
9991 REM ---------------------------------
9992 REM Updated for bwBASIC 3.0 by Howard Wulf, AF5NE, May 7th  2015:
9993 REM a) added line 1025
9994 REM b) changed SWAP EA(I),EB(I)
9999 END

