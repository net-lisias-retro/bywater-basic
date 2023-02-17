   10 REM compute the sum of integers from 1 to 10 with FOR and negative STEP
   20 CALL SHELL("cls")
   30 FOR N=10 TO 1 STEP -2
   40   LET S = S + N
   50   PRINT N,S
   70 NEXT N
   80 PRINT
    : REM print empty line
   90 PRINT "Final sum:";S
   95 PRINT
  100 END

