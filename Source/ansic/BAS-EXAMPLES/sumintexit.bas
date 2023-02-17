   10 REM compute the sum of integers with FOR loop. Early exit.
   20 CALL SHELL("cls")
   30 FOR N=1 TO 10
   35   IF (S + N > 25) GOTO 80
    :   REM exit the loop when S gets large enough
   40   LET S = S + N
   50   PRINT N,S
   70 NEXT N
   80 PRINT
    : REM print empty line
   90 PRINT "Final sum:";S
   95 PRINT
  100 END

