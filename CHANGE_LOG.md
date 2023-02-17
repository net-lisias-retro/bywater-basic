# bywater basic (bw-basic) :: Change Log

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
