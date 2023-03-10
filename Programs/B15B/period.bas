10 REM     PERIOD SEARCH BY A DISCRETE FOURIER
20 REM   TRANSFORM -- MARIA MITCHELL OBSERVATORY
25 REM
30 DIM X(100),Y(100)
40 GOSUB 360  
50 REM
60 REM ***************** THE DFT *****************
70 REM
80 Z9=0: A5=0: F0=F1-F4: C0=(N-1)/(N*Q)
90 PRINT "TRIAL #";TAB(15);"PERIOD";
100 PRINT TAB(30);"FREQUENCY";TAB(45);"STRENGTH"
110 FOR K=1 TO M
120   F=F0+K*F4:  B=P2*F:  C=0:  S=0
130   FOR I=1 TO N
140     A=B*X(I)
150     S=S+Y(I)*SIN(A): C=C+Y(I)*COS(A)
160   NEXT I
170   Z=(C*C+S*S)*C0: A5=A5+Z
180   IF Z<=Z9 THEN 200  
190   Z9=Z: F9=F: REM  NEW MAXIMUM STRENGTH
200   IF Z<Z0 THEN 230  
210   PRINT K;TAB(15);1/F;TAB(30);F;TAB(45);Z
220   L=1: GOTO 250  
230   IF L=0 THEN 250  
240   L=0: PRINT
250 NEXT K
260 A5=A5/M
270 REM 
280 PRINT
290 PRINT TAB(15);"PERIOD";TAB(30);"FREQUENCY";
300 PRINT TAB(45);"STRENGTH"
310 PRINT "AVERAGE";TAB(45);A5
320 PRINT "BEST";TAB(15);1/F9;TAB(30);F9;TAB(45);Z9
330 PRINT "AMPLITUDE ESTIMATE = ";4*SQR(Q*Z9)/N
340 END
350 REM
360 REM ******** THE INITIALIZING ROUTINES ********
370 P2=2*3.14159265: L=0
380 Z0=2: REM  TO SKIP PRINTING "WORTHLESS" PERIODS
390 REM
400 REM -------------- SET X,Y,X4,Q ---------------
410 REM
420 Q=0: N=0
430 READ X,Y: IF X=9999 THEN 450  
440 N=N+1: X(N)=X: Y(N)=Y: Q=Q+Y(N)*Y(N): GOTO 430  
450 X4=X(N)-X(1)
460 REM
470 REM --------------- SET F1,F4,M ---------------
480 REM
490 PRINT "LONGEST USEFUL PERIOD TO TRY = ";X4/2
500 INPUT "LONGEST PERIOD TO TRY THIS RUN ";P9
510 INPUT "COARSE, MEDIUM OR FINE (C,M,F)";Z$
520 S9=0.20: REM  ASSUME COARSE SPACING
530 IF Z$="M" THEN S9=0.10
540 IF Z$="F" THEN S9=0.05
550 F4=S9/X4: F1=1/P9
560 INPUT "MAXIMUM NUMBER OF TRIALS ";M
570 F8=F1+(M-1)*F4
580 PRINT "THEN SHORTEST ALLOWABLE PERIOD = ";1/F8
590 INPUT "SHORTEST PERIOD TO TRY THIS RUN ";P0
600 F8=1/P0: M=INT((F8-F1)/F4)+1
610 RETURN
620 REM
630 REM   LIST OF X,Y VALUES
640 DATA -44.874, -0.129, -32.912, -0.008
650 DATA -15.959,  0.102, -14.964,  0.150
660 DATA   7.974,  0.124,  11.962, -0.054
670 DATA  12.961, -0.100,  13.959, -0.032
680 DATA  15.958,  0.113,  17.954,  0.052
690 DATA  36.895, -0.058,  40.881,  0.118
700 DATA  42.878, -0.033,  44.873, -0.039
710 DATA  9999,9999: REM  DUMMY END VALUES
800 REM ******************************************
810 REM  FROM SKY & TELESCOPE'S ASTRONOMICAL COM-
820 REM   PUTING DEPARTMENT FOR SEPTEMBER, 1988
830 REM ******************************************
