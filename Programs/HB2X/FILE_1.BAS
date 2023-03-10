  100 REM Purpose: Verify "GE MARK I" file handling
  110 REM  Author: Howard Wulf, AF5NE
  120 REM    Date: 2015-07-15
  130 REM

  200 PRINT " VERIFY 'FILES' OPEN AND 'FILE' CLOSE"
  210 FILES "*";"*","FILE_1.TXT";"*"
  220 IF END #3 THEN 260
  230 READ #3, A$
  240 PRINT A$
  250 GOTO 220
  260 FILE #3, "*"
  270 INPUT A$
  
  300 PRINT "VERIFY 'FILE' OPEN"
  310 FILE #3, "FILE_1.TXT"
  320 IF END #3 THEN 360
  330 READ #3, A$
  340 PRINT A$
  350 GOTO 320
  360 INPUT A$
  
  400 PRINT "VERIFY 'RESTORE'"
  410 RESTORE #3
  420 IF END #3 THEN 460
  430 READ #3, A$
  440 PRINT A$
  450 GOTO 420
  460 INPUT A$
  
  500 PRINT "VERIFY 'SCRATCH'"
  510 SCRATCH #3
  520 WRITE #3, "This is line 1"
  530 WRITE #3, "This is line 2"
  540 WRITE #3, "This is line 3"
  550 WRITE #3, "This is line 4"
  560 WRITE #3, "This is line 5"

  600 PRINT "READ BACK VALUES WRITTEN"
  610 RESTORE #3
  620 IF END #3 THEN 660
  630 READ #3, A$
  640 PRINT A$
  650 GOTO 620
  660 PRINT "TEST PASSED"

  999 END
