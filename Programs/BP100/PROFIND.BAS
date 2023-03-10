1 REM PROFIND
5 CLEAR 1000
10 CLS
15 DIM A(110)
20 PRINT TAB(12); "PROFITABILITY INDEX OF A PROJECT"
25 PRINT
30 PRINT"THE PROFITABILITY INDEX OF A PROJECT IS SIMPLY THE PRESENT
35 PRINT"VALUE OF THE FUTURE (EXPECTED) NET CASH FLOWS DIVIDED BY THE
40 PRINT"INITIAL CASH OUTLAY. AS LONG AS THE PROFITABILITY INDEX IS
45 PRINT"GREATER THAN 1 THE INVESTMENT IS ACCEPTABLE.
50 PRINT:PRINT"IN THIS PROGRAM THE USER INPUTS THE CASH FLOWS OVER THE
55 PRINT"LIFE OF A PROJECT(UP TO 100). EXCEPT FOR THE INITIAL COST
60 PRINT"A NEGATIVE CASH FLOW MEANS CASH OUTFLOW. THE USER ALSO
65 PRINT"ENTERS  THE INTEREST RATE WHICH THE PROJECT IS CAPITALIZED 
70 PRINT"UNDER (I.E. RETURN DESIRED). THE PROGRAM OUTPUTS THE 
75 PRINT"PROFITABILITY INDEX.
95 PRINT:INPUT"PRESS ENTER TO BEGIN";Z9$
200 CLS
210 INPUT"ENTER RETURN DESIRED FOR THIS PROJECT(%) ";K:K=K/100
220 INPUT"ENTER INITIAL CASH OUTLAY FOR THE PROJECT";A(0)
230 I=0
240 PRINT"INPUT CASH FLOW FOR YEAR ";I+1;"(-9999 ENDS)";:INPUT A(I+1)
250 IF A(I+1)<> -9999 THEN I=I+1  :ELSE GOTO 300
260 GOTO 240
300 REM ALL INPUTS ENTERED. NOW COMPUTE
305 PRINT
310 PV=0
320 FOR J=1 TO I
330 PV=PV+A(J)/(1+K)[J
340 NEXT
350 ' PI=PV/A(0)
400 PRINT"INITIAL CASH COST OF PROJECT = ";A(0)
405 PRINT"PRESENT VALUE OF FUTURE CASH FLOWS = ";PV
410 PRINT"PROFITABILITY INDEX EQUALS ";PV/A(0)
420 PRINT:PRINT
430 INPUT"PRESS ENTER FOR MORE COMPUTATION";Z9$
435 IF Z9$ = "-1" THEN END
440 GOTO 200
