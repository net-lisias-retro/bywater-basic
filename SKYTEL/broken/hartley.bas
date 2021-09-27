10 REM     GLOBE-DRAWING PROGRAM
15 REM
20 FF=1: REM  FLATTENING FACTOR
40 RM=80: REM  RADIUS OF GLOBE
50 INPUT "TILT ANGLE ";T
60 DR=3.14159/180: TI=T*DR
80 XC=250: YC=150: REM SCR CENTER
90 CT=COS(TI): ST=SIN(TI)
95 REM
100 REM    DRAW LATITUDE LINES
110 FOR LA=-75 TO 75 STEP 15
120 IF T>0 THEN 150
130 IF 90+T<LA THEN 270
140 GOTO 160
150 IF T-90>LA THEN 270
160 L=LA*DR:SL=SIN(L):R=RM*COS(L)
170 GOSUB 570
190 FOR P1=PS+5 TO -PS STEP 5
200 P=P1*DR: X=R*SIN(P)+XC
210 Y1=RM*SL: Z1=R*COS(P)
220 Z=Z1*CT+Y1*ST
225 Y=-Z1*ST+Y1*CT+YC
230 IF Z<0 THEN 250
240 LINE (XS,YS*FF)-(X,Y*FF)
250 XS=X: YS=Y
260 NEXT P1
270 NEXT LA
280 REM    DRAW LONGITUDE LINES
290 FOR L=-180 TO 165 STEP 15
300 LO=L*DR
310 IF TI<0 THEN 340
320 TH=90*DR: DT=-5*DR: GOTO 350
340 TH=-90*DR: DT=5*DR
350 GOSUB 750
360 Z=1: TH=TH+DT
380 CH=COS(TH): X=RM*SIN(LO)*CH+XC
390 Y1=RM*SIN(TH):Z1=RM*COS(LO)*CH
400 Z=Y1*ST+Z1*CT:Y=Y1*CT-Z1*ST+YC
410 IF Z<0 THEN 430
420 LINE (XS,YS*FF)-(X,Y*FF)
430 XS=X: YS=Y: TH=TH+DT
440 IF Z>=0 THEN 380
450 NEXT L
460 REM    DRAW LIMB OF GLOBE
470 XS=RM+XC: YS=YC
480 FOR I=0 TO 360 STEP 10
490 IA=I*DR: X=RM*COS(IA)+XC
500 Y=RM*SIN(IA)+YC
510 LINE (XS,YS*FF)-(X,Y*FF)
520 XS=X: YS=Y
530 NEXT I
540 INPUT A$
550 END
560 REM   STARTING LATITUDE LINE
570 CP=-ST*SIN(L)/(CT*COS(L))
580 IF CP>=1 OR CP<=-1 THEN 640
590 IF CP*CP>.001 THEN 620
600 P=-90*DR: GOTO 650
620 TP=SQR(1-CP*CP)/CP: P=ATN(TP)
630 GOTO 650
640 P=0
650 IF P<=0 THEN 680
660 P=-P: GOTO 690
680 P=-180*DR-P
690 X=R*SIN(P)+XC
700 Y1=RM*SIN(L): Z1=R*COS(P)
710 Y=-Z1*SIN(TI)+Y1*COS(TI)+YC
720 XS=X: YS=Y: PS=P/DR
730 RETURN
740 REM   STARTING LONGITUDE LINE
750 X=RM*SIN(LO)*COS(TH)+XC
760 Y1=RM*SIN(TH)
770 Z1=RM*COS(LO)*COS(TH)
780 Y=-Z1*ST+Y1*CT+YC: XS=X: YS=Y
790 RETURN
800 REM    This program is used
810 REM  to draw an outline of a
811 REM  planet's disk with latitude
812 REM  and longitude lines as an
813 REM  aid to sketching in features
814 REM  at the telescope and identi-
815 REM  fying them on a published map.
816 REM  How it works is discussed by
817 REM  Charles Hartley in the Jan-
818 REM  uary, 1990, issue of Sky &
819 REM  Telescope magazine.  Intended
820 REM  for Macintosh, but works on
821 REM  IBM PC's with very little
822 REM  modification.  For example, 
823 REM  add line 95 SCREEN 9 if you
824 REM  have VGA graphics, and try
825 REM  setting FF=0.7 in line 20 to 
826 REM  get a disk that looks right.
