1 REM TIMETR  
5 CLEAR  1000  
10 CLS:PRINT  TAB(10);"TIME SERIES-LINEAR TREND":PRINT   
20 PRINT "THIS PROGRAM COMPUTES A LINEAR TREND FOR A TIME SERIES.  
30 PRINT "THE DETRENDED VALUES FROM THE SERIES ARE ALSO PRINTED.  
60 PRINT :INPUT  "PRESS ENTER TO BEGIN.";Z9  
90  Z1$="      ###             #####.## "  
95  Z2$="      ###             #####.##          #####.####    ###.##"  
100 CLS  
120 PRINT  @  320," "  
180 PRINT   
190 PRINT  "GIVE AN UPPER BOUND ON THE NUMBER OF OBSERVATIONS YOU INTEND TO  
200 PRINT  "USE.THIS WILL BE THE GREATEST NUMBER OF OBSERVATIONS POSSIBLE.  
210 INPUT  "NUMBER = ";N  
220 DIM  A(N),S(N)  
225 CLS  
230 PRINT  "INPUT OBSERVATIONS 1 BY 1, PRESSING ENTER AFTER EACH.  
240 PRINT  "INPUT 99999 AND ENTER WHEN DONE."  
250 PRINT   
260 PRINT  "PRESS ENTER TO BEGIN";:INPUT  Z9  
300 CLS  
310 I=0:S=0  
320 PRINT  "OBSERVATION ";I+1;" (99999 TO END)";:INPUT  A(I+1)  
330 IF  A(I+1)=99999  THEN  GOTO  350  
340 I=I+1:GOTO  320  
350 REM COMPUTATION  
355 S1=0:S2=0:S3=0:S4=0:S5=0  
360 FOR  K=1  TO  I  
370 S1=S1+K:S2=S2+K[2:S3=S3+A(K):S4=S4+A(K)[2:S5=S5+K*A(K)  
380 NEXT  K  
390 D=I*S2 - S1[2:A=(S3*S2-S1*S5)/D:B=(I*S5-S1*S3)/D  
395 REM REGRESSION COEFFICIENTS ABOVE  
400 FOR  L=1  TO  I  
410 S(L)=A+B*L  
420 NEXT  L  
430 GOSUB  2500  
440 FOR  L=1  TO  I  
480 PRINT USING  Z2$;L,A(L),S(L),A(L)/S(L)  
490 IF  L/14 = INT(L/14) THEN GOSUB  3000  
500 NEXT  L  
550 END  
2000 REM INPUT ERROR SUBROUTINE  
2010 PRINT :PRINT  "INPUT ERROR. TRY AGAIN."  
2020 FOR  I= 1  TO  300:NEXT  I  
2030 RETURN   
2500 REM HEADING SUBROUTINE  
2510 CLS  
2515 PRINT "TREND EQUATION IS T =";A;"+";B;"Y WHERE T IS THE TREND  
2516 PRINT "VALUE AND Y IS NO. OF YEARS FROM ORIGIN.  
2520 PRINT  "OBSERVATION #   OBSERVATION VALUE   SMOOTHED VALUE  DETRENDED"  
2530 RETURN   
3000 REM FULL SCREEN SUBROUTINE  
3010 INPUT  "TO CONTINUE PRESS ENTER";Z9  
3020 CLS  
3030 GOSUB  2500  
3040 RETURN   

