2 PRINT TAB(30);"TIC-TAC-TOE"
4 PRINT TAB(15);"CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
6 PRINT:PRINT:PRINT
8 PRINT "THE BOARD IS NUMBERED:"
10 PRINT " 1  2  3"
12 PRINT " 4  5  6"
14 PRINT " 7  8  9"
16 PRINT:PRINT:PRINT
20 DIM SS(9)
50 INPUT"DO YOU WANT 'X' OR 'O'";C$
55 IF C$="X"THEN 475
60 P$="O":Q$="X"
100 G=-1:H=1:IF SS(5)<>0 THEN 103
102 SS(5)=-1:GOTO 195
103 IF SS(5)<>1 THEN 106
104 IF SS(1)<>0 THEN 110
105 SS(1)=-1:GOTO 195
106 IF SS(2)=1 AND SS(1)=0 THEN 181
107 IF SS(4)=1 AND SS(1)=0 THEN 181
108 IF SS(6)=1 AND SS(9)=0 THEN 189
109 IF SS(8)=1 AND SS(9)=0 THEN 189
110 IF G=1 THEN 112
111 GOTO 118
112 J=3*INT((M-1)/3)+1
113 IF 3*INT((M-1)/3)+1=M THEN K=1
114 IF 3*INT((M-1)/3)+2=M THEN K=2
115 IF 3*INT((M-1)/3)+3=M THEN K=3
116 GOTO 120
118 FOR J=1 TO 7 STEP 3:FOR K=1 TO 3
120 IF SS(J)<>G THEN 130
122 IF SS(J+2)<>G THEN 135
126 IF SS(J+1)<>0 THEN 150
128 SS(J+1)=-1:GOTO 195
130 IF SS(J)=H THEN 150
131 IF SS(J+2)<>G THEN 150
132 IF SS(J+1)<>G THEN 150
133 SS(J)=-1:GOTO 195
135 IF SS(J+2)<>0 THEN 150
136 IF SS(J+1)<>G THEN 150
138 SS(J+2)=-1:GOTO 195
150 IF SS(K)<>G THEN 160
152 IF SS(K+6)<>G THEN 165
156 IF SS(K+3)<>0 THEN 170
158 SS(K+3)=-1:GOTO 195
160 IF SS(K)=H THEN 170
161 IF SS(K+6)<>G THEN 170
162 IF SS(K+3)<>G THEN 170
163 SS(K)=-1:GOTO 195
165 IF SS(K+6)<>0 THEN 170
166 IF SS(K+3)<>G THEN 170
168 SS(K+6)=-1:GOTO 195
170 GOTO 450
171 IF SS(3)=G AND SS(7)=0 THEN 187
172 IF SS(9)=G AND SS(1)=0 THEN 181
173 IF SS(7)=G AND SS(3)=0 THEN 183
174 IF SS(9)=0 AND SS(1)=G THEN 189
175 IF G=-1 THEN G=1:H=-1:GOTO 110
176 IF SS(9)=1 AND SS(3)=0 THEN 182
177 FOR I=2 TO 9:IF SS(I)<>0 THEN 179
178 SS(I)=-1:GOTO 195
179 NEXT I
181 SS(1)=-1:GOTO 195
182 IF SS(1)=1 THEN 177
183 SS(3)=-1:GOTO 195
187 SS(7)=-1:GOTO 195
189 SS(9)=-1
195 PRINT:PRINT"THE COMPUTER MOVES TO..."
202 GOSUB 1000
205 GOTO 500
450 IF G=1 THEN 465
455 IF J=7 AND K=3 THEN 465
460 NEXT K:NEXT J
465 IF SS(5)=G THEN 171
467 GOTO 175
475 P$="X":Q$="O"
500 PRINT:INPUT"WHERE DO YOU MOVE";M
502 IF M=0 THEN PRINT"THANKS FOR THE GAME.":GOTO 2000
503 IF M>9 THEN 506
505 IF SS(M)=0 THEN 510
506 PRINT"THAT SQUARE IS OCCUPIED.":PRINT:PRINT:GOTO 500
510 G=1:SS(M)=1
520 GOSUB 1000
530 GOTO 100
1000 PRINT:FOR I=1 TO 9:PRINT" ";:IF SS(I)<>-1 THEN 1014
1012 PRINT Q$;" ";:GOTO 1020
1014 IF SS(I)<>0 THEN 1018
1016 PRINT"  ";:GOTO 1020
1018 PRINT P$;" ";
1020 IF I<>3 AND I<>6 THEN 1050
1030 PRINT:PRINT"---+---+---"
1040 GOTO 1080
1050 IF I=9 THEN 1080
1060 PRINT"!";
1080 NEXT I:PRINT:PRINT:PRINT
1095 FOR I=1 TO 7 STEP 3
1100 IF SS(I)<>SS(I+1)THEN 1115
1105 IF SS(I)<>SS(I+2)THEN 1115
1110 IF SS(I)=-1 THEN 1350
1112 IF SS(I)=1 THEN 1200
1115 NEXT I:FOR I=1 TO 3:IF SS(I)<>SS(I+3)THEN 1150
1130 IF SS(I)<>SS(I+6)THEN 1150
1135 IF SS(I)=-1 THEN 1350
1137 IF SS(I)=1 THEN 1200
1150 NEXT I:FOR I=1 TO 9:IF SS(I)=0 THEN 1155
1152 NEXT I:GOTO 1400
1155 IF SS(5)<>G THEN 1170
1160 IF SS(1)=G AND SS(9)=G THEN 1180
1165 IF SS(3)=G AND SS(7)=G THEN 1180
1170 RETURN
1180 IF G=-1 THEN 1350
1200 PRINT"YOU BEAT ME!! GOOD GAME.":GOTO 2000
1350 PRINT"I WIN, TURKEY!!!":GOTO 2000
1400 PRINT"IT'S A DRAW. THANK YOU."
2000 END
