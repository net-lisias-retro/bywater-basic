100 REM Purpose: Verify RETURN exits a FUNCTION
110 REM  Author: Howard Wulf, AF5NE
120 REM    Date: 2015-12-23
130 REM

200 DEF TEST( X )
210     LET TEST = X * 7
220     RETURN
230     PRINT "TEST FAILED - RETURN NOT EXECUTED"
240     STOP
250 FEND

300 PRINT "ABOUT TO EXECUTE TEST"
310 GOSUB 1300
320 PRINT "TEST FAILED - RETURNED HERE"
330 GOTO 9999

1300 REM THIS IS A SUBROUTINE
1310 LET N = TEST( 3 )
1320 IF N = 21 THEN 1400
1330 PRINT "TEST FAILED - WRONG RESULT"
1340 GOTO 9999

1400 PRINT "TEST PASSED"

9999 END
