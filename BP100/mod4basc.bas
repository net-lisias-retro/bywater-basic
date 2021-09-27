2 '                Model 4 BASIC syntax converter
3 '                This program will convert other BASIC
4 '                programs to be syntactically correct
5 '                for the Model 4 BASIC.
6 ' 
7 '                Written by:  Lee Becker
8 '                Phone no. :  517-349-7604
9 '
10 CLS:CLEAR 20000:DIM A$(1000) ' ON ERROR GOTO 900
20 PRINT @ 500,"What is the file's name to convert?"
21 PRINT @ 590,;
22 LINE INPUT C$
30 OPEN "I",1,C$
40 KOUNT=1
50 IF EOF(1) THEN 80
60 LINE INPUT #1,L$:A$(KOUNT)=L$
70 KOUNT=KOUNT+1:GOTO 50
80 CLOSE 1
90 '
100 '
110 CLS
120 PRINT @ 420,"There are";KOUNT;"total lines in the file.":PRINT TAB(20);"It will take approximately";:PRINT USING "##.#";KOUNT*3.1/60;:PRINT" minutes.":PRINT @ 670,"STARTING NOW"
130 FOR CNT=1 TO KOUNT:Y=1:Z=1:W=1
135 V=INSTR(1,A$(CNT),"DATA"):IF V>0 AND V<8 THEN A$(CNT)=MID$(A$(CNT),1,V+3)+" "+MID$(A$(CNT),V+4):GOTO 300
140 Z=INSTR(Z,A$(CNT),"'"):IF Z>0 AND Z<8 THEN 300
150 IF Z=0 THEN Z=500 ELSE T=INSTR(Z,A$(CNT),CHR$(34)):IF T<>0 THEN Z=T:GOTO 140
160 W=INSTR(W,A$(CNT),"REM"):IF W>0 AND W<8 THEN 300
170 IF W=0 THEN W=500 ELSE T=INSTR(W,A$(CNT),CHR$(34)):IF T<>0 THEN W=T:GOTO 160
180 FOR COT=1 TO 47:Q=1:READ B$
190 IF Q<>0 THEN Q=INSTR(Q,A$(CNT),CHR$(34))
200 X=INSTR(Y,A$(CNT),B$)
210 IF X>Z OR Z>W THEN 290
220 IF Q<>0 AND X>Q THEN 540
230 IF X<>0 THEN IF B$<>"THEN" AND B$<>"ELSE" AND B$<>"TO" AND B$<>"OR" AND B$<>"AND" AND B$<>"STEP" THEN 250
240 IF X<>0 THEN E$=MID$(A$(CNT),X-2,2):F$=MID$(A$(CNT),X-3,3):IF E$<>":F" AND E$<>" F" AND E$<>" R" AND E$<>":R" AND E$<>"GO" AND F$<>"RES" AND F$<>"ERR" AND MID$(A$(CNT),X-4,4)<>"REST" THEN GOSUB 640:GOTO 190
250 IF X=0 THEN 290 
255 IF  B$="AND" OR B$="OR" OR B$="TO" OR B$="STEP" THEN Y=X+LEN(B$):GOTO 200
260 IF MID$(A$(CNT),X-1,1)=" " OR MID$(A$(CNT),X-1,1)=":" THEN GOSUB 610:GOTO 190
270 IF MID$(A$(CNT),X-1,1)="L" AND B$="PRINT" THEN Y=X+LEN(B$):GOTO 200
280 GOSUB 640:GOTO 190
290 Y=1:NEXT COT
300 PRINT @ 827,"Line";CNT;"is now done.":RESTORE:NEXT CNT
310 '
320 '
330 CLS:PRINT @ 418,"I am now changing all IF THEN statements":PRINT @ 670,"STARTING NOW"
340 FOR CNT=1 TO KOUNT:X=1:F=1
350 X=INSTR(X,A$(CNT),"IF"):IF X=0 THEN 430
355 IF F<>0 THEN 670
360 Y=INSTR(X,A$(CNT),"THEN"):IF Y=0 THEN 390
370 Z=INSTR(X+2,A$(CNT),"IF"):IF Y<Z THEN X=Z:GOTO 360
380 IF Z=0 THEN 430
390 W=999:RESTORE 800:FOR S=1 TO 35:READ B$
400 V=INSTR(X+2,A$(CNT),B$):IF V<W AND V>X THEN W=V
410 NEXT S:IF W=999 THEN 430
420 A$(CNT)=MID$(A$(CNT),1,W-1)+"THEN "+MID$(A$(CNT),W):X=X+2:GOTO 350
430 PRINT @ 824,"Line";CNT;"is finished now.":NEXT CNT
440 CLS:E=1:FOR X=1 TO KOUNT STEP 10:CLS:FOR W=1 TO 10:PRINT A$(E):E=E+1:NEXT W:PRINT:INPUT"Hit ENTER for rest of list";U:PRINT:NEXT X
450 '
460 '
470 CLS:PRINT @ 320, "Old filename=";C$:PRINT @ 410,"Input file's name and drive to save converted file under":PRINT @ 507,;:LINE INPUT C$
480 OPEN "O",1,C$
490 FOR X=1 TO KOUNT:PRINT# 1,A$(X):NEXT X
500 CLOSE 1
510 END
520 '
530 '
540 Q=INSTR(Q+1,A$(CNT),CHR$(34)):IF Q=0 THEN GOTO 290
550 IF X<Q THEN Y=Q:Q=INSTR(Q+1,A$(CNT),CHR$(34)):GOTO 190
560 Q=INSTR(Q+1,A$(CNT),CHR$(34)):IF Q=0 THEN 230
570 IF X>Q THEN 540
580 GOTO 230
590 '
600 '
610 A$(CNT)=MID$(A$(CNT),1,X-1+LEN(B$))+" "+MID$(A$(CNT),X+LEN(B$)):Y=X+LEN(B$):RETURN
620 '
630 '
640 A$(CNT)=MID$(A$(CNT),1,X-1)+" "+MID$(A$(CNT),X,LEN(B$))+" "+MID$(A$(CNT),X+LEN(B$)):Y=X+LEN(B$)+1:RETURN
650 '
660 '
670 F=INSTR(F,A$(CNT),CHR$(34)):IF F>X OR F=0 THEN 360
680 G=INSTR(F+1,A$(CNT),CHR$(34)):IF G=0 OR G=LEN(A$(CNT)) THEN 430
690 IF G<X THEN F=G+1:GOTO 670
700 X=G:GOTO 350
710 '
720 '
730 '
740 '
750 END
760 DATA THEN,ELSE,TO,FOR,OR,AND,PRINT,@,#,GOTO,GOSUB,NEXT,STEP,IF,DIM
770 DATA INPUT,LET,ON,READ,USING,CLEAR,DATA,DEFDBL,DEFINT,DEFSNG,RETURN
780 DATA ERROR,GET,LSET,RSET,MERGE,FIELD,OPEN,POKE,RESTORE,SWAP,VARPTR
790 DATA WHILE,CALL,CHAIN,COMMON,LINE,LPRINT,MERGE,OUT,ERASE
800 DATA ELSE,PRINT,GOTO,GOSUB,FOR,IF,DIM,INPUT,LET,ON,READ,CLEAR,DATA,ERASE
810 DATA NEXT,ERROR,GET,LSET,RSET,MERGE,FIELD,OPEN,POKE,RESTORE,SWAP,VARPTR
820 DATA RETURN,CLS,CALL,CHAIN,COMMON,LINE,LPRINT,MERGE,OUT
900 ' IF ERR=15 THEN PRINT:PRINT @ 1221," Line";CNT;"is too long.  SKIPPING IT ";:PRINT:RESUME NEXT
905 ' IF ERR=5 THEN RESUME 290
910 ' ERROR ERR
920 PRINT "ERR=";ERR
930 PRINT "ERL=";ERL
940 PRINT "ERR$=";ERR$
999 END
