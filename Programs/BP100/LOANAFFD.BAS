1 REM LOANAFFD  
5 CLEAR  1000  
10 CLS:PRINT  TAB(10); "AMOUNT OF LOAN HOME BUYER CAN AFFORD":PRINT   
20 PRINT "ONE SIMPLE METHOD FOR DETERMINING WHETHER TO GIVE A MORTGAGE  
25 PRINT "TO AN APPLICANT IS TO SEE IF THE MONTHLY MORTGAGE PAYMENT   
30 PRINT "WOULD BE MORE THAN A CERTAIN FIXED PER CENT OF THAT   
35 PRINT "APPLICANT'S GROSS MONTHLY INCOME. IN THIS PROGRAM THE  
40 PRINT "MORTGAGE INTEREST RATE AND TERM IS KNOWN, ALONG WITH THE  
45 PRINT "APPLICANT'S GROSS MONTHLY INCOME AND THE FIXED PER CENT  
50 PRINT "MENTIONED ABOVE. IN ADDITION WE KNOW WHAT PER CENT OF THE   
52 PRINT "MONTHLY PAYMENT GOES FOR TAXES AND INSURANCE(MORTGAGE PAYMENT  
53 PRINT "IS NOT ALL FOR BANK). WITH THIS INFORMATION THE PROGRAM OUTPUTS  
55 PRINT "THE MAXIMUM MORTGAGE AMOUNT THAT THE APPLICANT CAN SUPPORT  
70 PRINT :INPUT "PRESS ENTER TO BEGIN";Z9$  
100 CLS  
110 INPUT "ENTER APPLICANT'S GROSS MONTHLY INCOME   ";MG  
120 INPUT "ENTER FIXED PER CENT                     ";P:P=P/100  
125 AMT=MG*P  
127 INPUT "ENTER TAX-INS % OF TOTAL PAYMENT         ";P1:P1=P1/100  
128 PMT=AMT*(1-P1)  
130 INPUT "ENTER ANNUAL MORTGAGE INT RATE(%)        ";I:I=I/1200  
135 REM I IS NOW MONTHLY RATE AS DECIMAL  
140 INPUT "ENTER LENGTH OF MORTGAGE(YEARS)          ";N:N=12*N  
150 PV=PMT*(1/I)*(1-(1+I)[(-N))+BAL*(1+I)[(-N)  
200 PRINT   
210 PRINT USING "MAXIMUM MONTHLY PAYMENT AMOUNT IS $$######";AMT  
212 PRINT USING "CONTAINING INSURANCE AND TAXES OF $$####.##";AMT-PMT  
215 PRINT USING "MAXIMUM MONTHLY PAYMENT FOR MORTGAGE IS $$####.##";PMT  
220 PRINT   
230 PRINT USING "MAXIMUM MORTGAGE LOAN AVAILABLE IS $$######";PV  
240 PRINT :INPUT "PRESS ENTER FOR MORE COMPUTATION";Z9$
250 IF Z9$ = "-1" THEN END
260 GOTO  100  
