1 REM RENTPRCH  
5 CLS  
10 CLEAR  1000  
15 PRINT  TAB(10); "PURCHASE PRICE FOR RENTAL PROPERTY":PRINT   
20 PRINT "AN INVESTOR IN RENTAL PROPERTY SHOULD ONLY PURCHASE IF PROFIT  
30 PRINT "CAN BE REALIZED. ONE APPROACH WHICH MAY BE USED IS TO  
35 PRINT "PURCHASE THE PROPERTY IF THE TOTAL RENT RECEIPTS EXCEED TOTAL  
40 PRINT "EXPENSES. THESE EXPENSES CONSIST OF PROPERTY TAXES, INSURANCE,  
45 PRINT "MORTGAGE PAYMENTS, MAINTENANCE COSTS, AND OTHER MISC. COSTS.  
50 PRINT "IN THE MODEL TO BE USED IN THIS PROGRAM RENTAL INCOME IS KNOWN.  
55 PRINT "ALL EXPENSES ARE KNOWN EXCEPT THE MONTHLY MORTGAGE PAYMENT.  
60 PRINT "THE BANK MORTGAGE RATE IS KNOWN. WHAT WE ATTEMPT TO DETERMINE  
65 PRINT "HERE IS THE AMOUNT WHICH SHOULD BE BORROWED TO MAKE TOTAL  
70 PRINT "EXPENSES EQUAL TO TOTAL INCOME.  
75 PRINT :INPUT "PRESS ENTER TO BEGIN";Z9$  
100 CLS  
110 INPUT "ENTER TOTAL MONTHLY RENTAL INCOME";RI  
120 INPUT "ENTER MONTHLY INSURANCE          ";RS  
130 INPUT "ENTER MONTHLY MAINTENANCE        ";RM  
135 INPUT "ENTER MONTHLY TAXES              ";RT  
140 INPUT "ENTER MONTHLY MISCELLANEOUS COSTS";RC  
150 INPUT "ENTER ANNUAL MORTGAGE INT RATE(%)";I:I=I/100  
160 INPUT "ENTER LENGTH OF MORTGAGE(YEARS) ";N:N=12*N  
170 I=I/12: REM P IS NOW MONTHLY INTEREST RATE IN DECIMAL  
180 PMT=RI-RS-RM-RC-RT  
190 PV=PMT*(1/I)*(1-(1+I)[(-N))+BAL*(1+I)[(-N)  
200 PRINT   
210 PRINT "MONTHLY INTEREST RATE = ";100*I;"%"  
220 PRINT USING "MONTHLY MORTGAGE PAYMENT WILL EQUAL $$#####.##";PMT  
230 PRINT :PRINT USING  "AMOUNT PROPERTY IS WORTH  = $$######";PV  
240 PRINT :INPUT "PRESS ENTER FOR MORE COMPUTATION";Z9$  
245 IF Z9$ = "-1" THEN END
250 GOTO  100  
