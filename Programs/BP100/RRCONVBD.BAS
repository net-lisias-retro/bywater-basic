1 REM RRCONVBD  
2 CLS  
10 PRINT "       CONVERTIBLE BOND-RATE OF RETURN":PRINT   
15 PRINT "THIS PROGRAM WILL COMPUTE AN INVESTOR'S ANNUAL RATE OF RETURN  
20 PRINT "ON A CONVERTIBLE BOND PURCHASE GIVEN THE FOLLOWING:  
25 PRINT   
30 PRINT "     PURCHASE PRICE OF BOND  
32 PRINT "     BOND COUPON PAYMENT PER YEAR  
35 PRINT "     PRESENT VALUE OF SHARE OF STOCK  
40 PRINT "     EXPECTED ANNUAL % INCREASE IN VALUE OF SHARE OF STOCK  
45 PRINT "     CONVERSION RATIO(# SHARES BOND CONVERTIBLE INTO)  
50 PRINT "     DESIRED VALUE OF BOND WHEN SOLD  
55 PRINT "GIVEN THIS INFORMATION THE PROGRAM COMPUTES A RATE OR RETURN  
60 PRINT "AND THE NUMBER OF YEARS UNTIL THE EXPECTED SELLING VALUE IS  
65 PRINT "REACHED.  
80 PRINT :INPUT "PRESS ENTER TO BEGIN";Z9$  
85 CLS  
100 REM INPUT DATA  
110 INPUT "ENTER PURCHASE PRICE OF THE BOND      "; PB  
120 INPUT "ENTER PRESENT PRICE OF SHARE OF STOCK ";P  
130 INPUT "ENTER CONVERSION RATIO                ";PR  
140 INPUT "ENTER CONVERSION VALUE OF BOND WHEN SOLD";CV  
150 INPUT "ENTER PROJECTED % INCREASE IN STOCK VALUE YEARLY";R  
160 R=R/100  
170 INPUT "COUPON PAYMENT PER YEAR             ";PMT  
180 N = LOG(CV/(P*PR))/LOG(1+R):N=INT(N+.5)  
200 GOSUB  4200  
210 PRINT   
220 PRINT " RATE OF RETURN EQUALS     ";100*I;"%"  
230 PRINT " CONVERSION AFTER          ";N;" YEARS"  
250 PRINT :INPUT "PRESS ENTER FOR MORE ENTRIES ";Z9$  
252 IF Z9$ = "-1" THEN END
255 CLS  
260 GOTO  100  
299 STOP  
4200 REM I FOR PV/ORDINARY ANNUITY  
4210 I=.01  
4220 PP=PMT/I*(1-(1+I)[(-N))+CV*(1+I)[(-N)-PB  
4225 D=N*PMT/(I*(1+I)[(N+1))-PMT/(I[2)*(1-(1+I)[(-N))-N*CV/(1+I)[(N+1)  
4230 GOSUB  4600  
4240 IF  ABS(PP)<=.1 THEN RETURN   
4250 GOTO  4220  
4600 REM COMPUTATION  
4610 I=I-PP/D  
4620 RETURN   

