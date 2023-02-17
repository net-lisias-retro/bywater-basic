#
# Makefile for bwbasic on Linux 10-02-2021 kenunix
# Now version bwbasic-3.20d
#
# 10-02-2021 kenunix add addgui and delgui and corrected typos.
#            set DEST to /usr/local/bin
#
# Tested on Ubuntu 18.04 Had to fix compatabily issues
#           Ubuntu 20.04 Had to fix compatabily issues
#           Debian 10 Buster
#           Beaglebone Black with Debian 10
#           Raspberry Pi running Debian 10 Buster
#           Linux Mint LMDE4
#           Linux Lite 4.8
#
#           ken.unix.guy@gmail.com
#
CC=gcc
# If running on a Beaglebone you might want to replace
# CFLAGS=-s -ansi  with  CFLAGS=-Os -ansi
# to have a smaller runtime size
CFLAGS=-s -ansi
LIB=-lm
DEST=/usr/local/bin
# HOME=$HOME

.PHONY: all
all: bwbasic renum
	ls -l bwbasic renum

bwbasic: bw*.c bw*.h
	$(CC) $(CFLAGS) -o bwbasic bw*.c $(LIB)

renum: renum.c
	$(CC) $(CFLAGS) -o renum renum.c $(LIB) 
	

# bwbasic and renum runtime. editfl.bas temp file created by renum
clean:
	rm -f *.o bwbasic renum editfl.bas core

install:
	ls -l bwbasic renum
	cp bwbasic renum GUI/bwbasic.sh $(DEST)/.
	ls -l $(DEST)/bwbasic $(DEST)/renum $(DEST)/bwbasic.sh
	mkdir -p /usr/share/bwbasic
	mkdir -p /usr/share/doc/bwbasic
	mkdir -p /usr/share/doc/bwbasic/docs
	cp BAS-EXAMPLES/*     /usr/share/bwbasic/.
	cp DOCS/*             /usr/share/doc/bwbasic/docs/.
	cp README READMEFIRST /usr/share/doc/bwbasic/.
	cp COPYING            /usr/share/doc/bwbasic/.
	cp bwbasic.png        /usr/share/pixmaps/.
	cp bwbasic.desktop    /usr/share/applications/bwbasic.desktop 

remove:
	rm $(DEST)/bwbasic $(DEST)/renum $(DEST)/bwbasic.sh
	rm -r -f /usr/share/bwbasic
	rm -r -f /usr/share/doc/bwbasic
	rm -f /usr/share/pixmaps/bwbasic.png
	rm -f /usr/share/applications/bwbasic.desktop 

uninstall:
	rm $(DEST)/bwbasic $(DEST)/renum $(DEST)/bwbasic.sh
	rm -r -f /usr/share/bwbasic
	rm -r -f /usr/share/doc/bwbasic
	rm -f /usr/share/pixmaps/bwbasic.png
	rm -f /usr/share/applications/bwbasic.desktop 

run:
	$(DEST)/bwbasic

runlocal:
	./bwbasic

# Must do as user not root
addgui:
	cp bwbasic.desktop ${HOME}/Desktop/bwbasic.desktop
	ls -l ${HOME}/Desktop/bwbasic.desktop

# Must do as user not root
delgui:
	rm -f ${HOME}/Desktop/bwbasic.desktop

