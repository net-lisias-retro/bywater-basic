   10 rem 12/13/2019 Ken  Fibonacci
  100 DIM F(16)
  150 F(1) = 1
  200 F(2) = 1
  250 FOR i = 3 TO 16
  260   F(i) = F(i - 1) + F(i - 2)
  270 NEXT i
  280 S$ = ""
  290 FOR i = 1 TO 16
  300   S$ = S$ + STR$(F(i)) + ","
  350 NEXT i
  400 S$ = S$ + " ..."
  500 PRINT S$

