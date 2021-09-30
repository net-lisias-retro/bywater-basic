@echo off
echo 9-20-2021 Ken. bwbasic. Works under Windows 10 using gcc 7.4.0
echo                              and gcc 8.1.0 64 bit
echo            and Windows 11 using tdm64-gcc-5.1.0-2 gcc 5.1.0 32 and 64 bit
echo https://sourceforge.net/projects/tdm-gcc/files/TDM-GCC%20Installer/tdm64-gcc-5.1.0-2.exe/download
echo                           gcc 5.1.0 works with XP, 7 and 10
echo                             added notes for 32 bit
echo.
echo                                      Wait
echo.

if exist *.o del *.o
if exist bwbasic.exe del bwbasic.exe
if exist renum.exe del renum.exe

call stdcomp bwbasic.c
call stdcomp bwb_int.c
call stdcomp bwb_tbl.c
call stdcomp bwb_cmd.c
call stdcomp bwb_prn.c
call stdcomp bwb_exp.c
call stdcomp bwb_var.c
call stdcomp bwb_inp.c
call stdcomp bwb_fnc.c
call stdcomp bwb_cnd.c
call stdcomp bwb_dio.c
call stdcomp bwb_str.c
call stdcomp bwb_stc.c
call stdcomp bwx_tty.c
call stdcomp bwd_cmd.c
call stdcomp bwd_fun.c

Rem If compiling under DOS 32 bit (gcc 5.1.0) add -m32 after -s
gcc -s -ansi -DMSDOS -o bwbasic.exe bwb_cmd.o bwb_cnd.o bwb_dio.o bwb_exp.o bwb_fnc.o bwb_inp.o bwb_int.o bwb_prn.o bwb_stc.o bwb_str.o bwb_tbl.o bwb_var.o bwbasic.o bwd_cmd.o bwd_fun.o bwx_tty.o

Rem If compiling under DOS 32 bit (gcc 5.1.0) add -m32 after -s
gcc -s -ansi -DMSDOS -o renum.exe renum.c 

if exist "renum.exe" (
  echo.
  echo Compile suceeded for renum.exe.
) else (
  echo.
  echo Compile FAILED for renum.exe.
)

if exist "bwbasic.exe" (
  echo.
  echo Compile suceeded for bwbasic.exe.
) else (
  echo.
  echo Compile FAILED. Bwbasic.exe was not created.
)

echo.
echo --Done--
echo.
@echo on

