  100 REM PURPOSE: VERIFY 'OPTION RECLEN' COMMAND
  110 REM  AUTHOR: HOWARD WULF, AF5NE
  120 REM    DATE: 2017-04-10
  130 REM    NOTE: OPTION VERSION "BYWATER"
  140 REM
  145 OPTION RECLEN 512
  150 OPEN "RECLEN.DAT" FOR RANDOM AS # 4
  160 FIELD # 4, 250 AS A$, 250 AS B$, 12 AS C$
  170 LSET A$ = "A"
  180 LSET B$ = "B"
  190 LSET C$ = "C"
  200 PUT # 4
  210 CLOSE # 4
  300 OPEN "RECLEN.DAT" FOR RANDOM AS # 2
  310 FIELD # 2, 250 AS Z$, 250 AS Y$, 12 AS X$
  320 GET # 2
  330 PRINT "Z$="; LEFT$(Z$,5)
  340 PRINT "Y$="; LEFT$(Y$,5)
  350 PRINT "X$="; LEFT$(X$,5)
  360 CLOSE # 2
  999 END

