10 PRINT TAB(30);"GUNNER"
20 PRINT TAB(15);"CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
30 PRINT:PRINT:PRINT
130 PRINT "YOU ARE THE OFFICER-IN-CHARGE, GIVING ORDERS TO A GUN"
140 PRINT "CREW, TELLING THEM THE DEGREES OF ELEVATION YOU ESTIMATE"
150 PRINT "WILL PLACE A PROJECTILE ON TARGET.  A HIT WITHIN 100 YARDS"
160 PRINT "OF THE TARGET WILL DESTROY IT." : PRINT
170 R=INT(40000*RND(1)+20000)
180 PRINT "MAXIMUM RANGE OF YOUR GUN IS";R;" YARDS."
185 Z=0
190 PRINT
195 S1=0
200 T=INT(R*(.1+.8*RND(1)))
210 S=0
220 GOTO 370
230 PRINT "MINIMUM ELEVATION IS ONE DEGREE."
240 GOTO 390
250 PRINT "MAXIMUM ELEVATION IS 89 DEGREES."
260 GOTO 390
270 PRINT "OVER TARGET BY ";ABS(E);"YARDS."
280 GOTO 390
290 PRINT "SHORT OF TARGET BY ";ABS(E);"YARDS."
300 GOTO 390
320 PRINT "*** TARGET DESTROYED ***  ";S;"ROUNDS OF AMMUNITION EXPENDED."
325 S1=S1+S
330 IF Z=4 THEN 490
340 Z=Z+1
345 PRINT
350 PRINT "THE FORWARD OBSERVER HAS SIGHTED MORE ENEMY ACTIVITY..."
360 GOTO 200
370 PRINT "DISTANCE TO THE TARGET IS ";T;" YARDS."
380 PRINT
390 PRINT
400 INPUT "ELEVATION";B
420 IF B>89 THEN 250
430 IF B<1 THEN 230
440 S=S+1
442 IF S<6 THEN 450
444 PRINT:PRINT "BOOM !!!!   YOU HAVE JUST BEEN DESTROYED ";
446 PRINT "BY THE ENEMY." : PRINT : PRINT : PRINT : GOTO 495
450 B2=2*B/57.3 : I=R*SIN(B2) : X=T-I : E=INT(X)
460 IF ABS(E)<100 THEN 320
470 IF E>100 THEN 290
480 GOTO 270
490 PRINT : PRINT : PRINT "TOTAL ROUNDS EXPENDED WERE:";S1
492 IF S1>18 THEN 495
493 PRINT "NICE SHOOTING !!" : GOTO 500
495 PRINT "BETTER GO BACK TO FORT SILL FOR REFRESHER TRAINING!"
500 PRINT : INPUT "TRY AGAIN (Y OR N)";Z$
510 IF Z$="Y" THEN 170
520 PRINT:PRINT "OK.  RETURN TO BASE CAMP."
999 END
