1 REM TERMSPAY
5 CLEAR 1000
10 CLS:PRINT TAB(5);"COMPARISON OF METHODS FOR PAYING FOR PURCHASES"
20 PRINT"WHEN AN ITEM IS PURCHASED SOMETIMES THE USER HAS SEVERAL
25 PRINT"CHOICES AS TO HOW PAYMENT SHOULD BE MADE. FIRST OF ALL THERE
30 PRINT"MAY BE A PREPAYMENT. SUCH PREPAYMENT IS GENERALLY ACCOMPANIED
35 PRINT"BY  A DISCOUNT. THERE ITEM MAY ALSO COME COD AND THERE MAY BE
40 PRINT"A DISCOUNT FOR PAYING ON DELIVERY. LASTLY THE ITEM MAY COME
45 PRINT"WITH TERMS. GENERALLY THIS MEANS THAT THERE IS A DEADLINE
50 PRINT"SUCH THAT IF PAYMENT IS MADE BEFORE THAT TIME THERE IS NO
55 PRINT"PENALTY.
60 PRINT:PRINT"THE USER CAN COMPARE THE 3 METHODS OF PAYMENT VIA A PRESENT
65 PRINT"VALUE ANALYSIS  IF HE CAN ESTIMATE HIS INTEREST RATE FOR
70 PRINT"MONEY."
90 PRINT:INPUT"PRESS ENTER TO BEGIN";Z9$
100 CLS
110 INPUT"ENTER YOUR INTEREST RATE(%)";P:P=P/100:P=P/12
115 INPUT"ENTER LIST PRICE OF PURCHASE ";C
120 INPUT"ENTER NUMBER OF MONTHS IN ADVANCE FOR EARLY PAYMENT";MA
130 INPUT"ENTER DISCOUNT AMOUNT FOR MAKING EARLY PAYMENT";D
140 INPUT"ENTER DISCOUNT AMOUNT FOR COD                ";DC
150 INPUT"ENTER # OF MONTHS(OR PART) AFTER DELIVERY FOR NET PAYMENT";MA
200 REM COMPUTE PRESENT VALUE AT TIME OF DELIVERY
210 P2=C-DC:REM COD PRESENT VALUE
220 P1=(C-D)*(1+P)[M:REM EARLY PAYMENT PRESENT VALUE
230 P3= C/(1+P)[MA:REM TERMS NET MA MONTHS PRESENT VALUE
300 PRINT
310 PRINT"PRESENT VALUES ARE COMPUTED WITH RESPECT TO DAY OF DELIVERY":PRINT
320 PRINT"PRESENT VALUE OF EARLY PAYMENT =";P1
330 PRINT"PRESENT VALUE OF PAYING COD    =";P2
340 PRINT"PRESENT VALUE OF NET TERMS     =";P3
350 PRINT
360 INPUT"PRESS ENTER FOR MORE COMPUTATION";Z9$
365 IF Z9$ = "-1" THEN END
370 GOTO 100
