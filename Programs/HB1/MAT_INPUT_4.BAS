10 REM 'MAT INPUT' (EQUAL) TEST PROGRAM
20 DIM A(3,4)
30 PRINT "ENTER 12 NUMBERS (TYPE A COMMA BETWEEN EACH NUMBER)"
40 MAT INPUT A(3,4)
50 FOR I=1 TO 3
60 FOR J=1 TO 4
70 PRINT A(I,J);
80 NEXT J
90 PRINT
100 NEXT I
110 PRINT "THE MAT INPUT STATEMENT PASSED THE TEST"
120 PRINT "IF THE INPUT VALUES ARE PRINTED"
130 PRINT "IN A MATRIX HAVING THREE ROWS OF FOUR COLUMNS"
999 END
