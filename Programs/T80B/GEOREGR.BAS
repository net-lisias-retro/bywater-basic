10 PRINT "GEOMETRIC REGRESSION"
20 PRINT
30 PRINT "NUMBER OF KNOWN POINTS";
40 INPUT N
50 J=0
60 K=0
70 L=0
80 M=0
90 R2=0
99 REM - ENTER COORDINATES OF DATA POINTS
100 FOR I=1 TO N
110 PRINT "X,Y OF POINT";I;
120 INPUT X,Y
129 REM - ACCUMLATE INTERMEDIATE VALUES
130 Y=LOG(Y)
140 X=LOG(X)
150 J=J+X
160 K=K+Y
170 L=L+X[2
180 M=M+Y[2
190 R2=R2+X*Y
200 NEXT I
209 REM - CALCULATE AND PRINT COEFFICIENTS OF EQUATION
210 B=(N*R2-K*J)/(N*L-J[2)
220 A=(K-B*J)/N
230 PRINT
240 PRINT "F(x) =";EXP(A);"* X[";B
249 REM - CALCULATE REGRESSION ANALYSIS
250 J=B*(R2-J*K/N)
260 M=M-K[2/N
270 K=M-J
280 PRINT
290 R2=J/M
300 PRINT "COEFFICIENT OF DETERMINATION (R[2) =";R2
310 PRINT "COEFFICIENT OF CORRELATION =";SQR(R2)
320 PRINT "STANDARD ERROR OF ESTIMATE =";SQR(ABS(K/(N-2)))
330 PRINT
339 REM - ESTIMATE Y-COORDINATE FROM ENTERED X-COORDINATE
340 PRINT "INTERPOLATION: (ENTER X=0 TO END PROGRAM)"
350 PRINT "X =";
360 INPUT X
370 IF X=0 THEN 410
380 PRINT "Y =";EXP(A)*X[B
390 PRINT
400 GOTO 350
410 END
