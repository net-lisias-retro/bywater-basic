  100 REM PURPOSE: VERIFY 'HEX$(X,Y)'
  110 REM  AUTHOR: HOWARD WULF, AF5N3
  120 REM    DATE: 2017-04-04
  130 REM    NOTE: OPTION VERSION "HAARDT"
  140 REM
  150 REM
  200 PRINT "I", "HEX$(-1)", "HEX$(-1,I)"
  210 FOR I = 0 TO 35
  220   PRINT I, HEX$(-1), HEX$(-1,I)
  230 NEXT I
  300 PRINT "I", "HEX$(1)", "HEX$(1,I)"
  310 FOR I = 0 TO 35
  320   PRINT I, HEX$(1), HEX$(1,I)
  330 NEXT I  
  999 END
