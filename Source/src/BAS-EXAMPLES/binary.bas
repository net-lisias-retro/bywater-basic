    5 REM input a number, output its binary representation
   10 CALL SHELL("cls")
   30 LET X = 0
   40 LET P = 1
   50 INPUT "Enter an integer from 1 to 63: ";a
   60 IF (A < 0 OR A<>INT(A)) GOTO 50
   65 IF (A > 63) GOTO 30
   70 LET B = A - INT (A/2) * 2
   80 REM PRINT B
   90 LET X = B * P + X
  100 LET P = P * 10
  110 LET A = (A - B) / 2
  120 IF (A > 0) GOTO 70
  130 PRINT "As binary: ";X
  140 END

