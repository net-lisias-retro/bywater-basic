# bywater basic (bw-basic) :: Change Log

* 2015-0512: 3.00 (Howard Wulf)
	- Code redesign from Howard Wulf, AF5NE 
* 2014-0804: 2.61 (Paul Edwards)
	- Bug fix from Matthias Rustler
* 2012-1106: 2.60 (Paul Edwards)
	- New maths functions and append mode support from Edmond Orignac
	- Bug fixes
* 2009-0604: 2.50 (Paul Edwards)
	+ Bug fixes
	+ New compilation procedure for MVS and CMS
* 2009-0126: 2.40 (Paul Edwards)
	+ Bug fixes from Bill Chatfield
	+ Updated documentation
	+ Added support for compiling on CMS (another IBM mainframe OS)
* 2008-0305: 2.30 (Paul Edwards)
	+ Minor bug fixes, cosmetic improvements and portability improvements.
	+ Added support for compiling on MVS (IBM mainframe) 
* 1997-1011: 2.20.2 (Jon B. Volkoff)
	+ Patch Level 2.
	+ `bwb_cmd.c`
   		- Fixed calling stack level logic in RETURN statement to prevent erroneous "RETURN without GOSUB" messages.
	+ `bwb_cnd.c`, `bwb_stc.c`
		- Changed continuation condition for WHILE, ELSEIF, and LOOP UNTIL to be != FALSE, not == TRUE. More in line with common commercial BASIC implementations.
	+ `bwb_mth.c`
		- Fixed initialization in VAL function so that old results are not later returned as values.
	+ `bwb_var.c`
		- Added parenthesis level checking to dim_getparams. Using multi-level expressions as array subscripts was causing the program to bomb.
	+ `bwx_iqc.c`, `bwx_tty.c`, `bwb_mes.h`
		- Added second copyright notice.
	+ `bwb_dio.c`, `bwb_str.c`
		- Added support for strings longer than 255 characters.
	+ `bwb_prn.c`
		- Disabled tab expansion and print width checks when not printing to a file.
	+ `bwb_inp.c`
		- Fixed LINE INPUT file reads to accommodate strings of length MAXSTRINGSIZE.
	+ `bwx_ncu.h`, `bwx_ncu.c`
		- New files.  Code for UNIX ncurses interface, compliments of L.C. Benschop, Eindhoven, The Netherlands.
	+ `Makefile.ncu`
		New files.  Sample makefile for ncurses implementation.
	+ `bwbasic.h`
		- Revised defines for MININTSIZE and MAXINTSIZE from 16-bit to 32-bit limits.
		- Revised define for MAXSTRINGSIZE from 255 to 5000 characters.
   		- Changed string length from unsigned char to unsigned int to support strings longer than 255 characters.
		- Added support for new ncurses package.
* 1996-0315: 2.20.1 (Jon B. Volkoff)
	+ Patch Level 1.
	+ `bwb_cnd.c`
		- Moved init routine for bwb_while so that it would be initialized regardless of expression value, not just if TRUE.  This was causing some segmentation faults in WHILE-WEND loops.
	+ `bwb_elx.c`
		- Plugged gaping memory leak.  Temp variable space for expression evaluation was being allocated but not freed when done (oops!).
	+ `bwb_fnc.c`
		- Added check for NULL return from getenv to prevent segmentation faults.
	+ `bwbasic.h`
		- Revised VERSION define to reflect above changes.
* 1995-1125: 2.20 (Jon B. Volkoff)
	+ Plugged numerous memory leaks, resolved memory overruns and allocation difficulties.
	+ General cleanup and bug fixes, too many to list in detail here. The major problem areas addressed were:
		- RUN command with file name argument
		- nested and cascaded FOR-NEXT loops
		- PRINT USING
		- EOF, LOF functions
		- string concatenation
		- operator hierarchy
		- multi-level expression evaluation
		- hex constant interpretation
		- hex and octal constants in INPUT and DATA statements
	+ Added a CLOSE all files feature (when no argument supplied).
	+ Added a unary minus sign operator.
	+ Added a MID$ command to complement the MID$ function.
	+ Added a RENUM facility in a standalone program.
	+ Added checking in configure for unistd.h (important on Sun systems).
* 1993-1011: 2.10 (Ted A. Campbell)
	+ now compilable on "stock" (older K&R specification) C compilers;
	+ implements ANSI-BASIC-style structured programming, with called subroutines, multi-line functions, multi-line IF-THEN-ELSE statements, SELECT CASE statements, etc.;
	+ new enhancements to the interactive environment, such as DO NUM and DO UNNUM to number or unnumber all program lines;
	+ addition of some hardware-specific commands such as CLS, LOCATE, and INKEY$ (at present for IBM PC and compatibles, using the Microsoft QuickC compiler), opening the way for more hardware-specific commands and functions in the future;
	+ general improvements to reliability and portability, including more extensive testing than previous versions;
* ????-????: 1.11 (Ted A. Campbell)
	+ Lost in time. 
