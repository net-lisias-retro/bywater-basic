10 REM 'AND' BINARY LOGIC TEST PROGRAM
20 PRINT "ENTER A VALUE FOR X";
30 INPUT X
40 PRINT "ENTER A VALUE FOR Y";
50 INPUT Y
60 A = X AND Y
70 PRINT "THE LOGICAL 'AND' VALUE OF";X;"AND";Y;"IS";A
75 IF X = 0 AND Y = 0 THEN 99
80 GOTO 20
99 END
