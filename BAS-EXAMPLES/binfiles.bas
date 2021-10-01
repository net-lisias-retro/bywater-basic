   10 'Test / Demonstrate the use of the BINARY mode files.
    : 'Contributed by ChipMaster
    : 'NOTE: OPTION VERSION "HAARDT" must be run befor this loads or you
    : '      get syntax and or illegal function call errors.
   20 OPTION VERSION "HAARDT" : DEFINT A-Z : CLOSE : 'JIC
   
   99 '*** Test wries, especially CHR$(0) ***
  100 OPEN "O", #1, "TEST.DAT" : CLOSE #1 : ' ZAP file
  110 OPEN "B", #1, "TEST.DAT"
  120 M1$="" : FOR X=  0 TO 127 : M1$=M1$+CHR$(X) : NEXT
  130 M2$="" : FOR X=128 TO 255 : M2$=M2$+CHR$(X) : NEXT
  140 PUT #1, 1, M1$, M2$
  
  199 '*** now rewind, reread ***
  200 T1$ = STRING$(128, " ")
  210 T2$ = T1$
  220 GET #1, 1, T1$, T2$
  230 CLOSE #1
  
  239 '*** compare & spill results ***
  240 IF T1$=M1$ AND T2$=M2$ THEN 270
  250   PRINT "FAIL"
  260   END
  270 PRINT "Worked"
  280 PRINT MID$(T1$, 34, 95)
  290 PRINT "Press [ENTER] to view file";: LINE INPUT X$
  300 ' "hexdump" is a *NIX tool. Substitute your hex deump tool of choice.
  310 SHELL "hexdump -C TEST.DAT | less"
