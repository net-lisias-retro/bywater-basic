    2 rem Relay control program in bwbasic 3.2   4-15-2020 Ken.
    3 rem As of 4-13-2020 Debian apt get install bwbasic installs an old 2.2.
    4 rem Assumes bwbasic 3.2. bwbasic 2.2 has issues see changelog.
    5 rem Download 3.2a tar file. Untar then cd bwbasic-3.2a then sh compile
    8 rem Set terminal to ANSI mode. Only 3.2 or newer
   10 option terminal ANSI
   12 rem Clear screen on initial startup. Only 3.2 or newer
   15 cls
   16 print : print "=== Relay games on ";DATE$;" at ";TIME$;" ===" : print " ";
   17 shell "cat /etc/dogtag"
   18 print
   19 rem If an error occurs gosub to line 1000
   20 on error gosub 1000
   24 rem b$ = Base address Beaglebone Black Debian 10.3 3-26-2020
   30 let b$="/sys/class/gpio/gpio"
   40 call close
   50 print "0 Off, 1 On, s State, sa State All,";
   52 print " ao All Off, l Label or x Exit  "; : input m$
   60 IF m$ = "0" or m$ = "1" or m$ = "l" or m$ = "s" then goto 70
   63 IF m$ = "x" or m$ = "e" then end : rem Stop program
   64 IF m$ = "sa" then gosub 500 : goto 16 : rem State all
   65 IF m$ = "ao" then gosub 600 : goto 16 : rem All Relays off
   66 print "Mode error. Only 0, 1, s, l, ao All Off, sa State All ";
   67 print "or x allowed" : goto 50
   70 print "Relay # = gpio: 1 = 20, 2 = 7, 3 = 112, 4 = 115 or r to Return. ";
   71 print "Enter gpio # ";
   72 input s$
   75 IF s$ = "20" or s$ = "7" or s$ = "112" or s$ = "115" then goto 80
   76 IF s$ = "r" then goto 16 : rem Start over
   78 print "Relay gpio number error. Only 20, 7, 112, 115 or r" : goto 70
   80 print
   82 IF m$ = "l" then gosub 400 : goto 16 :         rem     l = Label
   84 IF m$ = "s" then gosub 300 : print : goto 16 : rem     s = State
   86 IF m$ = "0" or m$ = "1" then gosub 100 : goto 16 : rem Change Relay state
   90 print : print "Error. Code fall through at line 90" : print : end
  100 rem Change state of a Relay.
  101 rem p$ = Complete address to gpio. b$ is the Base + gpio# + end of string
  102 let p$=b$ + s$ + "/value"
  110 call open("O",#1,p$) : rem Open for Output and write m$
  150 print #1,m$ : rem          Print to gpio string m$
  160 call close(#1)
  210 call open("I",#1,p$) : rem  Open for Input
  250 read #1,x : rem             Read numeric result
  255 call close(#1)
  256 IF s$ = "20"  then print "#1 ";
  257 IF s$ = "7"   then print "#2 ";
  258 IF s$ = "112" then print "#3 ";
  259 IF s$ = "115" then print "#4 ";
  260 gosub 700
  299 return
  300 rem p$ = Complete address to gpio. b$ is the Base + gpio# + end of string
  304 let p$=b$ + s$ + "/value"
  310 call open("I",#1,p$) : rem Open for Input
  350 read #1,x : rem Read numeric result
  355 call close(#1)
  360 gosub 700
  396 return : rem Start over
  400 rem p$ = Complete address to gpio. b$ is the Base + gpio# + end of string
  404 let p$=b$ + s$ + "/label"
  410 call open("I",#1,p$)
  420 read #1,l$
  425 call close(#1)
  430 print "Label for gpio ";s$;" is ";l$
  440 return
  500 rem Display the state of all Relays 'sa'
  505 print
  510 let s$ = "20" :  print "#1 "; : gosub 300
  520 let s$ = "7"   : print "#2 "; : gosub 300
  530 let s$ = "112" : print "#3 "; : gosub 300
  540 let s$ = "115" : print "#4 "; : gosub 300
  550 return
  600 rem Turn all Relays off 'ao'
  610 print
  612 let m$ = "0"   : rem Set mode to '0' off
  620 let s$ = "20"  : gosub 100
  624 let s$ = "7"   : gosub 100
  626 let s$ = "112" : gosub 100
  628 let s$ = "115" : gosub 100
  630 return
  700 rem Print relay state gathered from 'read'
  704 print "Relay gpio ";s$," state is now = ";x;
  770 IF x = 0 then print " Off"
  780 IF x = 1 then print " On"
  790 IF x > 1 or x < 0 then print " Error"
  799 return
  999 rem Trap errors here. Hopefuly you will not get here.
 1000 print : print "Error code ";err;" Error line ";erl
 1040 print
 1060 rem CLOSE will fail on 2.2 and loop but not 3.2+
 1070 call close : rem Just in case something is open.
 1100 end : rem Stop program
