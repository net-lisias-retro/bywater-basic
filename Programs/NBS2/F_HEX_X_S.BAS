REM ------------------------------------------------------------
REM   PURPOSE: TEST THE PARAMETER RANGE CHECKS
REM    AUTHOR: HOWARD WULF, AF5NE
REM GENERATED: 02/21/2015 14:08:23
REM  FILENAME: F_HEX_X_S.BAS
REM    SYNTAX: S$ = HEX$( X )
REM  UNIQUEID: F_HEX_X_S
REM  FUNCTION: HEX$
REM 
REM	VARIABLE	DESCRIPTION
REM	I	CURRENT  TESTCASE NUMBER
REM	E	EXPECTED ERROR FLAG
REM	F	ACTUAL   ERROR FLAG
REM	R$	EXPECTED FUNCTION RESULT
REM	S$	ACTUAL   FUNCTION RESULT
REM	X	ACTUAL   FUNCTION PARAMETER
REM 
RESTORE 2000
REM GET TESTCASE #
READ  I
WHILE I > 0
REM GET TESTCASE DATA
READ  E, R$, X
REM DISPLAY TESTCASE DATA
PRINT "TESTCASE #";I,"E=";E,"R$=[";R$;"]", "X=";X
REM EXECUTE TESTCASE
N =  0 
S$ = ""
ON ERROR GOTO 9000
F = 0
999 S$ = HEX$( X )
ERROR 0
REM DISPLAY TESTCASE RESULTS
PRINT ,"F=";F,"S$=[";S$;"]"
REM VERIFY EXPECTED ERROR
IF E <> F THEN
  PRINT "*** TEST FAILED, EXCEPTION MISMATCH ***"
  STOP
END IF
REM VERIFY EXPECTED RESULT
IF R$ <> S$ THEN
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
DATA  1 ,  0 , "0",  0 
DATA  2 ,  0 , "1",  1 
DATA  3 ,  0 , "FFFFFFFF", -1 
DATA  4 ,  0 , "0",  .4 
DATA  5 ,  0 , "0", -.4 
DATA  6 ,  0 , "1",  .6 
DATA  7 ,  0 , "FFFFFFFF", -.6 
DATA  8 ,  0 , "FE",  254 
DATA  9 ,  0 , "FF",  255 
DATA  10 ,  0 , "100",  256 
DATA  11 ,  0 , "7D00",  32000 
DATA  12 ,  0 , "0", -.227229 
DATA  13 ,  0 , "0", -.239157 
DATA  14 ,  0 , "0", -.213586 
DATA  15 ,  0 , "0",  .274675 
DATA  16 ,  0 , "0",  .169766 
DATA  17 ,  0 , "0",  .318766 
DATA  18 ,  0 , "0",  2.06658E-2 
DATA  19 ,  0 , "0",  .188257 
DATA  20 ,  0 , "0", -.277537 
DATA  21 ,  0 , "0", -.481303 
DATA  22 ,  0 , "0",  .43556 
DATA  23 ,  0 , "0", -.210971 
DATA  24 ,  0 , "0", -.455216 
DATA  25 ,  0 , "FFFFFF91", -110.907 
DATA  26 ,  0 , "6A",  105.632 
DATA  27 ,  0 , "FFFFFF8E", -114.341 
DATA  28 ,  0 , "6E",  109.706 
DATA  29 ,  0 , "6D",  109.198 
DATA  30 ,  0 , "56",  85.8773 
DATA  31 ,  0 , "FFFFFFC6", -58.3548 
DATA  32 ,  0 , "1E",  29.6397 
DATA  33 ,  0 , "FFFFFF94", -108.36 
DATA  34 ,  0 , "FFFFFFD1", -46.5199 
DATA  35 ,  0 , "71",  112.521 
DATA  36 ,  0 , "2D",  45.4151 
DATA  37 ,  0 , "65",  101.129 
DATA  38 ,  0 , "41",  65.0473 
DATA  39 ,  0 , "30",  48.4012 
DATA  40 ,  0 , "7A",  122.294 
DATA  41 ,  0 , "FFFFFFC8", -56.1094 
DATA  42 ,  0 , "FFFFFF87", -121.087 
DATA  43 ,  0 , "FFFFFF84", -123.517 
DATA  44 ,  0 , "FFFFFF9E", -97.6301 
DATA  45 ,  0 , "FFFFFFC0", -64.0001 
DATA  46 ,  0 , "FFFFFFE6", -25.6888 
DATA  47 ,  0 , "F",  14.8006 
DATA  48 ,  0 , "FFFFFFC3", -61.0877 
DATA  49 ,  0 , "FFFFFFBD", -66.6381 
DATA  50 ,  0 , "FFFFEA9C", -5476.5 
DATA  51 ,  0 , "FFFFAD26", -21210.3 
DATA  52 ,  0 , "FFFF8FAB", -28757.2 
DATA  53 ,  0 , "FFFF8FC4", -28732.2 
DATA  54 ,  0 , "31BA",  12730.3 
DATA  55 ,  0 , "FFFFF8D9", -1830.69 
DATA  56 ,  0 , "156E",  5486.39 
DATA  57 ,  0 , "5786",  22405.9 
DATA  58 ,  0 , "785A",  30809.8 
DATA  59 ,  0 , "FFFF8EFD", -28930.6 
DATA  60 ,  0 , "FFFFE881", -6014.53 
DATA  61 ,  0 , "4407",  17414.6 
DATA  62 ,  0 , "FFFFD6D6", -10538.3 
DATA  63 ,  0 , "FFFFBB80", -17536.3 
DATA  64 ,  0 , "FFFFDD67", -8856.62 
DATA  65 ,  0 , "FFFFEBEC", -5140.12 
DATA  66 ,  0 , "FFFFDE6D", -8595.31 
DATA  67 ,  0 , "FFFFF2C9", -3382.87 
DATA  68 ,  0 , "FFFFEC76", -5002.07 
DATA  69 ,  0 , "FFFFE957", -5800.72 
DATA  70 ,  0 , "73F6",  29686.4 
DATA  71 ,  0 , "A0B",  2571. 
DATA  72 ,  0 , "7973",  31091. 
DATA  73 ,  0 , "39E3",  14819. 
DATA  74 ,  0 , "ECF",  3790.9 
DATA  75 ,  1 , "", -4.2981E+9 
DATA  76 ,  1 , "", -7.05453E+8 
DATA  77 ,  1 , "", -3.10179E+9 
DATA  78 ,  1 , "", -4.86159E+9 
DATA  79 ,  1 , "", -8.62908E+8 
DATA  80 ,  1 , "", -3.4101E+9 
DATA  81 ,  1 , "",  3.3889E+9 
DATA  82 ,  1 , "",  2.49826E+9 
DATA  83 ,  1 , "",  2.3491E+9 
DATA  84 ,  1 , "",  1.94745E+8 
DATA  85 ,  1 , "",  2.02475E+9 
DATA  86 ,  1 , "", -2.26748E+9 
DATA  87 ,  1 , "", -2.10587E+9 
DATA  88 ,  1 , "",  4.23585E+9 
DATA  89 ,  1 , "", -2.66524E+9 
DATA  90 ,  1 , "",  4.01052E+9 
DATA  91 ,  1 , "", -4.87912E+9 
DATA  92 ,  1 , "",  1.77556E+9 
DATA  93 ,  1 , "",  2.87705E+8 
DATA  94 ,  1 , "",  1.99977E+8 
DATA  95 ,  1 , "", -3.39941E+9 
DATA  96 ,  1 , "", -3.49119E+9 
DATA  97 ,  1 , "", -2.86324E+9 
DATA  98 ,  1 , "",  4.20418E+9 
DATA  99 ,  1 , "", -3.1518E+9 
DATA  100 ,  1 , "",  4.60615E+9 
DATA 0
9000 REM ERROR HANDLER
IF ERL = 999 THEN
  F = ABS(SGN(ERR))
  RESUME NEXT
END IF
PRINT "*** UNEXPECTED ERROR ON LINE ";ERL;" ***"
9999 END
