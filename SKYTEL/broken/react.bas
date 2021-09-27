100 REM             REACTION TIME
110 REM
120 CLS: DIM R(2,101)
130 J=0: K=0: C=60.9: REM   TIME CONSTANT 
140 INPUT "FLASH AT RANDOM OR FIXED POSITIONS (R/F)";A1$
150 IF A1$<>"R" AND A1$<>"F" THEN GOTO 140
160 CLS: F=1: I=0: S=0: S2=0: S3=0: S4=0: M1=200: M2=2500: H=0: L=10
170 T=M2*RND(1)+M1
180 FOR D=0 TO T: NEXT: REM    TIME DELAY BEFORE NEXT EVENT
190 IF F<>1 THEN GOTO 230
200 IF A1$="F" THEN PSET(64,24)
210 IF A1$="R" THEN PSET(127*RND,48*RND)
220 GOTO 240  
230 CLS
240 P$=INKEY$: IF P$<>"" THEN GOTO 260
250 I=I+1: GOTO 240  
260 IF P$="X" THEN GOTO 340  
270 IF I=0 THEN GOTO 340  
280 IF J>100 OR K>100 THEN GOTO 340  
290 IF F=2 THEN GOTO 310
300 J=J+1: R(F,J)=I/C: GOTO 320
310 K=K+1: R(F,K)=I/C
320 I=0: F=F+1: IF F>2 THEN F=1
330 GOTO 170
340 CLS
350 IF I=0 THEN PRINT "*** OUT OF SYNCH ***"
360 IF J>100 OR K>100 THEN PRINT "*** OUT OF SPACE ***"
370 INPUT "LIST DISAPPEARANCES OR REAPPEARANCES (D/R)";A2$
380 IF A2$<>"D" AND A2$<>"R" THEN GOTO 370  
390 IF A2$="D" THEN GOTO 410
400 F=1: U=J-1: GOTO 420  
410 F=2: U=K-1
420 FOR P=1 TO U
430 PRINT R(F,P);: S=S+R(F,P)
440 IF H<R(F,P) THEN H=R(F,P)
450 IF L>R(F,P) THEN L=R(F,P)
460 NEXT
470 IF U<3 THEN GOTO 640
480 PRINT: PRINT
490 PRINT "NUMBER OF DATA POINTS = ";U
500 PRINT "MAX = ";H
510 PRINT "MIN = ";L
520 PRINT "MEAN = ";S/U
530 FOR Q=1 TO U
540 S2=S2+(R(F,Q)-S/U)^2
550 S3=S3+(R(F,Q)-S/U)^3
560 S4=S4+(R(F,Q)-S/U)^4
570 NEXT
580 S2=SQR(S2/U)
590 S3=S3/(U*S2^3)
600 S4=S4/(U*S2^4)
610 PRINT "STANDARD DEVIATION = ";S2
620 PRINT "SKEWNESS = ";S3
630 PRINT "KURTOSIS = ";S4
640 PRINT
650 INPUT "ANOTHER LIST (Y/N)";A3$
660 IF A3$<>"Y" THEN GOTO 680
670 S=0: S2=0: S3=0: S4=0: H=0: L=10: CLS: GOTO 370
680 IF A3$<>"N" THEN GOTO 650
690 INPUT "CONTINUE TO ADD DATA (Y/N)";A4$
700 IF A4$="N" THEN GOTO 730  
710 IF A4$="Y" THEN GOTO 160  
720 GOTO 650  
730 REM ==========================================
740 REM FROM ASTRONOMICAL COMPUTING DEPARTMENT OF
750 REM SKY & TELESCOPE, AUGUST, 1986, PAGE 174
760 REM ==========================================
770 END
