1 REM RULE78  
5 CLS  
10 CLEAR  1000  
15 GOSUB  9000  
20 PRINT  TAB(15); "INTEREST VIS RULE OF 78'S":PRINT   
25 PRINT "THIS PROGRAM WILL COMPUTE INTEREST CHARGE ON LOANS WHEN  
30 PRINT "THIS INTEREST IS COMPUTED VIA THE RULE OF THE 78'S.  
35 PRINT "NECESSARY INFORMATION FOR USER INPUT INCLUDES LENGTH OF THE   
40 PRINT "LOAN, TOTAL INTEREST CONSUMER IS CHARGED ON LOAN OVER ITS  
45 PRINT "TERM AND THE PAYMENT NUMBERS OF THE PERIODS IN QUESTION.  
50 PRINT "OUTPUT SHOULD BE A SIMPLE TABLE SUMMARIZING INTEREST.  
90 GOSUB  10100  
100 CLS  
105 INPUT "IS LINE PRINTER OUTPUT DESIRED(Y/N)";Z2$  
107 IF  Z2$<>"Y"  AND  Z2$<>"N"  THEN  GOSUB  10000:GOTO  105  
110 INPUT "HOW MANY MONTHS(PAYMENTS) IS THE LOAN FOR ";M  
120 INPUT "WHAT IS TOTAL INTEREST FOR TERM OF LOAN   ";I  
130 PRINT "WHICH IS 1ST MONTH FOR WHICH OUR INTEREST  
140 INPUT "       COMPUTATION IS DESIRED            ";FM  
150 INPUT " WHICH IS THE LAST MONTH DESIRED         ";LM  
200 PRINT "TOTAL INTEREST TO BE PAID = $";I  
210 IF  Z2$="Y"  THEN  LPRINT "TOTAL INTEREST TO BE PAID = $";I  
215 PRINT  F$(1):IF  Z2$="Y"  THEN  LPRINT  F$(1)  
217 LL=0  
220 FOR  J=FM  TO  LM  
230 IPX=I*(M-J+1)/(M*(M+1)/2):IL = I*(1-J/2*(2*M-J+1)/(M*(M+1)/2))  
235 PRINT USING  F$(2);J,IPX,IL  
236 IF  Z2$="Y"  THEN  LPRINT  USING  F$(2);J,IPX,IL  
240 LL=LL+1:IF  LL/12=INT(LL/12)  THEN  PRINT :GOSUB  10100:CLS:PRINT  F$(1):PRINT   
250 NEXT  J  
270 PRINT :INPUT "PRESS ENTER FOR MORE COMPUTATION";Z9$
280 IF Z9$ = "-1" THEN END
290 GOTO  100  
9000 REM FORMATS  
9010 F$(1)="PAYMENT #       INTEREST       INTEREST LEFT"  
9020 F$(2)="  ###           ######.##       #######.##"  
9099 RETURN   
10000 PRINT "INPUT ERROR! TRY AGAIN! ":FOR  JJ=1 TO 300:NEXT   
10010 RETURN   
10100 INPUT "PRESS ENTER TO CONTINUE";Z9$  
10110 RETURN   

