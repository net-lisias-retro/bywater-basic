   10 REM 'REPEAT$' TEST PROGRAM
   20 PRINT "TYPE YOUR FIRST NAME";
   30 INPUT N$
   40 PRINT "NOW PICK A NUMBER FROM 2 TO 5";
   50 INPUT M
   60 A$ = REPEAT$(N$,M)
   70 PRINT A$
   99 REM
30000 DEF REPEAT$( A$, X )
30010   DIM I, S$
30020   LET S$ = ""
30030   FOR I=1 TO X
30040     LET S$ = S$ & A$
30050   NEXT I
30060   LET REPEAT$ = S$
30070 FNEND
30999 END
