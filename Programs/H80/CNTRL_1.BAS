  100 REM PURPOSE: VERIFY 'CNTRL 1, Y' FUNCTION
  110 REM  AUTHOR: HOWAARD WULF, AF5NE
  120 REM    DATE: 2017-02-12
  130 REM    NOTE: OPTION VERSION RBASIC
  140 REM
  150 REM
  160 LET N = 15
  170 ON ERROR GOTO 800
  180 REM
  190 REM
  200 LET X = PI
  210 LET A$ = "PI"
  220 GOSUB 600
  230 REM
  240 LET X = PI * 1000
  250 LET A$ = "PI * 1000"
  260 GOSUB 600
  270 REM
  280 LET X = PI / 1000
  290 LET A$ = "PI / 1000"
  300 GOSUB 600
  310 REM
  320 GOTO 999
  330 REM
  600 PRINT "COMMAND";TAB(20); A$
  610 FOR I = 0 TO N
  620   CNTRL 1, I
  630   PRINT "CNTRL 1,"; I; TAB(20); X
  640 NEXT I
  650 REM
  660 REM INPUT "PRESS ENTER"; A$
  670 RETURN
  800 REM
  810 PRINT "ERL=";ERL, "ERR=";ERR, "ERROR$=";ERROR$
  820 REM RESUME NEXT
  830 REM
  999 END

