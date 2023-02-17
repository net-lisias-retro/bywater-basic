10 REM   MAKE A GLOBULAR
12 REM
14 R0=20: R2=R0*R0: R3=R2*R0
16 P1=3.14159265#
18 C0=P1*P1*R3/4
20 R1=R0/SQR(2)
22 XM=512: YM=512
24 X2=XM/2: Y2=YM/2: S=5
26 INPUT "HOW MANY STARS ";T
27 RANDOMIZE TIMER
28 CLS: REM  CLEAR SCREEN
30 FOR I=1 TO T
32 C=C0*RND: R=R1
34 REM
36 REM   NOW FIND R
38 FOR K=1 TO 5
40 GOSUB 100
42 R=R+(C-C1)/D
44 NEXT K
46 REM  3-DIMENSIONAL PLACE
48 X=RND-.5
50 Y=RND-.5
52 Z=RND-.5
54 S1=SQR(X*X+Y*Y+Z*Z)
56 IF S1>.5 THEN GOTO 48
58 REM  POINT IS NOW IN SPHERE
60 R=R*S1: X=X*R: Y=Y*R: Z=Z*R
62 GOSUB 200
64 NEXT I
66 END
68 REM
100 REM  NEWTON-RAPHSON ITERATION
105 A=R/R0
110 C1=ATN(A)*.5*R3
115 A=1+A*A
120 C1=C1+R*.5*R2/A
125 C1=P1*(C1-R*R2/(A*A))
130 D=4*P1*R*R/(A*A*A)
135 RETURN
140 REM
200 REM  2-DIMENSIONAL PLOT
203 SCREEN 9
205 X=X*S+X2: Y=Y*S+Y2
210 IF X<0 OR Y<0 THEN 225
215 IF X>=XM OR Y>=YM THEN 225
220 PSET(X,Y)
225 RETURN
230 REM  ------------------------
240 REM  APPEARED IN ASTRONOMICAL
250 REM  COMPUTING, SKY & TELE-
260 REM  SCOPE, APRIL, 1986
270 REM  ------------------------
