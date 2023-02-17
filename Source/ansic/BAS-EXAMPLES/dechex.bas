   10 REM this program prints decimal and corresponding hexadecimal numbers.
   15 REM it shows 20 numbers per page. To show the next page press any key.
   20 CALL SHELL("cls")
   30 LET S = 4095
   50 PRINT "Decimal","Hex"
   60 PRINT "-------","---"
   70 FOR I = S to (20 + S)
   80   LET A = I
   90   GOSUB 200
  100   PRINT I, X$
  110 NEXT I
  130 LET S = S + 20
  140 END
  150 END
  200 LET X$ = ""
  210 LET B = A - INT (A/16) * 16
    : REM B = A MOD 16
  220 IF B < 10 THEN
    :   H$ = STR$(B)
    : END IF
  230 IF (B >= 10 AND B <= 15) THEN
    :   H$ = " " + CHR$(65 + B - 10)
    : END IF
  240 LET X$ = H$ + X$
  250 LET A = (A - B) / 16
  260 IF (A > 0) THEN
    :   GOTO 210
    : END IF
  270 RETURN

