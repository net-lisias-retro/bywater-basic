010 rem verify ERR and ERL
100 on error goto 900
110 error 1
120 error 2
130 error 3
140 end
900 rem Error Handler
910 print "ERR="; ERR
920 print "ERL="; ERL
930 resume next
940 end
