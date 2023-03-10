10 REM  EXTINCTION ANGLE
12 REM
14 R=180/3.14159265
16 INPUT "STAR'S MAG";M
18 INPUT "LIM MAG AT ZEN";M0
20 INPUT "EXT COEFF, K";K
22 REM  FIND BACKGROUND
24 K0=0.0126: K1=M0+K
26 IF K1<4.21 THEN K0=0.00000126
28 C=-9.80
30 IF M0+K<4.21 THEN C=-8.35
32 X0=(M0+16.57+K+2.5*C)/(-5.0)
34 B0=(10^X0-1)^2/K0-K*118/0.2
36 REM  FIND DESIRED AIRMASS
38 B=B0+236*(K/0.20)
40 K0=0.0126
42 IF B>1650 THEN K0=0.00000126
44 C=-9.80
46 IF B>1650 THEN C=-8.35
48 I=C+2*LOG(1+SQR(K0*B))/LOG(10)
50 A=(M+16.57+2.5*I)/(-K)
52 REM  FIND EXT ANGLE
54 Z=90.1/R: D=0.1/R
56 Z=Z-D
58 X=COS(Z)+0.025*EXP(-11*COS(Z))
60 IF (1/X)>A THEN 56
62 Z=Z*R
64 PRINT "EXT ANGLE: ";Z
66 END
68 REM ******************************
70 REM  FROM ASTRONOMICAL COMPUTING,
72 REM  SKY & TELESCOPE, APRIL, 1987,
74 REM  PAGE 426
76 REM ******************************
