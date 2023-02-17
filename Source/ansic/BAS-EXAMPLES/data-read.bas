100 CALL SHELL("cls")
110 on error gosub 170
120 C = 0
  : REM C will hold the number of data items
130 READ N
140 PRINT N
150 C = C + 1
160 GOTO 130
170 print "Error number #, line # "; err; " , ";erl
180 PRINT "Read ";C;" data elements"
185 end
190 DATA 12,107,0,20,443,218,232,468,561
200 DATA 273,187,936,436,4,50,110,320,120
210 DATA 45,670,87

