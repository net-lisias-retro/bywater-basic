10 REM 'ERASE' TEST PROGRAM
20 DIM A(15)
30 FOR I=1 TO 15
40 A(I) = I
50 NEXT I
60 ERASE A
70 PRINT "ERASE PASSED THE TEST IF 0 =";A(1)
80 DIM A(5,5)
90 A(5,5)=2
100 PRINT "ERASE PASSED";A(5,5);"TESTS."
999 END
