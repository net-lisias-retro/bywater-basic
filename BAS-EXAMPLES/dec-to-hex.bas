   10 CALL SHELL("cls")
   30 PRINT "DECIMAL","HEX"
   40 PRINT "-------","---"
   50 FOR I = 0 TO 20
   60   LET A = I
   70   GOSUB 200
   80   PRINT I, X$
   90 NEXT I
  100 END
  200 LET X$ = ""
  210 LET B = A - INT (A/16) * 16
  220 IF B < 10 THEN
    :   H$ = STR$(B)
    : END IF
  230 IF B = 10 THEN
    :   H$ = " A"
    : END IF
  240 IF B = 11 THEN
    :   H$ = " B"
    : END IF
  250 IF B = 12 THEN
    :   H$ = " C"
    : END IF
  260 IF B = 13 THEN
    :   H$ = " D"
    : END IF
  270 IF B = 14 THEN
    :   H$ = " E"
    : END IF
  280 IF B = 15 THEN
    :   H$ = " F"
    : END IF
  290 LET X$ = H$ + X$
  300 LET A = (A - B) / 16
  310 IF (A > 0) THEN
    :   GOTO 210
    : END IF
  320 RETURN

