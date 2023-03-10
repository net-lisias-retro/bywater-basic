   90 REM Filename: SUBSTR1.BAS
  100 REM  Purpose: Verify sub-string assignments
  110 REM   Author: Howard Wulf, AF5NE
  120 REM     Date: 2017-06-23
  130 REM    Notes: OPTION VERSION "BYWATER"
  140 REM
  150 REM
  160 REM
  170 REM
  180 RESTORE
  190 READ A$
  200 IF A$ = "*" THEN 9999
  210 READ M, N, B$
  220 PRINT "A$=["; A$; "], M="; M ; ", N="; N; ", B$=["; B$; "], ";
  230 LET A$ [ M, N ] = B$
  240 PRINT "RESULT=["; A$; "]"
  250 GOTO 190
  260 REM
  270 REM
  280 REM
  290 REM
  300 REM ------------------------------------------------
  310 REM DATA FORMAT:
  320 REM A$, M, N, B$
  340 REM
 1000  DATA "ABCDEFG",-2 ,-2 ,"WXYZ"
 1010  DATA "ABCDEFG",-2 ,-1 ,"WXYZ"
 1020  DATA "ABCDEFG",-2 , 0 ,"WXYZ"
 1030  DATA "ABCDEFG",-2 , 1 ,"WXYZ"
 1040  DATA "ABCDEFG",-2 , 2 ,"WXYZ"
 1050  DATA "ABCDEFG",-2 , 3 ,"WXYZ"
 1060  DATA "ABCDEFG",-2 , 4 ,"WXYZ"
 1070  DATA "ABCDEFG",-2 , 5 ,"WXYZ"
 1080  DATA "ABCDEFG",-2 , 6 ,"WXYZ"
 1090  DATA "ABCDEFG",-2 , 7 ,"WXYZ"
 1100  DATA "ABCDEFG",-2 , 8 ,"WXYZ"
 1110  DATA "ABCDEFG",-2 , 9 ,"WXYZ"
 1120  DATA "ABCDEFG",-1 ,-2 ,"WXYZ"
 1130  DATA "ABCDEFG",-1 ,-1 ,"WXYZ"
 1140  DATA "ABCDEFG",-1 , 0 ,"WXYZ"
 1150  DATA "ABCDEFG",-1 , 1 ,"WXYZ"
 1160  DATA "ABCDEFG",-1 , 2 ,"WXYZ"
 1170  DATA "ABCDEFG",-1 , 3 ,"WXYZ"
 1180  DATA "ABCDEFG",-1 , 4 ,"WXYZ"
 1190  DATA "ABCDEFG",-1 , 5 ,"WXYZ"
 1200  DATA "ABCDEFG",-1 , 6 ,"WXYZ"
 1210  DATA "ABCDEFG",-1 , 7 ,"WXYZ"
 1220  DATA "ABCDEFG",-1 , 8 ,"WXYZ"
 1230  DATA "ABCDEFG",-1 , 9 ,"WXYZ"
 1240  DATA "ABCDEFG", 0 ,-2 ,"WXYZ"
 1250  DATA "ABCDEFG", 0 ,-1 ,"WXYZ"
 1260  DATA "ABCDEFG", 0 , 0 ,"WXYZ"
 1270  DATA "ABCDEFG", 0 , 1 ,"WXYZ"
 1280  DATA "ABCDEFG", 0 , 2 ,"WXYZ"
 1290  DATA "ABCDEFG", 0 , 3 ,"WXYZ"
 1300  DATA "ABCDEFG", 0 , 4 ,"WXYZ"
 1310  DATA "ABCDEFG", 0 , 5 ,"WXYZ"
 1320  DATA "ABCDEFG", 0 , 6 ,"WXYZ"
 1330  DATA "ABCDEFG", 0 , 7 ,"WXYZ"
 1340  DATA "ABCDEFG", 0 , 8 ,"WXYZ"
 1350  DATA "ABCDEFG", 0 , 9 ,"WXYZ"
 1360  DATA "ABCDEFG", 1 ,-2 ,"WXYZ"
 1370  DATA "ABCDEFG", 1 ,-1 ,"WXYZ"
 1380  DATA "ABCDEFG", 1 , 0 ,"WXYZ"
 1390  DATA "ABCDEFG", 1 , 1 ,"WXYZ"
 1400  DATA "ABCDEFG", 1 , 2 ,"WXYZ"
 1410  DATA "ABCDEFG", 1 , 3 ,"WXYZ"
 1420  DATA "ABCDEFG", 1 , 4 ,"WXYZ"
 1430  DATA "ABCDEFG", 1 , 5 ,"WXYZ"
 1440  DATA "ABCDEFG", 1 , 6 ,"WXYZ"
 1450  DATA "ABCDEFG", 1 , 7 ,"WXYZ"
 1460  DATA "ABCDEFG", 1 , 8 ,"WXYZ"
 1470  DATA "ABCDEFG", 1 , 9 ,"WXYZ"
 1480  DATA "ABCDEFG", 2 ,-2 ,"WXYZ"
 1490  DATA "ABCDEFG", 2 ,-1 ,"WXYZ"
 1500  DATA "ABCDEFG", 2 , 0 ,"WXYZ"
 1510  DATA "ABCDEFG", 2 , 1 ,"WXYZ"
 1520  DATA "ABCDEFG", 2 , 2 ,"WXYZ"
 1530  DATA "ABCDEFG", 2 , 3 ,"WXYZ"
 1540  DATA "ABCDEFG", 2 , 4 ,"WXYZ"
 1550  DATA "ABCDEFG", 2 , 5 ,"WXYZ"
 1560  DATA "ABCDEFG", 2 , 6 ,"WXYZ"
 1570  DATA "ABCDEFG", 2 , 7 ,"WXYZ"
 1580  DATA "ABCDEFG", 2 , 8 ,"WXYZ"
 1590  DATA "ABCDEFG", 2 , 9 ,"WXYZ"
 1600  DATA "ABCDEFG", 3 ,-2 ,"WXYZ"
 1610  DATA "ABCDEFG", 3 ,-1 ,"WXYZ"
 1620  DATA "ABCDEFG", 3 , 0 ,"WXYZ"
 1630  DATA "ABCDEFG", 3 , 1 ,"WXYZ"
 1640  DATA "ABCDEFG", 3 , 2 ,"WXYZ"
 1650  DATA "ABCDEFG", 3 , 3 ,"WXYZ"
 1660  DATA "ABCDEFG", 3 , 4 ,"WXYZ"
 1670  DATA "ABCDEFG", 3 , 5 ,"WXYZ"
 1680  DATA "ABCDEFG", 3 , 6 ,"WXYZ"
 1690  DATA "ABCDEFG", 3 , 7 ,"WXYZ"
 1700  DATA "ABCDEFG", 3 , 8 ,"WXYZ"
 1710  DATA "ABCDEFG", 3 , 9 ,"WXYZ"
 1720  DATA "ABCDEFG", 4 ,-2 ,"WXYZ"
 1730  DATA "ABCDEFG", 4 ,-1 ,"WXYZ"
 1740  DATA "ABCDEFG", 4 , 0 ,"WXYZ"
 1750  DATA "ABCDEFG", 4 , 1 ,"WXYZ"
 1760  DATA "ABCDEFG", 4 , 2 ,"WXYZ"
 1770  DATA "ABCDEFG", 4 , 3 ,"WXYZ"
 1780  DATA "ABCDEFG", 4 , 4 ,"WXYZ"
 1790  DATA "ABCDEFG", 4 , 5 ,"WXYZ"
 1800  DATA "ABCDEFG", 4 , 6 ,"WXYZ"
 1810  DATA "ABCDEFG", 4 , 7 ,"WXYZ"
 1820  DATA "ABCDEFG", 4 , 8 ,"WXYZ"
 1830  DATA "ABCDEFG", 4 , 9 ,"WXYZ"
 1840  DATA "ABCDEFG", 5 ,-2 ,"WXYZ"
 1850  DATA "ABCDEFG", 5 ,-1 ,"WXYZ"
 1860  DATA "ABCDEFG", 5 , 0 ,"WXYZ"
 1870  DATA "ABCDEFG", 5 , 1 ,"WXYZ"
 1880  DATA "ABCDEFG", 5 , 2 ,"WXYZ"
 1890  DATA "ABCDEFG", 5 , 3 ,"WXYZ"
 1900  DATA "ABCDEFG", 5 , 4 ,"WXYZ"
 1910  DATA "ABCDEFG", 5 , 5 ,"WXYZ"
 1920  DATA "ABCDEFG", 5 , 6 ,"WXYZ"
 1930  DATA "ABCDEFG", 5 , 7 ,"WXYZ"
 1940  DATA "ABCDEFG", 5 , 8 ,"WXYZ"
 1950  DATA "ABCDEFG", 5 , 9 ,"WXYZ"
 1960  DATA "ABCDEFG", 6 ,-2 ,"WXYZ"
 1970  DATA "ABCDEFG", 6 ,-1 ,"WXYZ"
 1980  DATA "ABCDEFG", 6 , 0 ,"WXYZ"
 1990  DATA "ABCDEFG", 6 , 1 ,"WXYZ"
 2000  DATA "ABCDEFG", 6 , 2 ,"WXYZ"
 2010  DATA "ABCDEFG", 6 , 3 ,"WXYZ"
 2020  DATA "ABCDEFG", 6 , 4 ,"WXYZ"
 2030  DATA "ABCDEFG", 6 , 5 ,"WXYZ"
 2040  DATA "ABCDEFG", 6 , 6 ,"WXYZ"
 2050  DATA "ABCDEFG", 6 , 7 ,"WXYZ"
 2060  DATA "ABCDEFG", 6 , 8 ,"WXYZ"
 2070  DATA "ABCDEFG", 6 , 9 ,"WXYZ"
 2080  DATA "ABCDEFG", 7 ,-2 ,"WXYZ"
 2090  DATA "ABCDEFG", 7 ,-1 ,"WXYZ"
 2100  DATA "ABCDEFG", 7 , 0 ,"WXYZ"
 2110  DATA "ABCDEFG", 7 , 1 ,"WXYZ"
 2120  DATA "ABCDEFG", 7 , 2 ,"WXYZ"
 2130  DATA "ABCDEFG", 7 , 3 ,"WXYZ"
 2140  DATA "ABCDEFG", 7 , 4 ,"WXYZ"
 2150  DATA "ABCDEFG", 7 , 5 ,"WXYZ"
 2160  DATA "ABCDEFG", 7 , 6 ,"WXYZ"
 2170  DATA "ABCDEFG", 7 , 7 ,"WXYZ"
 2180  DATA "ABCDEFG", 7 , 8 ,"WXYZ"
 2190  DATA "ABCDEFG", 7 , 9 ,"WXYZ"
 2200  DATA "ABCDEFG", 8 ,-2 ,"WXYZ"
 2210  DATA "ABCDEFG", 8 ,-1 ,"WXYZ"
 2220  DATA "ABCDEFG", 8 , 0 ,"WXYZ"
 2230  DATA "ABCDEFG", 8 , 1 ,"WXYZ"
 2240  DATA "ABCDEFG", 8 , 2 ,"WXYZ"
 2250  DATA "ABCDEFG", 8 , 3 ,"WXYZ"
 2260  DATA "ABCDEFG", 8 , 4 ,"WXYZ"
 2270  DATA "ABCDEFG", 8 , 5 ,"WXYZ"
 2280  DATA "ABCDEFG", 8 , 6 ,"WXYZ"
 2290  DATA "ABCDEFG", 8 , 7 ,"WXYZ"
 2300  DATA "ABCDEFG", 8 , 8 ,"WXYZ"
 2310  DATA "ABCDEFG", 8 , 9 ,"WXYZ"
 2320  DATA "ABCDEFG", 9 ,-2 ,"WXYZ"
 2330  DATA "ABCDEFG", 9 ,-1 ,"WXYZ"
 2340  DATA "ABCDEFG", 9 , 0 ,"WXYZ"
 2350  DATA "ABCDEFG", 9 , 1 ,"WXYZ"
 2360  DATA "ABCDEFG", 9 , 2 ,"WXYZ"
 2370  DATA "ABCDEFG", 9 , 3 ,"WXYZ"
 2380  DATA "ABCDEFG", 9 , 4 ,"WXYZ"
 2390  DATA "ABCDEFG", 9 , 5 ,"WXYZ"
 2400  DATA "ABCDEFG", 9 , 6 ,"WXYZ"
 2410  DATA "ABCDEFG", 9 , 7 ,"WXYZ"
 2420  DATA "ABCDEFG", 9 , 8 ,"WXYZ"
 2430  DATA "ABCDEFG", 9 , 9 ,"WXYZ"
 3000  DATA "ABCDEFG",-2 ,-2 ,""
 3010  DATA "ABCDEFG",-2 ,-1 ,""
 3020  DATA "ABCDEFG",-2 , 0 ,""
 3030  DATA "ABCDEFG",-2 , 1 ,""
 3040  DATA "ABCDEFG",-2 , 2 ,""
 3050  DATA "ABCDEFG",-2 , 3 ,""
 3060  DATA "ABCDEFG",-2 , 4 ,""
 3070  DATA "ABCDEFG",-2 , 5 ,""
 3080  DATA "ABCDEFG",-2 , 6 ,""
 3090  DATA "ABCDEFG",-2 , 7 ,""
 3100  DATA "ABCDEFG",-2 , 8 ,""
 3110  DATA "ABCDEFG",-2 , 9 ,""
 3120  DATA "ABCDEFG",-1 ,-2 ,""
 3130  DATA "ABCDEFG",-1 ,-1 ,""
 3140  DATA "ABCDEFG",-1 , 0 ,""
 3150  DATA "ABCDEFG",-1 , 1 ,""
 3160  DATA "ABCDEFG",-1 , 2 ,""
 3170  DATA "ABCDEFG",-1 , 3 ,""
 3180  DATA "ABCDEFG",-1 , 4 ,""
 3190  DATA "ABCDEFG",-1 , 5 ,""
 3200  DATA "ABCDEFG",-1 , 6 ,""
 3210  DATA "ABCDEFG",-1 , 7 ,""
 3220  DATA "ABCDEFG",-1 , 8 ,""
 3230  DATA "ABCDEFG",-1 , 9 ,""
 3240  DATA "ABCDEFG", 0 ,-2 ,""
 3250  DATA "ABCDEFG", 0 ,-1 ,""
 3260  DATA "ABCDEFG", 0 , 0 ,""
 3270  DATA "ABCDEFG", 0 , 1 ,""
 3280  DATA "ABCDEFG", 0 , 2 ,""
 3290  DATA "ABCDEFG", 0 , 3 ,""
 3300  DATA "ABCDEFG", 0 , 4 ,""
 3310  DATA "ABCDEFG", 0 , 5 ,""
 3320  DATA "ABCDEFG", 0 , 6 ,""
 3330  DATA "ABCDEFG", 0 , 7 ,""
 3340  DATA "ABCDEFG", 0 , 8 ,""
 3350  DATA "ABCDEFG", 0 , 9 ,""
 3360  DATA "ABCDEFG", 1 ,-2 ,""
 3370  DATA "ABCDEFG", 1 ,-1 ,""
 3380  DATA "ABCDEFG", 1 , 0 ,""
 3390  DATA "ABCDEFG", 1 , 1 ,""
 3400  DATA "ABCDEFG", 1 , 2 ,""
 3410  DATA "ABCDEFG", 1 , 3 ,""
 3420  DATA "ABCDEFG", 1 , 4 ,""
 3430  DATA "ABCDEFG", 1 , 5 ,""
 3440  DATA "ABCDEFG", 1 , 6 ,""
 3450  DATA "ABCDEFG", 1 , 7 ,""
 3460  DATA "ABCDEFG", 1 , 8 ,""
 3470  DATA "ABCDEFG", 1 , 9 ,""
 3480  DATA "ABCDEFG", 2 ,-2 ,""
 3490  DATA "ABCDEFG", 2 ,-1 ,""
 3500  DATA "ABCDEFG", 2 , 0 ,""
 3510  DATA "ABCDEFG", 2 , 1 ,""
 3520  DATA "ABCDEFG", 2 , 2 ,""
 3530  DATA "ABCDEFG", 2 , 3 ,""
 3540  DATA "ABCDEFG", 2 , 4 ,""
 3550  DATA "ABCDEFG", 2 , 5 ,""
 3560  DATA "ABCDEFG", 2 , 6 ,""
 3570  DATA "ABCDEFG", 2 , 7 ,""
 3580  DATA "ABCDEFG", 2 , 8 ,""
 3590  DATA "ABCDEFG", 2 , 9 ,""
 3600  DATA "ABCDEFG", 3 ,-2 ,""
 3610  DATA "ABCDEFG", 3 ,-1 ,""
 3620  DATA "ABCDEFG", 3 , 0 ,""
 3630  DATA "ABCDEFG", 3 , 1 ,""
 3640  DATA "ABCDEFG", 3 , 2 ,""
 3650  DATA "ABCDEFG", 3 , 3 ,""
 3660  DATA "ABCDEFG", 3 , 4 ,""
 3670  DATA "ABCDEFG", 3 , 5 ,""
 3680  DATA "ABCDEFG", 3 , 6 ,""
 3690  DATA "ABCDEFG", 3 , 7 ,""
 3700  DATA "ABCDEFG", 3 , 8 ,""
 3710  DATA "ABCDEFG", 3 , 9 ,""
 3720  DATA "ABCDEFG", 4 ,-2 ,""
 3730  DATA "ABCDEFG", 4 ,-1 ,""
 3740  DATA "ABCDEFG", 4 , 0 ,""
 3750  DATA "ABCDEFG", 4 , 1 ,""
 3760  DATA "ABCDEFG", 4 , 2 ,""
 3770  DATA "ABCDEFG", 4 , 3 ,""
 3780  DATA "ABCDEFG", 4 , 4 ,""
 3790  DATA "ABCDEFG", 4 , 5 ,""
 3800  DATA "ABCDEFG", 4 , 6 ,""
 3810  DATA "ABCDEFG", 4 , 7 ,""
 3820  DATA "ABCDEFG", 4 , 8 ,""
 3830  DATA "ABCDEFG", 4 , 9 ,""
 3840  DATA "ABCDEFG", 5 ,-2 ,""
 3850  DATA "ABCDEFG", 5 ,-1 ,""
 3860  DATA "ABCDEFG", 5 , 0 ,""
 3870  DATA "ABCDEFG", 5 , 1 ,""
 3880  DATA "ABCDEFG", 5 , 2 ,""
 3890  DATA "ABCDEFG", 5 , 3 ,""
 3900  DATA "ABCDEFG", 5 , 4 ,""
 3910  DATA "ABCDEFG", 5 , 5 ,""
 3920  DATA "ABCDEFG", 5 , 6 ,""
 3930  DATA "ABCDEFG", 5 , 7 ,""
 3940  DATA "ABCDEFG", 5 , 8 ,""
 3950  DATA "ABCDEFG", 5 , 9 ,""
 3960  DATA "ABCDEFG", 6 ,-2 ,""
 3970  DATA "ABCDEFG", 6 ,-1 ,""
 3980  DATA "ABCDEFG", 6 , 0 ,""
 3990  DATA "ABCDEFG", 6 , 1 ,""
 4000  DATA "ABCDEFG", 6 , 2 ,""
 4010  DATA "ABCDEFG", 6 , 3 ,""
 4020  DATA "ABCDEFG", 6 , 4 ,""
 4030  DATA "ABCDEFG", 6 , 5 ,""
 4040  DATA "ABCDEFG", 6 , 6 ,""
 4050  DATA "ABCDEFG", 6 , 7 ,""
 4060  DATA "ABCDEFG", 6 , 8 ,""
 4070  DATA "ABCDEFG", 6 , 9 ,""
 4080  DATA "ABCDEFG", 7 ,-2 ,""
 4090  DATA "ABCDEFG", 7 ,-1 ,""
 4100  DATA "ABCDEFG", 7 , 0 ,""
 4110  DATA "ABCDEFG", 7 , 1 ,""
 4120  DATA "ABCDEFG", 7 , 2 ,""
 4130  DATA "ABCDEFG", 7 , 3 ,""
 4140  DATA "ABCDEFG", 7 , 4 ,""
 4150  DATA "ABCDEFG", 7 , 5 ,""
 4160  DATA "ABCDEFG", 7 , 6 ,""
 4170  DATA "ABCDEFG", 7 , 7 ,""
 4180  DATA "ABCDEFG", 7 , 8 ,""
 4190  DATA "ABCDEFG", 7 , 9 ,""
 4200  DATA "ABCDEFG", 8 ,-2 ,""
 4210  DATA "ABCDEFG", 8 ,-1 ,""
 4220  DATA "ABCDEFG", 8 , 0 ,""
 4230  DATA "ABCDEFG", 8 , 1 ,""
 4240  DATA "ABCDEFG", 8 , 2 ,""
 4250  DATA "ABCDEFG", 8 , 3 ,""
 4260  DATA "ABCDEFG", 8 , 4 ,""
 4270  DATA "ABCDEFG", 8 , 5 ,""
 4280  DATA "ABCDEFG", 8 , 6 ,""
 4290  DATA "ABCDEFG", 8 , 7 ,""
 4300  DATA "ABCDEFG", 8 , 8 ,""
 4310  DATA "ABCDEFG", 8 , 9 ,""
 4320  DATA "ABCDEFG", 9 ,-2 ,""
 4330  DATA "ABCDEFG", 9 ,-1 ,""
 4340  DATA "ABCDEFG", 9 , 0 ,""
 4350  DATA "ABCDEFG", 9 , 1 ,""
 4360  DATA "ABCDEFG", 9 , 2 ,""
 4370  DATA "ABCDEFG", 9 , 3 ,""
 4380  DATA "ABCDEFG", 9 , 4 ,""
 4390  DATA "ABCDEFG", 9 , 5 ,""
 4400  DATA "ABCDEFG", 9 , 6 ,""
 4410  DATA "ABCDEFG", 9 , 7 ,""
 4420  DATA "ABCDEFG", 9 , 8 ,""
 4430  DATA "ABCDEFG", 9 , 9 ,""
 5000  DATA "",-2 ,-2 ,"WXYZ"
 5010  DATA "",-2 ,-1 ,"WXYZ"
 5020  DATA "",-2 , 0 ,"WXYZ"
 5030  DATA "",-2 , 1 ,"WXYZ"
 5040  DATA "",-2 , 2 ,"WXYZ"
 5050  DATA "",-1 ,-2 ,"WXYZ"
 5060  DATA "",-1 ,-1 ,"WXYZ"
 5070  DATA "",-1 , 0 ,"WXYZ"
 5080  DATA "",-1 , 1 ,"WXYZ"
 5090  DATA "",-1 , 2 ,"WXYZ"
 5100  DATA "", 0 ,-2 ,"WXYZ"
 5110  DATA "", 0 ,-1 ,"WXYZ"
 5120  DATA "", 0 , 0 ,"WXYZ"
 5130  DATA "", 0 , 1 ,"WXYZ"
 5140  DATA "", 0 , 2 ,"WXYZ"
 5150  DATA "", 1 ,-2 ,"WXYZ"
 5160  DATA "", 1 ,-1 ,"WXYZ"
 5170  DATA "", 1 , 0 ,"WXYZ"
 5180  DATA "", 1 , 1 ,"WXYZ"
 5190  DATA "", 1 , 2 ,"WXYZ"
 5200  DATA "", 2 ,-2 ,"WXYZ"
 5210  DATA "", 2 ,-1 ,"WXYZ"
 5220  DATA "", 2 , 0 ,"WXYZ"
 5230  DATA "", 2 , 1 ,"WXYZ"
 5240  DATA "", 2 , 2 ,"WXYZ"
 7000  DATA "",-2 ,-2 ,""
 7010  DATA "",-2 ,-1 ,""
 7020  DATA "",-2 , 0 ,""
 7030  DATA "",-2 , 1 ,""
 7040  DATA "",-2 , 2 ,""
 7050  DATA "",-1 ,-2 ,""
 7060  DATA "",-1 ,-1 ,""
 7070  DATA "",-1 , 0 ,""
 7080  DATA "",-1 , 1 ,""
 7090  DATA "",-1 , 2 ,""
 7100  DATA "", 0 ,-2 ,""
 7110  DATA "", 0 ,-1 ,""
 7120  DATA "", 0 , 0 ,""
 7130  DATA "", 0 , 1 ,""
 7140  DATA "", 0 , 2 ,""
 7150  DATA "", 1 ,-2 ,""
 7160  DATA "", 1 ,-1 ,""
 7170  DATA "", 1 , 0 ,""
 7180  DATA "", 1 , 1 ,""
 7190  DATA "", 1 , 2 ,""
 7200  DATA "", 2 ,-2 ,""
 7210  DATA "", 2 ,-1 ,""
 7220  DATA "", 2 , 0 ,""
 7230  DATA "", 2 , 1 ,""
 7240  DATA "", 2 , 2 ,""
 7500  DATA "A",-2 ,-2 ,"W"
 7510  DATA "A",-2 ,-1 ,"W"
 7520  DATA "A",-2 , 0 ,"W"
 7530  DATA "A",-2 , 1 ,"W"
 7540  DATA "A",-2 , 2 ,"W"
 7550  DATA "A",-2 , 3 ,"W"
 7560  DATA "A",-1 ,-2 ,"W"
 7570  DATA "A",-1 ,-1 ,"W"
 7580  DATA "A",-1 , 0 ,"W"
 7590  DATA "A",-1 , 1 ,"W"
 7600  DATA "A",-1 , 2 ,"W"
 7610  DATA "A",-1 , 3 ,"W"
 7620  DATA "A", 0 ,-2 ,"W"
 7630  DATA "A", 0 ,-1 ,"W"
 7640  DATA "A", 0 , 0 ,"W"
 7650  DATA "A", 0 , 1 ,"W"
 7660  DATA "A", 0 , 2 ,"W"
 7670  DATA "A", 0 , 3 ,"W"
 7680  DATA "A", 1 ,-2 ,"W"
 7690  DATA "A", 1 ,-1 ,"W"
 7700  DATA "A", 1 , 0 ,"W"
 7710  DATA "A", 1 , 1 ,"W"
 7720  DATA "A", 1 , 2 ,"W"
 7730  DATA "A", 1 , 3 ,"W"
 7740  DATA "A", 2 ,-2 ,"W"
 7750  DATA "A", 2 ,-1 ,"W"
 7760  DATA "A", 2 , 0 ,"W"
 7770  DATA "A", 2 , 1 ,"W"
 7780  DATA "A", 2 , 2 ,"W"
 7790  DATA "A", 2 , 3 ,"W"
 7800  DATA "A", 3 ,-2 ,"W"
 7810  DATA "A", 3 ,-1 ,"W"
 7820  DATA "A", 3 , 0 ,"W"
 7830  DATA "A", 3 , 1 ,"W"
 7840  DATA "A", 3 , 2 ,"W"
 7850  DATA "A", 3 , 3 ,"W"
 8000  DATA "A",-2 ,-2 ,""
 8010  DATA "A",-2 ,-1 ,""
 8020  DATA "A",-2 , 0 ,""
 8030  DATA "A",-2 , 1 ,""
 8040  DATA "A",-2 , 2 ,""
 8050  DATA "A",-2 , 3 ,""
 8060  DATA "A",-1 ,-2 ,""
 8070  DATA "A",-1 ,-1 ,""
 8080  DATA "A",-1 , 0 ,""
 8090  DATA "A",-1 , 1 ,""
 8100  DATA "A",-1 , 2 ,""
 8110  DATA "A",-1 , 3 ,""
 8120  DATA "A", 0 ,-2 ,""
 8130  DATA "A", 0 ,-1 ,""
 8140  DATA "A", 0 , 0 ,""
 8150  DATA "A", 0 , 1 ,""
 8160  DATA "A", 0 , 2 ,""
 8170  DATA "A", 0 , 3 ,""
 8180  DATA "A", 1 ,-2 ,""
 8190  DATA "A", 1 ,-1 ,""
 8200  DATA "A", 1 , 0 ,""
 8210  DATA "A", 1 , 1 ,""
 8220  DATA "A", 1 , 2 ,""
 8230  DATA "A", 1 , 3 ,""
 8240  DATA "A", 2 ,-2 ,""
 8250  DATA "A", 2 ,-1 ,""
 8260  DATA "A", 2 , 0 ,""
 8270  DATA "A", 2 , 1 ,""
 8280  DATA "A", 2 , 2 ,""
 8290  DATA "A", 2 , 3 ,""
 8300  DATA "A", 3 ,-2 ,""
 8310  DATA "A", 3 ,-1 ,""
 8320  DATA "A", 3 , 0 ,""
 8330  DATA "A", 3 , 1 ,""
 8340  DATA "A", 3 , 2 ,""
 8350  DATA "A", 3 , 3 ,""
 8500  DATA "",-2 ,-2 ,"W"
 8510  DATA "",-2 ,-1 ,"W"
 8520  DATA "",-2 , 0 ,"W"
 8530  DATA "",-2 , 1 ,"W"
 8540  DATA "",-2 , 2 ,"W"
 8550  DATA "",-1 ,-2 ,"W"
 8560  DATA "",-1 ,-1 ,"W"
 8570  DATA "",-1 , 0 ,"W"
 8580  DATA "",-1 , 1 ,"W"
 8590  DATA "",-1 , 2 ,"W"
 8600  DATA "", 0 ,-2 ,"W"
 8610  DATA "", 0 ,-1 ,"W"
 8620  DATA "", 0 , 0 ,"W"
 8630  DATA "", 0 , 1 ,"W"
 8640  DATA "", 0 , 2 ,"W"
 8650  DATA "", 1 ,-2 ,"W"
 8660  DATA "", 1 ,-1 ,"W"
 8670  DATA "", 1 , 0 ,"W"
 8680  DATA "", 1 , 1 ,"W"
 8690  DATA "", 1 , 2 ,"W"
 8700  DATA "", 2 ,-2 ,"W"
 8710  DATA "", 2 ,-1 ,"W"
 8720  DATA "", 2 , 0 ,"W"
 8730  DATA "", 2 , 1 ,"W"
 8740  DATA "", 2 , 2 ,"W"
 9990 DATA "*"
 9999 END
