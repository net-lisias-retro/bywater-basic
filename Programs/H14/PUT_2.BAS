  100 REM PURPOSE: VERIFY 'GET' AND 'PUT' COMMANDS
  110 REM  AUTHOR: HOWARD WULF, AF5NE
  120 REM    DATE: 2017-04-04
  130 REM    NOTE: OPTION VERSION "HAARDT"
  140 REM
  150 REM
  160 KILL "PUT.DAT"
  170 REM
  180 REM
  190 REM
  200 OPEN "PUT.DAT" FOR BINARY AS # 7
  210 LET A$ = "12345"
  220 LET B = 234.567
  230 PUT # 7, , A$, B
  240 CLOSE # 7
  250 REM
  300 LET A$ = SPACE$(5)
  310 LET B = 0
  320 REM
  400 OPEN "PUT.DAT" FOR BINARY AS #2
  410 GET # 2, , A$, B
  420 PRINT A$, B
  430 CLOSE # 2
  440 REM
  999 END

