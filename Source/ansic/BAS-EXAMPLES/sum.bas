   10 REM compute the sum of integers from 1 to 10 with GOTO loop
   20 CALL SHELL("cls")
   30 LET N=1
   40 LET S = S + N
   50 PRINT N,S
   60 LET N = N + 1
   70 IF N <= 10 GOTO 40
   80 PRINT
    : REM print empty line
   90 PRINT "Final sum:";S
   95 PRINT
  100 END

