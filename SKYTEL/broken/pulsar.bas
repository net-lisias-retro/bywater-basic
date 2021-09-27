10 '          RELATIVISTIC PRECESSION
20 DEFDBL A-Z
30 PI=4#*(ATN(1#)): XC=320: YC=165: SCREEN 9: KEY OFF
40 LOCATE 15,1: PRINT "Eccentricity (0 to 0.9) ";
50 INPUT EC: IF EC<0 OR EC>.9 THEN CLS : GOTO 40
60 LOCATE 17,1: PRINT "Relativity strength (0 to 0.999)";
70 PRINT SPC(40);: LOCATE 17,34
80 INPUT SG: IF SG<0 OR SG>.999 THEN GOTO 60
90 LOCATE 19,1: PRINT "Simulation speed (1 to 10)";
100 PRINT SPC(40);: LOCATE 19,28: INPUT SS
110 IF SS<1 OR SS>10 THEN GOTO 90
120 SS=.0009#*(SS-.9#)*(1#-.9#*EXP(10#*EC-9#))
130 CLS: LOCATE 19,1: PRINT "Eccentricity"
140 PRINT USING "  .######";EC;
150 LOCATE 22,1: PRINT "Relativity": PRINT "strength"
160 PRINT USING "  .######";SG;: LOCATE 25,52
170 COLOR 14: PRINT "(Press any key to interrupt)";
180 SY=YC/(1+EC): SX=SY*1.33
190 C0=(1#-SG*(3#+EC*EC)/(6#+2#*EC))/(1#-EC*EC)
200 RH=SG*(1#-EC*EC)/(3#+EC): C2=1.5#*RH
210 CIRCLE (XC,YC),SX*RH,8: PAINT (XC,YC),8
220 LINE (0,YC)-(640,YC),7: LINE (XC,0)-(XC,350),7
230 SN=0: QN=1#/(1#+EC): DN=0
240 S=SN: Q=QN: D=DN: DP=DN: SP=SN: HN=SS*Q*Q
250 F=C0-Q+C2*Q*Q: K1=HN*F: L1=HN*D
260 S=SN+HN/2#: Q=QN+L1/2#: D=DN+K1/2#
270 F=C0-Q+C2*Q*Q: K2=HN*F: L2=HN*D
280 S=SN+HN/2#: Q=QN+L2/2#: D=DN+K2/2#
290 F=C0-Q+C2*Q*Q: K3=HN*F: L3=HN*D
300 S=SN+HN: Q=QN+L3: D=DN+K3
310 F=C0-Q+C2*Q*Q: K4=HN*F: L4=HN*D
320 QN=QN+(L1+2#*L2+2#*L3+L4)/6#
330 DN=DN+(K1+2#*K2+2#*K3+K4)/6#
340 SN=SN+HN
350 PX=XC+SX*COS(SN)/QN: PY=YC-SY*SIN(SN)/QN
360 COLOR 9: PSET (PX,PY)
370 IF EC*DN>0 AND DP<0 THEN GOSUB 410
380 IF INKEY$<>"" THEN END
390 GOTO 240
400 '
410 '    DRAW LINE TO APASTRON & COUNT ORBITS
420 COLOR 4: LINE (XC,YC)-(PX,PY)
430 N=N+1: LOCATE 1,56: COLOR 15
440 PRINT "Number of orbits ";N;
450 IF N>1 THEN GOTO 500
460 SA=(SP+(SN-SP)*DP/(DP-DN))*180/PI-360
470 LOCATE 1,1: PRINT "Precession per orbit"
480 IF SA<360 THEN PRINT USING "######.#### deg"; SA
490 IF SA>=360 THEN PRINT USING "######.# deg"; SA
500 RETURN
610 ' This program by Jonathan Gallmeier, Mark Loewe, and
620 ' Donald W. Olson appeared in the article "Precession
630 ' and the Pulsar," Sky & Telescope, Oct. 1995, p. 86.
