10 REM 'TIME' TEST PROGRAM
20 A=TIME
30 PRINT "TIME IS MARCHING ON"
40 REM FOR X=1 TO 2000
45 SLEEP 3
50 REM NEXT X
60 B=TIME
70 IF B > A THEN 100
80 PRINT "THE 'TIME' FUNCTION FAILED THE TEST"
90 GOTO 999
100 PRINT "'TIME' PASSED THE TEST -- ELAPSED TIME=";B-A
999 END
