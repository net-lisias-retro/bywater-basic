10 REM   NEAR-PARABOLIC ORBITS
12 REM
14 P1=4*ATN(1): R1=180/P1
16 K=0.01720209895
18 D1=10000: C=1/3
20 D=1E-6: REM  ADJUST FOR COM-
22 REM          PUTER'S PRECISION
24 REM
26 INPUT "PERI DISTANCE Q ";Q
28 INPUT "ECCENTRICITY    ";E0
30 INPUT "DAYS FROM PERI  ";T
32 PRINT
34 IF T<>0 THEN 40   
36 R=Q: V=0: GOTO 90   
38 REM
40 REM  FIND TRUE ANOMALY
42 REM
44 Q1=K*SQR((1+E0)/Q)/(Q*2)
46 Q1=Q1*T
48 S=2/(3*ABS(Q1))
50 X=2/TAN(2*ATN(TAN(ATN(S)/2)^C))
52 IF T<0 THEN X=-X
54 G=(1-E0)/(1+E0): L0=0
56 REM
58 X0=X: W=1: Y=X*X: G1=-Y*X
60 Q3=Q1+2*G*X*Y/3
62 W=W+1
64 G1=-G1*G*Y
66 W1=(W-(W+1)*G)/(2*W+1)
68 F=W1*G1
70 Q3=Q3+F
72 IF W>50 OR ABS(F)>D1 THEN 96   
74 IF ABS(F)>D THEN 62   
76 L0=L0+1: IF L0>50 THEN 96   
78 X1=X: X=(2*X*X*X/3+Q3)/(X*X+1)
80 IF ABS(X-X1)>D THEN 78   
82 IF ABS(X-X0)>D THEN 58   
84 V=2*ATN(X)
86 R=Q*(1+E0)/(1+E0*COS(V))
88 IF V<0 THEN V=V+2*P1
90 PRINT "TRUE ANOMALY:  ";V*R1
92 PRINT "DISTANCE (AU): ";R
94 GOTO 98   
96 PRINT "NO CONVERGENCE"
98 END
99 REM *************************
100 REM   FROM SKY & TELESCOPE,
101 REM   MAY, 1987, PAGE 535
102 REM ************************
