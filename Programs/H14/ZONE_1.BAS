100 REM PURPOSE: VERIFY THE 'ZONE' COMMAND
110 REM  AUTHOR: HOWARD WULF, AF5NE
120 REM    DATE: 2017-04-05
130 REM    NOTE: OPTION VERSION "HAARDT'
140 REM
150 REM
200 PRINT "DEFULT ZONE'
210 REM
220 PRINT 1,2,3
300 PRINT "ZONE 5"
310 ZONE 5
320 PRINT 1,2,3
400 PRINT "ZONE 999,10"
410 ZONE 999,10
420 PRINT 1,2,3
500 PRINT "ZONE 0"
510 ZONE 0
520 PRINT 1,2,3
600 PRINT "ZONE 999,0"
610 ZONE 999,0
620 PRINT 1,2,3
999 END

