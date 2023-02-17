# bywater basic (bw-basic)

The Bywater BASIC Interpreter (bwBASIC) implements a large superset of the ANSI Standard for Minimal BASIC (X3.60-1978) and a significant subset of the ANSI Standard for Full BASIC (X3.113-1987) in C.

This is Lisias' fork, aimed to historical reference and experimentation.


## In a Hurry

* [Latest Release](https://github.com/net-lisias-retro/bywater-basic/releases)
* [Source](https://github.com/net-lisias-retro/bywater-basic)
* Documentation
	+ [Project's README](https://github.com/net-lisias-retro/bywater-basic/blob/master/README.md)
		- [Change Log](./CHANGE_LOG.md)
		- [Known Issues](./KNOWN_ISSUES.md)


## Description

The Bywater BASIC Interpreter (bwBASIC) implements a large superset of the ANSI Standard for Minimal BASIC (X3.60-1978) and a significant subset of the ANSI Standard for Full BASIC (X3.113-1987) in C.

BWBASIC is an original creation of Ted A. Campbell, who stopped working on it in 1993. Since then it has received contributions from other programmers: Jon B. Volkoff, Paul Edwards, Howard S. Wulf, Ken Martin and Jon Foster.

The official repository is located at [SourceForge](https://sourceforge.net/projects/bwbasic/). Nerun has an (unofficial) mirror on github with all available SourceForge versions tagged and available in the [Releases](https://github.com/nerun/bwbasic/releases) section, with their respective source code.


### Usage

On the command prompt:

* `help` - show all commands available.
* `help commandname` - show help for a specific command.
* `list` - list source code for the program currently in memory
* `run` - executes the program in memory from the start.
* `new` - deletes the program in memory and clears all variables.
* `load filename` - loads an ASCII BASIC program into memory.
* `save filename` - saves the current program into the file "filename" in ASCII format.
* `shell "command"` - lets you run a SHELL or DOS command within bwbasic. For example, to list the contents of the current directory, in Linux type `shell "ls -l"`, in Windows type `shell "dir"`.
* `quit` - exits bwbasic.



## License:

This project is licensed as follows:

* [GPL 2.0](https://www.gnu.org/licenses/gpl-2.0.html)

Please note that upgrading the license to a future GPL license **IS NOT ALLOWED** for this work, as this author **DID NOT** added the "or (at your option) any later version" on the license.

Please note the copyrights and trademarks in [NOTICE](./NOTICE).


## References

* [tcamp](https://sourceforge.net/u/tcamp/profile/)
	+ [SourceForge](https://sourceforge.net/projects/bwbasic) - Original C implementation
* [ChipMaster (Jon Foster)](https://yeolpishack.net/repos/ChipMaster)
	+ [yeolpishack](https://yeolpishack.net/repos/ChipMaster/bwBASIC) - Appears to be where current development is happening
* [nerum](https://github.com/nerun)
	+ [Github](https://github.com/nerun/bwbasic) - Original Source code versioned on Github for reference. Archived.
* [Ken Martin](https://github.com/kenmartin-unix)
	+ [Github](https://github.com/kenmartin-unix/Bwbasic-3.2a-for-BeagleBone) 3.2a for BeagleBone
	+ [Github](https://github.com/kenmartin-unix/Bwbasic-3.20b) 3.20b
	+ [Github](https://github.com/kenmartin-unix/BwBasic) 3.20c e 2.30d
