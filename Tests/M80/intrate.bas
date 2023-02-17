10 K=0:T0=0:T1=0
20 INPUT "INTEREST RATE (%) ",I2
30 J=I2/1200
40 INPUT "TERM IN MONTHS" ,N
50 D=1-(1+J)^(-N)
60 R=1000*J/D
70 P=9.9995E-03
80 F=R+P
90 F=(INT(F*100)/100)
100 PRINT "RATE PER $1000 = $",
110 PRINT USING "#####.##";F ' %7F2
120 INPUT "AMOUNT OF MORTGAGE ",Z
130 INPUT "PAYMENT IF KNOWN, ELSE 0 ",B
140 IF B>0 THEN 190
150 B=(Z/1000)*F
160 INPUT "DO YOU WANT PAYMENT IN EVEN DOLLARS ",Y$
170 IF Y$="N" THEN 190 ' IF Y$(1,1) ="N" THEN 190
180 B=INT (B+.99)
190 PRINT "MONTHLY PAYMENT = $",
200 PRINT USING "#####.##";B ' %7F2
210 INPUT "DO YOU WANT TO AMORTIZE THIS LOAN ",Y$
220 IF Y$="N" THEN 10 ' IF Y$(1,1)="N" THEN 10
230 INPUT "DO YOU WANT DETAIL DISPLAYED ",Y$
240 IF Y$="N" THEN S=1 ELSE S=0 ' IF Y$(1,1) ="N" THEN S=1 ELSE S=0
250 IF S=1 THEN 280
260 INPUT "DISPLAY INTERVAL ",D1
270 INPUT "DISPLAY START PERIOD ",D2
280 PRINT "PMT#  BALANCE   INT  PRIN RED   PER INT  TOT INT"
290 I1=J*Z
300 I1=I1+5E-03:I1=(INT(I1*100)/100)
310 T0=T0+I1:T1=T1+I1
320 P1=Z
330 Q=B-I1
340 Z=Z-Q
350 X=P1:Y=Q:X=X-Y
360 IF X>0 THEN 380
370 Z=0:B=P1+I1:Q=B-I1
380 K=K+1
390 IF S=1 THEN 460
400 IF K<>D1+D2 THEN 420
410 PRINT USING "###";K, ' %3I
420 IF K<D1 THEN 460
430 IF D1+D2<> K THEN 460 ELSE D2=D2+D1
440 PRINT USING "#######.##";Z,I1,Q,T0,T1 ' %9F2
450 T0=0
460 IF Z>0 THEN 290
470 PRINT:PRINT "FINAL TOTALS":PRINT
480 PRINT USING "###";K, ' %3I
490 PRINT USING "#######.##";Z,I1,Q,T0,T1 ' %9F2
500 PRINT "LAST PAYMENT = $",: PRINT USING "#####.##";B ' %7F2
510 STOP
600 REM ---------------------------------------------------
610 REM Changed %... to PRINT USING "#"
620 REM Changed Y$(1,1) to Y$
699 END