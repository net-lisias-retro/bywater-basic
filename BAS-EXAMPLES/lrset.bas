  10 ' Test LSET & RSET - contributed by ChipMaster
  20 OPEN "R", #1, "test.dat", 24
  30 FIELD #1, 24 AS F1$
  40 FOR X=1 TO 3
  50   READ S$, M$
  60   LSET F1$=S$
  70   IF F1$<>M$ THEN PRINT "ERROR @ LSET '"; S$; "'" : GOTO 900
  80 NEXT

 100 FOR X=1 TO 3
 110   READ S$, M$
 120   RSET F1$=S$
 130   IF F1$<>M$ THEN PRINT "ERROR @ LSET '"; S$; "'" : GOTO 900
 140 NEXT
 150 PRINT "pass"

 900 CLOSE #1
 910 END
 
1000 '*** TEST DATA ***
1010 DATA "THE RABBIT WENT LEFT",    "THE RABBIT WENT LEFT    "
1020 DATA "DOG",                     "DOG                     "
1030 DATA "",                        "                        "
1040 DATA "THE RABBIT WENT LEFT",    "    THE RABBIT WENT LEFT"
1050 DATA "DOG",                     "                     DOG"
1060 DATA "",                        "                        "
