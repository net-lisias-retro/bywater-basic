10 PRINT "SYSTEM RELIABILITY"
20 PRINT
30 PRINT "(TO END PROGRAM ENTER 0)"
40 PRINT "OPERATING TIME IN HOURS";
50 INPUT T
59 REM - TEST FOR END OF PROGRAM
60 IF T=0 THEN 230
70 PRINT "NUMBER OF COMPONENTS";
80 INPUT N
90 Z=0
99 REM - ENTER DATA FOR EACH COMPONENT
100 FOR I=1 TO N
110 PRINT "COMPONENT";I
120 PRINT "  AVERAGE WEAROUT TIME";
130 INPUT W
140 PRINT "  AVERAGE FAILURE RATE";
150 INPUT F
159 REM - INCLUDE EACH COMPONENT IN RELIABILITY
160 Z=Z+1/W+F
170 NEXT I
180 PRINT
189 REM - CALCULATE RELIABILITY, PRINT
190 Z=EXP(-Z*T)
200 PRINT "SYSTEM RELIABILITY =";Z
210 PRINT
219 REM - RESTART PROGRAM
220 GOTO 40
230 END
