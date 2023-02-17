# bywater basic (bw-basic) :: Change Log

* 2020-0416: 3.20.1 (Ken Martin)
	+ No change log provided 
* 2017-0604: 3.20 (Howard Wulf)
	+ Implements most of the following BASIC dialects:
		- OPTION VERSION "BYWATER"        ' Bywater BASIC 3
		- OPTION VERSION "BYWATER-2"      ' Bywater BASIC 2
		- OPTION VERSION "CALL/360"       ' SBC CALL/360 Mainframe BASIC
		- OPTION VERSION "CBASIC-II"      ' CBASIC-II for CP/M
		- OPTION VERSION "DARTMOUTH"      ' Dartmouth DTSS BASIC
		- OPTION VERSION "ECMA-55"        ' ANSI Minimal BASIC
		- OPTION VERSION "ECMA-116"       ' ANSI Full BASIC
		- OPTION VERSION "GCOS"           ' GE 600 Mainframe BASIC
		- OPTION VERSION "HAARDT"         ' bas 2.4 by Michael Haardt
		- OPTION VERSION "HANDBOOK1"      ' The BASIC Handbook, 1st Edition
		- OPTION VERSION "HANDBOOK2"      ' The BASIC Handbook, 2nd Edition
		- OPTION VERSION "HEATH"          ' Heath Benton Harbor BASIC
		- OPTION VERSION "MARK-I"         ' GE 265 Mainframe BASIC
		- OPTION VERSION "MARK-II"        ' GE 435 Mainframe BASIC
		- OPTION VERSION "MBASIC"         ' Microsoft BASIC-80 for Xenix
		- OPTION VERSION "PDP-8"          ' DEC PDP-8 BASIC
		- OPTION VERSION "PDP-11"         ' DEC PDP-11 BASIC
		- OPTION VERSION "RBASIC"         ' Micronics RBASIC for 6809 FLEX
		- OPTION VERSION "RSTS-11"        ' DEC RSTS-11 BASIC-PLUS
		- OPTION VERSION "SYSTEM/360"     ' IBM System/360 Mainframe BASIC
		- OPTION VERSION "SYSTEM/370"     ' IBM System/370 Mainframe BASIC
		- OPTION VERSION "TRS-80"         ' TRS-80 Model I/III/4 LBASIC
		- OPTION VERSION "VINTAGE"        ' Vintage BASIC 1.0.1
		- OPTION VERSION "XBASIC"         ' TSC XBASIC for 6800 FLEX
	+ CONST variable [, ...] = value
		- Assigns the value to variable.  
		- Any later assignment to the variable causus a VARIABLE NOT DECLARED error.
	+ DIM now supports lower and upper bounds.
		- OPTION BASE 1
		- DIM X(      9 ) ' lower bound is 1
		- DIM Y( 5 TO 9 ) ' lower bound is 5
	+ DIM now supports virtual variables.
		- OPTION BASE 1
		- OPEN "VIRTUAL.DAT" FOR VIRTUAL AS # 3 ' virtual data file 
		- DIM # 3, A( 1000 )        ' array is virtual
		- LET A( 1000 ) = 0         ' value is written to the file
		- LET X = A( 1000 )         ' value is read from the file
		- CLOSE # 3                 ' array is no longer valid
	+ ERROR 27, "Bad DATA"
		- Occurs when the READ command detects garbage in a DATA command.
	+ INPUT LINE
		- Same as LINE INPUT.
	+ MAT now supports lower and upper bounds.
		- OPTION BASE 1
		- MAT X(      9 ) = ZER ' lower bound is 1
		- MAT Y( 5 TO 9 ) = ZER ' lower bound is 5
		- MAT X = ZER(      9 ) ' lower bound is 1
		- MAT Y - ZER( 5 TO 9 ) ' lower bound is 5
	+ MAXLEN()
		- Returns the maximum string length.
	+ OPTION DIGITS integer
		- Sets the number of significant digits for PRINT.  
		- Setting the value to zero restores the default.   
	+ OPTION EDIT string$
		- Sets the program name used by the EDIT command.
		- Setting this to "" disables EDIT command.
	+ OPTION FILES string$
		- Sets the program name used by the FILES command.
		- Setting this to "" disables FILES command.
	+ OPTION PROMPT string$
		- Sets the prompt.
	+ OPTION PUNCT AT char$
		- Sets the PRINT AT character, commonly "@".
		- Setting this to "" disables PRINT AT.
		- Setting this to a non-punctuation character is not supported.
	+ OPTION PUNCT BYTE char$
		- Sets the BYTE type suffix, commonly "~".
		- Setting this to "" disables BYTE suffix.
		- Setting this to a non-punctuation character is not supported.
	+ OPTION PUNCT COMMENT char$
		- Sets the trailing COMMENT character, commonly "'".
		- Setting this to "" disables trailing comments.
		- Setting this to a non-punctuation character is not supported.
	+ OPTION PUNCT CURRENCY char$
		- Sets the CURRENCY type suffix, commonly "@".
		- Setting this to "" disables CURRENCY suffix.
		- Setting this to a non-punctuation character is not supported.
	+ OPTION PUNCT DOUBLE char$
		- Sets the DOUBLE type suffix, commonly "#".
		- Setting this to "" disables DOUBLE suffix.
		- Setting this to a non-punctuation character is not supported.
	+ OPTION PUNCT FILENUM char$
		- Sets the FILE NUMBER prefix, commonly "#".
		- Setting this to "" disables the FILE NUMBER prefix.
		- Setting this to a non-punctuation character is not supported.
	+ OPTION PUNCT IMAGE char$
		- Sets the shortcut IMAGE character, commonly ":".
		- Setting this to "" disables the shortcut IMAGE character.
		- Setting this to a non-punctuation character is not supported.
	+ OPTION PUNCT INPUT char$
		- Sets the shortcut INPUT character, commonly "!".
		- Setting this to "" disables the shortcut INPUT character.
		- Setting this to a non-punctuation character is not supported.
	+ OPTION PUNCT INTEGER char$
		- Sets the INTEGER type suffix, commonly "%".
		- Setting this to "" disables INTEGER suffix.
		- Setting this to a non-punctuation character is not supported.
	+ OPTION PUNCT LONG char$
		- Sets the LONG type suffix, commonly "&".
		- Setting this to "" disables LONG suffix.
		- Setting this to a non-punctuation character is not supported.
	+ OPTION PUNCT LPAREN char$
		- Sets the LEFT PARENTHESIS character, commonly "(".
		- Setting this to a non-punctuation character is not supported.
	+ OPTION PUNCT PRINT char$
		- Sets the shortcut PRINT character, commonly "?".
		- Setting this to "" disables the shortcut PRINT character.
		- Setting this to a non-punctuation character is not supported.
	+ OPTION PUNCT QUOTE char$
		- Sets the QUOTE character, commonly """".
		- Setting this to a non-punctuation character is not supported.
	+ OPTION PUNCT RPAREN char$
		- Sets the RIGHT PARENTHESIS character, commonly ")".
		- Setting this to a non-punctuation character is not supported.
	+ OPTION PUNCT SINGLE char$
		- Sets the SINGLE type suffix, commonly "!".
		- Setting this to "" disables SINGLE suffix.
		- Setting this to a non-punctuation character is not supported.
	+ OPTION PUNCT STATEMENT char$
		- Sets the shortcut STATEMENT seperator character, commonly ":".
		- Setting this to "" disables the STATEMENT seperator.
		- Setting this to a non-punctuation character is not supported.
	+ OPTION PUNCT STRING char$
		- Sets the STRING type suffix, commonly "$".
		- Setting this to "" disables STRING suffix.
		- Setting this to a non-punctuation character is not supported.
	+ OPTION RECLEN integer
		- Sets the default record length for RANDOM files, commonly 128.
		- Setting thisto zero means there is no default RANDOM record length, so the record  length must be specified in the OPEN statement.
		- With OPTION RECLEN 128:
			- OPEN "FILE.DAT" FOR RANDOM AS #3
		- is considered to be the same as
			- OPEN "FILE.DAT" FOR RANDOM AS #3 LEN 128
		-With OPTION RECLEN 0:
			- OPEN "FILE.DAT" FOR RANDOM AS #3
		-causes an error.
	+ OPTION RENUM string$
		- Sets the program name used by the RENUM command.
		- Setting this to "" disables RENUM command.
	+ OPTION SCALE integer
		- Sets the number of digits to round after the decimal point for PRINT.
		- Setting the value to zero disables rounding.
	+ OPTION USING DIGIT
	+ OPTION USING COMMA
	+ OPTION USING PERIOD
	+ OPTION USING PLUS
	+ OPTION USING MINUS
	+ OPTION USING EXRAD
	+ OPTION USING DOLLAR
	+ OPTION USING FILLER
	+ OPTION USING LITERAL
	+ OPTION USING FIRST
	+ OPTION USING ALL
	+ OPTION USING LENGTH
		- Sets the characters recognized by PRINT USING.
		- Setting these to a non-punctuation character is not supported.
	+ OPTION VERSION now requires a string instead of a literal.
		- Some version names have changed.
	+ OPTION VERSION "PDP-8"
		- Added LPT, PTP, PTR, TTY, TTY IN and TTY OUT commands.
		- Added GET() and PUT() functions.
	+ OPTION VERSION "CALL/360"
	+ OPTION VERSION "SYSTEM/360"
	+ OPTION VERSION "SYSTEM/370"
		- Added alphabet extenders.  $ is a string variable.
	+ OPTION ZONE integer
		- Sets the PRINT zone width.  
		- Setting the value to zero restores the default.
	+ REPEAT - UNTIL added
		- REPEAT
			- ...
			- EXIT REPEAT
			- ...
		- UNTIL expression ' exits when expression != 0
	+ SPC( X ) and TAB( X )
		- No longer use control codes.
	+ UNTIL - UEND removed (to add REPEAT - UNTIL)
		- Here is a work-around for existin code using UNTIL-UEND:
		- UNTIL expression -->> WHILE NOT expression
			- ...                   ...
			- EXIT UNTIL     -->>   EXIT WHILE
			- ...                   ...
		- UEND             -->> WEND
* 2016-0717: 3.10 (Howard Wulf)
	+ Implements most of the following BASIC dialects:
		- OPTION VERSION DARTMOUTH        ' Dartmouth DTSS BASIC
		- OPTION VERSION MARK-I           ' GE 265 Mainframe BASIC
		- OPTION VERSION MARK-II          ' GE 435 Mainframe BASIC
		- OPTION VERSION SYSTEM-360       ' IBM System/360 BASIC
		- OPTION VERSION SYSTEM-370       ' IBM System/370 BASIC
		- OPTION VERSION CBASIC-II        ' CBASIC-II for CP/M
		- OPTION VERSION ECMA-55          ' ANSI Minimal BASIC
		- OPTION VERSION HANDBOOK1        ' The BASIC Handbook, 1st Edition
		- OPTION VERSION HANDBOOK2        ' The BASIC Handbook, 2nd Edition
		- OPTION VERSION TRS-80           ' TRS-80 Model I/III/4 LBASIC
		- OPTION VERSION BASIC-80         ' Microsoft BASIC-80 for Xenix
		- OPTION VERSION ECMA-116         ' ANSI Full BASIC
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
