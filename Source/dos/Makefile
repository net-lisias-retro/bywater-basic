#
# Makefile for bwbasic on Linux 8-5-2020
# Now version bwbasic-3.20c
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
DEST=/usr/local/bin

bwbasic:
	$(CC) $(CFLAGS) -o bwbasic bw*.c $(LIB) -DLINUX
	$(CC) $(CFLAGS) -o renum renum.c $(LIB) 
	ls -l bwbasic renum

# bwbasic and renum runtime. editfl temp file created by renum
clean:
	rm -f *.o bwbasic renum editfl core

install:
	ls -l bwbasic renum
	cp bwbasic renum $(DEST)/.
	ls -l $(DEST)/bwbasic $(DEST)/renum

remove:
	rm $(DEST)/bwbasic $(DEST)/renum

uninstall:
	rm $(DEST)/bwbasic $(DEST)/renum

run:
	$(DEST)/bwbasic

runlocal:
	./bwbasic

