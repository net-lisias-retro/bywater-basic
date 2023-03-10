REM ------------------------------------------------------------
REM   PURPOSE: TEST THE PARAMETER RANGE CHECKS
REM    AUTHOR: HOWARD WULF, AF5NE
REM GENERATED: 02/21/2015 14:08:15
REM  FILENAME: F_ASIN_X_N.BAS
REM    SYNTAX: N  = ASIN( X )
REM  UNIQUEID: F_ASIN_X_N
REM  FUNCTION: ASIN
REM 
REM	VARIABLE	DESCRIPTION
REM	I	CURRENT  TESTCASE NUMBER
REM	E	EXPECTED ERROR FLAG
REM	F	ACTUAL   ERROR FLAG
REM	R	EXPECTED FUNCTION RESULT
REM	N	ACTUAL   FUNCTION RESULT
REM	X	ACTUAL   FUNCTION PARAMETER
REM 
RESTORE 2000
REM GET TESTCASE #
READ  I
WHILE I > 0
REM GET TESTCASE DATA
READ  E, R, X
REM DISPLAY TESTCASE DATA
PRINT "TESTCASE #";I,"E=";E,"R=";R, "X=";X
REM EXECUTE TESTCASE
N =  0 
S$ = ""
ON ERROR GOTO 9000
F = 0
999 N  = ASIN( X )
ERROR 0
REM DISPLAY TESTCASE RESULTS
PRINT ,"F=";F,"N=";N
REM VERIFY EXPECTED ERROR
IF E <> F THEN
  PRINT "*** TEST FAILED, EXCEPTION MISMATCH ***"
  STOP
END IF
REM VERIFY EXPECTED RESULT
IF R > 0 THEN
  LET RMIN = 0.99 * R
  IF R > MAXNUM / 1.012 THEN
    LET RMAX = MAXNUM
  ELSE
    LET RMAX = 1.01 * R
  END IF
END IF
IF R < 0 THEN
  IF R < - MAXNUM / 1.012 THEN
    LET RMIN = -MAXNUM
  ELSE
    LET RMIN = 1.01 * R
  END IF
  LET RMAX = 0.99 * R
END IF
IF R = 0 THEN
  LET RMIN = -.01
  LET RMAX = +.01
END IF
IF N < RMIN THEN
  PRINT "*** TEST FAILED, RESULT MISMATCH ***"
  STOP
END IF
IF N > RMAX THEN
  PRINT "*** TEST FAILED, RESULT MISMATCH ***"
  STOP
END IF
PRINT "*** TEST PASSED ***"
REM GET NEXT TESTCASE #
READ  I
WEND
PRINT "*** ALL TESTS PASSED ***"
GOTO 9999
1999 REM TESTCASE, EXPECTED ERROR, EXPECTED RESULT, PARAMETERS...
DATA  1 ,  0 ,  0 ,  0 
DATA  2 ,  0 ,  1.5708 ,  1 
DATA  3 ,  0 , -1.5708 , -1 
DATA  4 ,  0 ,  .411517 ,  .4 
DATA  5 ,  0 , -.411517 , -.4 
DATA  6 ,  0 ,  .643501 ,  .6 
DATA  7 ,  0 , -.643501 , -.6 
DATA  8 ,  1 ,  0 ,  254 
DATA  9 ,  1 ,  0 ,  255 
DATA  10 ,  1 ,  0 ,  256 
DATA  11 ,  1 ,  0 ,  32000 
DATA  12 ,  0 , -.229231 , -.227229 
DATA  13 ,  0 , -.241498 , -.239157 
DATA  14 ,  0 , -.215244 , -.213586 
DATA  15 ,  0 ,  .278252 ,  .274675 
DATA  16 ,  0 ,  .170592 ,  .169766 
DATA  17 ,  0 ,  .324427 ,  .318766 
DATA  18 ,  0 ,  2.06673E-2 ,  2.06658E-2 
DATA  19 ,  0 ,  .189387 ,  .188257 
DATA  20 ,  0 , -.281229 , -.277537 
DATA  21 ,  0 , -.502141 , -.481303 
DATA  22 ,  0 ,  .45066 ,  .43556 
DATA  23 ,  0 , -.212568 , -.210971 
DATA  24 ,  0 , -.472615 , -.455216 
DATA  25 ,  1 ,  0 , -110.907 
DATA  26 ,  1 ,  0 ,  105.632 
DATA  27 ,  1 ,  0 , -114.341 
DATA  28 ,  1 ,  0 ,  109.706 
DATA  29 ,  1 ,  0 ,  109.198 
DATA  30 ,  1 ,  0 ,  85.8773 
DATA  31 ,  1 ,  0 , -58.3548 
DATA  32 ,  1 ,  0 ,  29.6397 
DATA  33 ,  1 ,  0 , -108.36 
DATA  34 ,  1 ,  0 , -46.5199 
DATA  35 ,  1 ,  0 ,  112.521 
DATA  36 ,  1 ,  0 ,  45.4151 
DATA  37 ,  1 ,  0 ,  101.129 
DATA  38 ,  1 ,  0 ,  65.0473 
DATA  39 ,  1 ,  0 ,  48.4012 
DATA  40 ,  1 ,  0 ,  122.294 
DATA  41 ,  1 ,  0 , -56.1094 
DATA  42 ,  1 ,  0 , -121.087 
DATA  43 ,  1 ,  0 , -123.517 
DATA  44 ,  1 ,  0 , -97.6301 
DATA  45 ,  1 ,  0 , -64.0001 
DATA  46 ,  1 ,  0 , -25.6888 
DATA  47 ,  1 ,  0 ,  14.8006 
DATA  48 ,  1 ,  0 , -61.0877 
DATA  49 ,  1 ,  0 , -66.6381 
DATA  50 ,  1 ,  0 , -5476.5 
DATA  51 ,  1 ,  0 , -21210.3 
DATA  52 ,  1 ,  0 , -28757.2 
DATA  53 ,  1 ,  0 , -28732.2 
DATA  54 ,  1 ,  0 ,  12730.3 
DATA  55 ,  1 ,  0 , -1830.69 
DATA  56 ,  1 ,  0 ,  5486.39 
DATA  57 ,  1 ,  0 ,  22405.9 
DATA  58 ,  1 ,  0 ,  30809.8 
DATA  59 ,  1 ,  0 , -28930.6 
DATA  60 ,  1 ,  0 , -6014.53 
DATA  61 ,  1 ,  0 ,  17414.6 
DATA  62 ,  1 ,  0 , -10538.3 
DATA  63 ,  1 ,  0 , -17536.3 
DATA  64 ,  1 ,  0 , -8856.62 
DATA  65 ,  1 ,  0 , -5140.12 
DATA  66 ,  1 ,  0 , -8595.31 
DATA  67 ,  1 ,  0 , -3382.87 
DATA  68 ,  1 ,  0 , -5002.07 
DATA  69 ,  1 ,  0 , -5800.72 
DATA  70 ,  1 ,  0 ,  29686.4 
DATA  71 ,  1 ,  0 ,  2571. 
DATA  72 ,  1 ,  0 ,  31091. 
DATA  73 ,  1 ,  0 ,  14819. 
DATA  74 ,  1 ,  0 ,  3790.9 
DATA  75 ,  1 ,  0 , -4.2981E+9 
DATA  76 ,  1 ,  0 , -7.05453E+8 
DATA  77 ,  1 ,  0 , -3.10179E+9 
DATA  78 ,  1 ,  0 , -4.86159E+9 
DATA  79 ,  1 ,  0 , -8.62908E+8 
DATA  80 ,  1 ,  0 , -3.4101E+9 
DATA  81 ,  1 ,  0 ,  3.3889E+9 
DATA  82 ,  1 ,  0 ,  2.49826E+9 
DATA  83 ,  1 ,  0 ,  2.3491E+9 
DATA  84 ,  1 ,  0 ,  1.94745E+8 
DATA  85 ,  1 ,  0 ,  2.02475E+9 
DATA  86 ,  1 ,  0 , -2.26748E+9 
DATA  87 ,  1 ,  0 , -2.10587E+9 
DATA  88 ,  1 ,  0 ,  4.23585E+9 
DATA  89 ,  1 ,  0 , -2.66524E+9 
DATA  90 ,  1 ,  0 ,  4.01052E+9 
DATA  91 ,  1 ,  0 , -4.87912E+9 
DATA  92 ,  1 ,  0 ,  1.77556E+9 
DATA  93 ,  1 ,  0 ,  2.87705E+8 
DATA  94 ,  1 ,  0 ,  1.99977E+8 
DATA  95 ,  1 ,  0 , -3.39941E+9 
DATA  96 ,  1 ,  0 , -3.49119E+9 
DATA  97 ,  1 ,  0 , -2.86324E+9 
DATA  98 ,  1 ,  0 ,  4.20418E+9 
DATA  99 ,  1 ,  0 , -3.1518E+9 
DATA  100 ,  1 ,  0 ,  4.60615E+9 
DATA 0
9000 REM ERROR HANDLER
IF ERL = 999 THEN
  F = ABS(SGN(ERR))
  RESUME NEXT
END IF
PRINT "*** UNEXPECTED ERROR ON LINE ";ERL;" ***"
9999 END
