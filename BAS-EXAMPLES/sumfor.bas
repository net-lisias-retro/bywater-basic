   10 REM compute the sum of numbers with FOR loop.
   20 CALL SHELL("cls")
   30 FOR N=0.5 TO 10.1 STEP 0.75
   40   LET S = S + N
   50   PRINT N,S
   70 NEXT N
   80 PRINT
    : REM print empty line
   90 PRINT "Final sum:";S
   95 PRINT
  100 END

