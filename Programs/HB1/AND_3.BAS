10 REM 'AND' LOGICAL TEST PROGRAM
20 PRINT "ENTER A NUMBER FROM 1 TO 10";
30 INPUT A
40 B = A > 4 AND A < 11
50 IF B=-1 THEN 80
60 PRINT A;"IS NOT GREATER THAN 4 AND LESS THAN 11"
70 GOTO 20
80 PRINT A;"IS GREATER THAN 4 AND LESS THAN 11"
99 END
