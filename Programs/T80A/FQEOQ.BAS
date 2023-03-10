1 REM FQEOQ
5 CLEAR 1000
10 CLS:PRINT TAB(10);"INVENTORY THEORY-FIXED QUANTITY EOQ":PRINT
20 PRINT"THIS PROGRAM INVOLVES AN INVENTORY PROBLEM FOR WHICH IT IS 
25 PRINT"ASSUMED THAT THE FOLLOWING CONDITIONS HOLD:
30 PRINT"  THERE IS A CONSTANT ORDERING COST PER ORDER
35 PRINT"  INVENTORY HOLDING COST IS CONSTANT PER UNIT HELD
40 PRINT"  NO BACKORDERS ARE PERMITTED (STOCKOUTS NOT ALLOWED)
45 PRINT"  ORDER LEAD TIME IS CONSTANT AND KNOWN
50 PRINT"  DEMAND FOR THE ITEMS ARE CONSTANT AND UNIFORM THROUGH TIME
55 PRINT"  THERE ARE NO QUANTITY PRICE BREAKS.
60 PRINT:PRINT"WE SHALL INPUT LEAD TIME,ANNUAL DEMAND, ORDERING COST,
65 PRINT"HOLDING COST PER UNIT PER YEAR AND UNIT PURCHASE PRICE.
70 PRINT"OUTPUT INCLUDES OPTIMAL ORDER QUANTITY,REORDER POINT, AND
75 PRINT"TOTAL ANNUAL COST OF THE INVENTORY SYSTEM.
90 INPUT"PRESS ENTER TO BEGIN";Z9$
100 CLS
110 INPUT"ENTER ANNUAL DEMAND(IN UNITS)      ";D
120 INPUT"ENTER REORDER COST(PER ORDER)      ";S
130 INPUT"ENTER LEAD TIME(DAYS)              ";L
140 INPUT"ENTER HOLDING COST(PER UNIT/YEAR   ";C
150 INPUT"ENTER PURCHASE PRICE PER ITEM      ";P
200 Q=SQR(2*D*S/C): REM OPTIMAL ORDER QUANTITY
210 R = L*D/365:REM REORDER LEVEL BASED ON 365 DAY YEAR
300 PRINT
310 PRINT"OPTIMAL ORDER QUANTITY IS          ";Q;"UNITS"
320 PRINT"THIS MEANS ORDER ABOUT";D/Q;"TIMES PER YEAR."
330 PRINT"      OR ABOUT EVERY ";365*Q/D;"DAYS."
340 PRINT"THE REORDER LEVEL IS";R;"UNITS, I.E. WHEN THIS QUANTITY
350 PRINT"      IS REACHED REORDER";Q;"UNITS."
360 PRINT"TOTAL INVENTORY COST(HOLDING + REORDERING + COST OF ITEMS)"
370 PRINT"     PER YEAR EQUALS";D*P + D*S/Q + Q*C/2
380 PRINT:INPUT"PRESS ENTER FOR MORE";Z9$
385 IF Z9$ = "-1" THEN END
390 GOTO 100
