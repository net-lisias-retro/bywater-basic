//BWBGEN  JOB CLASS=C,REGION=0K
//LINK     PROC BWBPREF='BWBASIC',PDPPREF='PDPCLIB'
//LKED     EXEC PGM=IEWL,PARM='MAP,LIST,SIZE=(999424,65536)'
//SYSUT1   DD UNIT=SYSALLDA,SPACE=(CYL,(30,10))
//SYSPRINT DD SYSOUT=*
//SYSLIB   DD DSN=&PDPPREF..NCALIB,DISP=SHR,DCB=BLKSIZE=32760
//         DD DSN=&BWBPREF..NCALIB,DISP=SHR
//SYSLMOD  DD DSN=&BWBPREF..LINKLIB(BWBASIC),DISP=SHR
//         PEND
//DOLINK   EXEC LINK
//LKED.SYSLIN   DD *
 INCLUDE SYSLIB(BWBASIC)
 INCLUDE SYSLIB(BWB@INT)
 INCLUDE SYSLIB(BWB@TBL)
 INCLUDE SYSLIB(BWB@CMD)
 INCLUDE SYSLIB(BWB@PRN)
 INCLUDE SYSLIB(BWB@EXP)
 INCLUDE SYSLIB(BWB@VAR)
 INCLUDE SYSLIB(BWB@INP)
 INCLUDE SYSLIB(BWB@FNC)
 INCLUDE SYSLIB(BWB@CND)
 INCLUDE SYSLIB(BWB@OPS)
 INCLUDE SYSLIB(BWB@DIO)
 INCLUDE SYSLIB(BWB@STR)
 INCLUDE SYSLIB(BWB@ELX)
 INCLUDE SYSLIB(BWB@MTH)
 INCLUDE SYSLIB(BWB@STC)
 INCLUDE SYSLIB(BWX@TTY)
 INCLUDE SYSLIB(UNIXIO)
 ENTRY @@MAIN
/*
//
