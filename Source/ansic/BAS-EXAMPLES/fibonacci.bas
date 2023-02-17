    5 REM Fibonacci numbers  4-13-2020 Ken
    7 CALL SHELL("cls")
   10 LET M = 5000
   20 LET X = 1 : LET Y = 1
   30 IF (X > M) GOTO 100
   40 PRINT X
   50 X = X + Y
   60 IF (Y > M) GOTO 100
   70 PRINT Y
   80 Y = X + Y
   90 GOTO 30
  100 STOP

