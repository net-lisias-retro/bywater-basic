//BWBGEN JOB CLASS=C,REGION=0K
//*
//CREATE   PROC BWBPREF='BWBASIC'
//DELETE   EXEC PGM=IEFBR14
//DD1      DD DSN=&BWBPREF..SOURCE,DISP=(MOD,DELETE),
//       UNIT=SYSDA,SPACE=(TRK,(0))
//DD2      DD DSN=&BWBPREF..INCLUDE,DISP=(MOD,DELETE),
//       UNIT=SYSDA,SPACE=(TRK,(0))
//DD3     DD DSN=&BWBPREF..NCALIB,DISP=(MOD,DELETE),
//       UNIT=SYSDA,SPACE=(TRK,(0))
//DD4     DD DSN=&BWBPREF..LINKLIB,DISP=(MOD,DELETE),
//       UNIT=SYSDA,SPACE=(TRK,(0))
//DD5      DD DSN=&BWBPREF..JCL,DISP=(MOD,DELETE),
//       UNIT=SYSDA,SPACE=(TRK,(0))
//*
//ALLOC    EXEC PGM=IEFBR14
//DD1      DD DSN=&BWBPREF..SOURCE,DISP=(,CATLG),
// DCB=(RECFM=VB,LRECL=224,BLKSIZE=9024),
// SPACE=(CYL,(7,1,10)),UNIT=SYSDA
//DD2      DD DSN=&BWBPREF..INCLUDE,DISP=(,CATLG),
// DCB=(RECFM=VB,LRECL=224,BLKSIZE=9024),
// SPACE=(CYL,(1,1,10)),UNIT=SYSDA
//DD3      DD DSN=&BWBPREF..NCALIB,DISP=(,CATLG),
// DCB=(RECFM=U,LRECL=0,BLKSIZE=3200),
// SPACE=(CYL,(1,1,10)),UNIT=SYSDA
//DD4      DD DSN=&BWBPREF..LINKLIB,DISP=(,CATLG),
// DCB=(RECFM=U,LRECL=0,BLKSIZE=3200),
// SPACE=(CYL,(1,1,10)),UNIT=SYSDA
//DD5      DD DSN=&BWBPREF..JCL,DISP=(,CATLG),
// DCB=(RECFM=FB,LRECL=80,BLKSIZE=9040),
// SPACE=(CYL,(1,1,20)),UNIT=SYSDA
//         PEND
//*
//S1 EXEC CREATE
//
