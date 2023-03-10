1 REM DILANAL
5 CLEAR 1000
10 CLS:PRINT TAB(20); "DILUTION ANALYSIS"
20 PRINT"WHEN TWO PUBLICLY TRADED COMPANIES DECIDE TO MERGE VIA USE OF
25 PRINT"AN EXCHANGE OF STOCK, THE ANALYSIS IS DOMINATED BY THE EXCHANGE
30 PRINT"RATIO(I.E. # OF SHARES THE SURVIVING COMPANY OFFERS FOR EACH
35 PRINT"SHARE OF THE ACQUIRED COMPANY), THE PRICE-EARNINGS RATIOS OF 
40 PRINT"THE SURVIVING FIRM, AND GENERAL CONDITIONS IN THE STOCK MARKET.
45 PRINT"IN GENERAL WE DO NOT WANT EARNINGS PER SHARE FOR THE ACQUIRING
50 PRINT"TO DECREASE. IF A DECREASE OCCURS THEN DILUTION OCCURS.
55 PRINT"IF THE P-E RATIO FOR THE ACQUIRING FIRM REMAINS AS BEFORE THE
60 PRINT"MERGER THEN DILUTION MEANS A LOWER PER SHARE STOCK PRICE.
65 PRINT"IN THIS PROGRAM WE INPUT FOR EACH OF THE TWO COMPANIES THE
70 PRINT"FOLLOWING: EARNINGS AFTER TAXES, SHARES OUTSTANDING,ERS, SHARE 
75 PRINT"PRICE AT TIME OF EXCHANGE. WE ALSO INPUT THE EXCHANGE RATIO.
80 PRINT"OUTPUT CONSISTS OF THE NUMBER OF NEW SHARES ISSUED, EARNINGS
85 PRINT"AFTER TAXES AND EARNINGS PER SHARE FOR THE SURVIVING FIRM.
90 INPUT"PRESS ENTER TO BEGIN";Z9$
100 CLS
110 PRINT"ANSWER THE FOLLOWING FOR THE ACQUIRING FIRM":PRINT
120 INPUT"EARNINGS AFTER TAXES     ";EAT(1)
125 INPUT"SHARES OUTSTANDING       ";SO(1)
130 INPUT"PRICE AT TIME OF EXCHANGE ";P(1)
140 PRINT:PRINT"ANSWER THE FOLLOWING FOR THE ACQUIRED FIRM":PRINT
150 INPUT"EARNINGS AFTER TAXES     ";EAT(2)
155 INPUT"SHARES OUTSTANDING       ";SO(2)
160 INPUT"PRICE AT TIME OF EXCHANGE ";P(2)
165 PRINT
170 INPUT"INPUT EXCHANGE RATIO ";ER
200 REM COMPUTATIONS
210 ERS(1)=EAT(1)/SO(1):ERS(2)=EAT(2)/SO(2):REM EARNINGS PER SHARE
220 PE(1)=P(1)/ERS(1):PE(2)=P(2)/ERS(2):REM P-E RATIOS
230 REM SUBSCRIPT 3 REFERS TO MERGED COMPANY
240 EAT(3)=EAT(1)+EAT(2)
250 SO(3)=SO(1)+SO(2)*ER
260 ERS(3)=EAT(3)/SO(3)
300 CLS
310 F$(1)="%         %    #######.##     #######.##     #######.##"
320 F$(2)="           ACQUIRING(BEFORE)  ACQUIRED       ACQUIRING(AFTER)"
330 PRINT F$(2)
340 PRINT
350 PRINT USING F$(1);"EAT",EAT(1),EAT(2),EAT(3)
360 PRINT USING F$(1);"SH. OUTST.",SO(1),SO(2),SO(3)
370 PRINT USING F$(1);"ERS",ERS(1),ERS(2),ERS(3)
380 PRINT USING F$(1);"P-E RATIO",PE(1),PE(2)
390 PRINT:PRINT "EXCHANGE RATIO IS ";ER;" ACQUIRING FOR EACH 1 ACQUIRED."
400 PRINT:PRINT"ASSUMING NEW P-E RATIO WILL BE BETWEEN ";PE(1);"AND";PE(2)
410 PRINT "NEW PER SHARE PRICE WILL BE BETWEEN ";ERS(3)*PE(1);" AND"
420 PRINT ERS(3)*PE(2)
430 PRINT:INPUT"PRESS ENTER FOR MORE COMPUTATIONS";Z9$
432 IF Z9$ = "-1" THEN END
435 CLEAR 1000
440 GOTO 100
