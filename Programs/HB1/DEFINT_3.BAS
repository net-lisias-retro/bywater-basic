10 REM 'DEFINT' TEST PROGRAM
20 REM USES DOUBLE-PRECISION TYPE DECLARATION CHARACTER '#'
30 DEFINT A,B
40 A=9.123456789012345
50 B#=9.123456789012345
60 IF A=B# THEN 110
70 PRINT "A =";A
80 PRINT "B#=";B#
90 PRINT "THE TEST PASSED, SHOWING # OVER-RIDING DEFINT"
100 GOTO 999
110 PRINT "THE # CHARACTER OVER-RIDE FEATURE FAILED THE TEST"
999 END
