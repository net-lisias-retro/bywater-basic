  100 REM PURPOSE: VERIFY 'LOCAL' COMMAND
  110 REM  AUTHOR: HOWARD WULF, AF5NE
  120 REM    DATE: 2017-03-31
  130 REM    NOTE: OPTION VERSION "HAARDT"
  140 REM
  150 SUB MYSUB()
  160   LOCAL A$(100)
  170   LET A$(100) = "OK"
  180   PRINT A$(100)
  190 END SUB
  200 CALL MYSUB()
  300 REM
  310 ON ERROR GOTO 800
  320 REM the following line should error (subscript out of range) because the variable was LOCAL
  330 PRINT A$(100)
  340 GOTO 999
  800 REM
  810 PRINT "ERL="; ERL, "ERR="; ERR
  820 IF ERL = 330 AND ERR = 9 GOTO 900
  830 REM wrong error
  840 PRINT "WRONG  ERROR OCCURRED"
  850 RESUME NEXT
  900 REM correct error
  910 PRINT "CORRECT ERROR OCCURRED"
  920 RESUME NEXT
  999 END
