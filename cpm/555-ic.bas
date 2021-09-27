10 PRINT CHR$(11) : REM SCREEN CLEAR
20 DIM A(25),R(77)
30 PRINT "THIS PROGRAM AS DESIGNED TO SELECT THE"
40 PRINT "PROPER VALUES OF RESISTANCE AND CAPA-"
50 PRINT "CITANCE FOR THE PROPER OPERATION OF THE"
60 PRINT "555 TIMER-OSCILLATOR."
70 PRINT
80 PRINT "ENTER THE DESIRED FREQUENCY OF OSCILLATION( hz )"
90 INPUT F
100 PRINT CHR$(11)
110 PRINT
120 S=1
130 FOR I=1 TO 13
140 READ A(I)
150 NEXT I
160 PRINT
170 PRINT "THE FOLLOWING VALUES OF RESISTANCE"
180 PRINT "AND CAPACITANCE DETERMINE THE FRE-"
190 PRINT "QUENCY OF ";F;"HZ."
191 PRINT"              ---------------------"
192 PRINT"           1-| GND             VCC |-8"
193 PRINT"             |                     |"
194 PRINT"           2-| TRIGGER      DISCHG |-7 R(b) TO VCC"
195 PRINT"             |      555-IC         |"
196 PRINT"           3-| OUTPUT     THRESHOLD|-6 R(a) TO 7, C1 TO GND"
197 PRINT"             |                     |"
198 PRINT"           4-| RESET     CONT. VOLT|-5"
199 PRINT"              ---------------------  "
200 Z=1
210 B=1
220 FOR J=2 TO 7
230 FOR I=3 TO 13
240 R(Z)=A(I)*10^J
250 R(B)=R(Z)
260 Z=Z+1
270 B=B+1
280 NEXT I
290 NEXT J
300 FOR Z=1 TO 66
310 FOR B=1 TO 66
320 C=1.44/((R(Z)+2*R(B))*F)
330 IF C<10^(-9) THEN 430
340 FOR H=1 TO 9
350 D=C/10^(-H)
360 IF 1>D THEN 380
370 IF D<10 THEN 390
380 NEXT H
390 FOR I=1 TO 6
400 IF .995*A(I)>D THEN 420
410 IF D<1.005*A(I) THEN 460
420 NEXT I
430 NEXT B
440 NEXT Z
450 GOTO 560
460 PRINT
470 PRINT
475 FOR TIME=1 TO 10:PRINT CHR$(7);:NEXT TIME
480 PRINT "SET";S;":"
490 PRINT "R(A)=";R(Z);"OHMS"
500 PRINT "R(B)=";R(B);"OHMS"
510 PRINT "C=";1E+06*C;"UF"
520 S=S+1
530 PRINT
540 GOTO 440
550 DATA 5.0,10.0,1.0,2.2,3.3,4.7,1.2,1.5,1.8,3.9,5.6,6.2,8.2
560 END
