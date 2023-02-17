//BWBGEN   JOB CLASS=C,REGION=0K
//*
//CREATE   EXEC PGM=IEFBR14
//DD1      DD DSN=&&ZIPS,DISP=(,PASS),
// DCB=(RECFM=FB,LRECL=80,BLKSIZE=3120),
// SPACE=(6144,(100,100,44)),UNIT=SYSALLDA
//*
//UNZIP1   PROC MINPREF='MINIZIP',BWBPREF='BWBASIC'
//MINI     EXEC PGM=MINIUNZ,PARM='dd:input dd:output'
//STEPLIB  DD DSN=&MINPREF..LINKLIB,DISP=SHR
//INPUT    DD DSN=&BWBPREF..ALLZIPS,DISP=SHR
//OUTPUT   DD DSN=&&ZIPS,DISP=(OLD,PASS)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*,DCB=(RECFM=F,LRECL=132,BLKSIZE=132)
//SYSTERM  DD SYSOUT=*,DCB=(RECFM=F,LRECL=132,BLKSIZE=132)
//         PEND
//*
//UNZIP2   PROC IN=,OUT=,MINPREF='MINIZIP',BWBPREF='BWBASIC'
//MINI     EXEC PGM=MINIUNZ,PARM='-a dd:input dd:output'
//STEPLIB  DD DSN=&MINPREF..LINKLIB,DISP=SHR
//INPUT    DD DSN=&&ZIPS(&IN),DISP=(OLD,PASS)
//OUTPUT   DD DSN=&BWBPREF..&OUT,DISP=SHR
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*,DCB=(RECFM=F,LRECL=132,BLKSIZE=132)
//SYSTERM  DD SYSOUT=*,DCB=(RECFM=F,LRECL=132,BLKSIZE=132)
//         PEND
//*
//S1 EXEC UNZIP1
//S2 EXEC UNZIP2,IN='BWBSRC',OUT='SOURCE'
//S3 EXEC UNZIP2,IN='BWBINC',OUT='INCLUDE'
//S4 EXEC UNZIP2,IN='BWBJCL',OUT='JCL'
//
