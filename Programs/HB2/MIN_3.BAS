10 REM 'MIN' TEST PROGRAM
20 A$="ABC"
30 Y$=MIN(A$,"XYZ")
40 IF Y$="ABC" THEN 70
50 PRINT "'MIN' FAILED THE TEST"
60 GOTO 99
70 PRINT "'MIN' PASSED THE TEST"
99 END
