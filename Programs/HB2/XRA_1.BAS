10 REM LOGICAL 'XRA' TEST PROGRAM
20 A = 6
30 B = 8
40 IF A=3 XRA B=8 THEN 70
50 PRINT "XRA FAILED THE TEST AS A LOGICAL OPERATOR"
60 GOTO 99
70 IF A=6 XRA B=8 THEN 90
80 PRINT "XRA PASSED THE LOGICAL OPERATOR TEST"
85 GOTO 99
90 PRINT "XRA FAILED THE 'EXCLUSIVE OR' TEST"
99 END
