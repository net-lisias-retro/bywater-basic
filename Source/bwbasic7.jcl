//BWBGEN   JOB CLASS=C,REGION=0K
//*
//RUNBW    PROC BWBPREF='BWBASIC'
//BWBASIC  EXEC PGM=BWBASIC
//STEPLIB  DD DSN=&BWBPREF..LINKLIB,DISP=SHR
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*,DCB=(RECFM=F,LRECL=132,BLKSIZE=132)
//SYSTERM  DD SYSOUT=*,DCB=(RECFM=F,LRECL=132,BLKSIZE=132)
//         PEND
//*
//CLEAN    PROC BWBPREF='BWBASIC'
//DELETE   EXEC PGM=IEFBR14
//DD1      DD DSN=&BWBPREF..ALLZIPS,DISP=(MOD,DELETE),
//       UNIT=SYSDA,SPACE=(TRK,(0))
//         PEND
//*
//S1 EXEC RUNBW
//SYSIN DD *
print "hello, world"
quit
/*
//S2 EXEC CLEAN
//
