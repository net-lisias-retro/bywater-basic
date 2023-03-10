10 PRINT "PLOT OF FUNCTIONS"
20 PRINT
29 REM - NUMBER OF FUNCTIONS WHICH CAN BE PLOTTED IS LIMITED TO 9
30 DIM Y(9),A$(11)
40 FOR I=1 TO 11
49 REM - GET VALUES FOR A$-ARRAY FROM DATA TABLE AT STATEMENT 470
50 READ A$(I)
60 NEXT I
69 REM - STATEMENTS 70 TO 120 REQUEST USER INPUT
70 PRINT "NUMBER OF FUNCTIONS TO BE PLOTTED";
80 INPUT N
90 PRINT "X-AXIS:LEFT ENDPOINT,RIGHT ENDPOINT,INCREMENT";
100 INPUT X1,X2,X3
110 PRINT "Y-AXIS:LOWER ENDPOINT,UPPER ENDPOINT,INCREMENT";
120 INPUT Y1,Y2,Y3
129 REM - CALCULATE NUMBER OF SPACES ON Y-AXIS
130 Y2=(Y2-Y1)/Y3
138 REM - TEST FOR A Y-AXIS TOO LONG FOR OUTPUT DEVICE.  IF YES,THEN
139 REM - LESSEN RANGE OR INCREASE INCREMENT
140 IF Y2<=70 THEN 170
150 PRINT "Y-RANGE TOO LARGE"
160 GOTO 110
170 PRINT
180 PRINT
189 REM - MAKE NOTE OF WHERE AXES CROSS
190 PRINT "X-AXIS CROSSES Y-AXIS AT Y=";Y1
200 PRINT "Y-AXIS CROSSES X-AXIS AT X=";X1
210 PRINT
219 REM - SET UP LOOP TO READ VALUE AT EACH X-INCREMENT
220 FOR X=X1 TO X2 STEP X3
221 REM - FUNCTIONS Y(1) TO Y(9) SHOULD BE ENTERED AT LINES 221TO 229
225 Y(1)=COS(X)
228 Y(2)=SIN(X)
230 FOR I=1 TO N
239 REM - ESTABLISH THE ROUNDED VALUE OF Y FOR EACH X-INCREMENTVALUE
240 Y(I)=INT((Y(I)-Y1)/Y3+.5)
250 NEXT I
259 REM - LOOP TO READ VALUE OF EACH Y-INCREMENT
260 FOR I=0 TO Y2
269 REM - S COUNTS THE NUMBER OF VALUES AT EACH Y-INCREMENT FOREACH X
270 S=0
280 FOR J=1 TO N
289 REM - PLOT A POINT ON THIS SPOT? IF YES, STORE FUNCTION NUMBER IN T
290 IF Y(J)<>I THEN 320
300 S=S+1
310 T=J
320 NEXT J
327 REM - TEST FOR NUMBER OF POINTS TO PLOT ON EACH SPOT;
328 REM - IF 0 PRINT "+" (first line only), IF 1 PRINT FUNCTIONNUMBER,
329 REM - IF 2 OR MORE PRINT "*"
330 IF S>0 THEN 360
340 PRINT A$(SGN(I)+10);
350 GOTO 400
360 IF S>1 THEN 390
370 PRINT A$ (T);
380 GOTO 400
390 PRINT "*";
400 NEXT I
409 REM - LABEL AXES AT THE LAST SPACE ON EACH AXIS
410 IF X>X1 THEN 430
420 PRINT "Y";
429 REM - ADVANCE PRINTER TO NEXT LINE
430 PRINT
439 REM - PRINT SPACE INSTEAD OF "+" AFTER FIRST LINE OF PRINT (y-axis)
440 A$(11)=" "
450 NEXT X
460 PRINT "x"
470 DATA "1","2","3","4","5","6","7","8","9","+","+"
480 END
