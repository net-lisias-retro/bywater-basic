10 CLS
20 PRINT"                  BONDS":PRINT
30 PRINT"WHEN CONSIDERING THE VALUE OF BONDS ITEMS WHICH SHOULD
40 PRINT"BE CONSIDERED INCLUDE YIELD TO MATURITY,TIME TO MATURITY
50 PRINT"MATURITY VALUE, CURRENT VALUE, AND COUPON INTEREST RATE.
60 PRINT"GIVEN ANY FOUR OF THE ABOVE THIS PROGRAM WILL COMPUTE THE
70 PRINT"FIFTH. IN ADDITION,IF DESIRED INCOME TAXES,CAPITAL GAINS
80 PRINT"TAXES AND COMMISSIONS MAY BE CONSIDERED.":PRINT
90 INPUT"PRESS ENTER TO BEGIN";Z9
1000 REM DATA INPUT
1010 CLS:GOSUB 6000
1020 CLS
1030 PRINT"ENTER THE NUMBER OF THE VARIABLE TO BE COMPUTED "
1035 PRINT
1040 PRINT"1.CURRENT PRICE PLUS COMMISSION
1050 PRINT"2.MATURITY VALUE OF THE BOND
1060 PRINT"3.COUPON INTEREST RATE
1070 PRINT"4.YIELD TO MATURITY OF THE BOND
1080 PRINT"5.LENGTH OF TIME TO MATURITY
1100 PRINT:INPUT"MAKE CHOICE";CC
1110 ON CC GOSUB 1200,1300,1400,1500,1600
1120 IF CC<1 OR CC>5 OR CC<>INT(CC) THEN GOSUB 10000:GOTO 1000
1130 CLS:GOSUB 6500:REM PRINTOUT
1199 GOTO 1000
1200 REM CURRENT PRICE PLUS COMMISSION
1210 T1=((1+I)[J-(1+I)[(-N))/I:T2=C*MAT*(1-TAX)*T1
1220 T3=MAT*(1-CGT)/(1+I)[N-J*C*MAT*(1-TAX)
1230 B1=(T2+T3)/(1-CGT/(1+I)[N)
1240 RETURN
1300 REM MATURITY VALUE OF BOND
1310 T1=C*(1-TAX)*((1+I)[J-(1+I)[(-N))/I
1320 T2=(1-CGT)/(1+I)[N:T3=J*C*(1-TAX)
1330 T4=(BUY+CBUY)*(1-CGT/(1+I)[N)
1340 MAT=T4/(T1+T2-T3)
1350 B1=BUY+CBUY
1360 RETURN
1400 REM COUPON INTEREST RATE
1410 T1=((1+I)[J-(1+I)[(-N))/I:T2=T1*MAT*(1-TAX)
1420 T3=(MAT-(MAT-(BUY+CBUY))*CGT)/(1+I)[N:T4=J*MAT*(1-TAX)
1430 C=(BUY+CBUY-T3)/(T2-T4)
1440 RETURN
1500 REM YIELD TO MATURITY
1505 I=.1
1510 T1=BUY+CBUY+J*C*MAT*(1-TAX)
1520 T2=C*MAT*(1-TAX):T3=((1+I)[J-(1+I)[(-N))/I
1525 T4=MAT-(MAT-(BUY+CBUY))*CGT:T5=(1+I)[(-N)
1530 F=T1-T2*T3-T4*T5
1535 IF ABS(F)<.2 THEN RETURN
1538 T6=I*((J*(1+I)[(J-1)+N*(1+I)[(-N-1)))-(1+I)[J+(1+I)[(-N)
1540 T7=T6/I[2:T8=-N*(1+I)[(-N-1)
1545 D=-T2*T7-T4*T8
1550 I=I-F/D:GOTO 1510
1600 REM LENGTH OF TIME TO MATURITY
1610 T1=BUY+CBUY+J*C*MAT*(1-TAX):T2=C*MAT*(1-TAX)*(1+I)[J/I
1620 T3=T1-T2:REM T3=NUMERATOR
1630 T4=(MAT-(MAT-(BUY+CBUY))*CGT)
1635 T8=T2/(1+I)[J
1640 T5=T3/(T4-T8):T6=LOG(T5)/LOG(1+I):T7=-T6
1650 N=T7
1660 RETURN
6000 REM DATA INPUT SUBROUTINE
6002 CLS:PRINT"INPUT THE FOLLOWING AMOUNTS.PRESS ENTER WHEN AN
6004 PRINT"ITEM WILL BE COMPUTED. INPUT 0 IF AN ITEM IS
6006 PRINT"NOT TO BE CONSIDERED.POSSIBLE FIELDS FOR
6008 PRINT"NONCONSIDERATION ARE COMMISSION, CAPITAL GAINS
6009 PRINT"AND INCOME TAX RATES.":PRINT
6010 INPUT"PURCHASE PRICE PER BOND               ";BUY
6020 INPUT"COMMISSION PER BOND                   ";CBUY
6030 INPUT"MATURITY VALUE                        ";MAT
6035 INPUT"NUMBER OF INTEREST PAYMENTS PER YEAR  ";N1
6040 INPUT"NUMBER OF PAYMENT PERIODS TO MATURITY ";N
6050 INPUT"ANNUAL COUPON INTEREST RATE(%)        ";C
6060 INPUT"ANNUAL YIELD TO MATURITY              ";I
6070 INPUT"CAPITAL GAINS TAX RATE                ";CGT
6080 INPUT"INCOME TAX RATE                       ";TAX
6090 J=1-(N-INT(N)):C=C/100:I=I/100:CGT=CGT/100:TAX=TAX/100
6092 C=C/N1
6099 RETURN
6500 REM PRINTOUT
6505 C=100*C:I=100*I:CGT=100*CGT:TAX=100*TAX
6506 C=C*N1
6510 CLS:PRINT:PRINT:PRINT
6520 PRINT"1.CURRENT PRICE PLUS COMMISSION        :";B1
6530 PRINT"2.MATURITY VALUE OF THE BOND           :";MAT
6540 PRINT"3.ANNUAL COUPON INTEREST RATE          :";C
6550 PRINT"4.ANNUAL YIELD TO MATURITY OF BOND     :";I*N1
6560 PRINT"5.LENGTH OF TIME TO MATURITY(PERIODS)  :";N
6570 PRINT"6.INCOME TAX RATE                      :";TAX
6580 PRINT"7.CAPITAL GAINS TAX RATE               :";CGT
6585 PRINT"8.NUMBER OF INTEREST PAYMENTS PER YEAR :";N1
6590 PRINT:INPUT"PRESS ENTER FOR MORE COMPUTATION ";Z9
6595 IF Z9 = -1 THEN END
6599 RETURN
10000 PRINT"INPUT ERROR! TRY AGAIN!":FOR JJ=1 TO 300:NEXT:RETURN
10100 INPUT"PRESS ENTER TO CONTINUE";Z9:RETURN
