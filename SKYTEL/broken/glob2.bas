13 DIM X(30),Y(30),Z(30)
15 J=0
23 J=J+1
45 X(J)=X
51 Y(J)=Y
57 Z(J)=Z
64 GOTO 100
100 PRINT: PRINT: PRINT
110 FOR I=1 TO J
120 IF S=1 THEN Y(I)=Z(I)
130 IF S=3 THEN X(I)=-Y(I): Y(I)=Z(I)
140 NEXT
150 HGR: C=0.00105: X=100: Y=70
160 IF S=3 THEN X=130
170 GOSUB 370: DX=0: DY=0: GOTO 240
180 DX=0: DY=0: GET C$
190 IF C$="L" THEN DX=-1
200 IF C$="U" THEN DY=-1
210 IF C$="D" THEN DY=+1
220 IF C$="R" THEN DX=+1
230 IF DX=0 AND DY=0 THEN 180
240 FOR I=1 TO J: GOSUB 290: NEXT: GOSUB 480
250 X=X+DX: Y=Y+DY: HCOLOR=3: GOSUB 500: IF S=3 THEN 180
260 D=SQR((XC-X)*(XC-X)+(YC-Y)*(YC-Y))/C: VTAB  22: HTAB  1
270 PRINT "DISTANCE TO CENTER: ";INT(D);" L.Y.   ": GOTO 180
280 REM
290 X0=X(I)*C+X: Y0=-Y(I)*C+Y
300 IF X0<0 OR X0>279 OR Y0<0 OR Y0>160 THEN 320
310 HCOLOR=0: HPLOT X0,Y0
320 X0=X0+DX: YO=Y0+DY
330 IF X0<0 OR X0>279 OR Y0<0 OR Y0>160 THEN 350
340 HCOLOR=3: HPLOT X0,Y0
350 RETURN
360 REM
370 HCOLOR=3:  REM  MILKY WAY
380 RM=5*5: XC=140: YC=80: XR=50: YR=0.03*XR
390 IF S=2 THEN YR=XR
400 HPLOT XR+XC,YC
410 FOR T=0 TO 6.3 STEP 0.1
420 X1=XR*COS(T): Y1=YR*SIN(T)
430 IF X1*X1+Y1*Y1<RM THEN Y1=SQR(RM-X1*X1)*SGN(Y1)
440 X1=X1+XC: Y1=Y1+YC: HPLOT TO X1,Y1
450 NEXT
460 GOSUB 480
470 RETURN
480 HPLOT 139,80 TO 141,80: HPLOT 140,79 TO 140,81
490 COLOR=0
500 HPLOT X-1,Y-1 TO X+1,Y-1 TO X+1,Y+1 TO X-1,Y+1 TO X-1,Y-1
510 RETURN
520 REM  ----------------------------------------------------
530 REM  APPEARED IN ASTRONOMICAL COMPUTING, SKY & TELESCOPE,
540 REM  DECEMBER, 1984
550 REM  ----------------------------------------------------
