10 REM 'PIN' TEST PROGRAM
15 DEF PIN( X ) = 255 - ( X MOD 256 )
20 FOR X=0 TO 255
30 PRINT "THE DECIMAL VALUE OF THE BYTE AT PORT #";X;"IS";PIN(X)
40 NEXT X
99 END
