  100 REM PURPOSE: VERIFY 'OCT$(X,Y)'
  110 REM  AUTHOR: HOWARD WULF, AF5N3
  120 REM    DATE: 2017-04-04
  130 REM    NOTE: OPTION VERSION "HAARDT"
  140 REM
  150 REM
  200 FOR I = 0 TO 31
  210   PRINT I, OCT$(-1), OCT$(-1,I)
  220 NEXT I
  300 FOR I = 0 TO 31
  310   PRINT I, OCT$(1), OCT$(1,I)
  320 NEXT I
  999 END

