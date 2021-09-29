#
# Makefile for bwbasic on Linux 8-9-2020
# Now version bwbasic-3.20d
#
# Tested on Ubuntu 18.04 Had to fix compatabily issues
#           Ubuntu 20.04 Had to fix compatabily issues
#           Debian 10 Buster
#           Beaglebone Black with Debian 10
#           Raspberry Pi running Debian 10 Buster
#           Linux Mint LMDE4
#           Linux Lite 4.8
#
#           ken.at.github@gmail.com
#
CC=gcc
# If running on a Beaglebone you might want to replace
# CFLAGS=-s -ansi  with  CFLAGS=-Os -ansi
# to have a smaller runtime size
CFLAGS=-s -ansi
LIB=-lm
DEST=/usr/bin
# HOME=$HOME

bwbasic:
	$(CC) $(CFLAGS) -o bwbasic bw*.c $(LIB) -DLINUX
	$(CC) $(CFLAGS) -o renum renum.c $(LIB) 
	ls -l bwbasic renum

# bwbasic and renum runtime. editfl temp file created by renum
clean:
	rm -f *.o bwbasic renum editfl core

install:
	ls -l bwbasic renum
	cp bwbasic renum bwbasic.sh $(DEST)/.
	ls -l $(DEST)/bwbasic $(DEST)/renum $(DEST)/bwbasic.sh
	mkdir -p /usr/share/bwbasic
	mkdir -p /usr/share/doc/cbwbasic
	mkdir -p /usr/share/doc/bwbasic/docs
	mkdir -p $HOME/Desktop
	cp BAS-EXAMPLES/*     /usr/share/bwbasic/.
	cp DOCS/*             /usr/share/doc/bwbasic/docs/.
	cp README READMEFIRST /usr/share/doc/bwbasic/.
	cp COPYING            /usr/share/doc/bwbasic/.
	cp bwbasic.png        /usr/share/pixmaps/.
	cp bwbasic.desktop    /usr/share/applications/bwbasic.desktop 
	# cp bwbasic.desktop    $HOME/Desktop/.
	# chmod 666             $HOME/Desktop/bwbasic/desktop

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

