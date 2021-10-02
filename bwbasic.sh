#!/bin/sh
# 12/14/2019 Ken
# 07/28/2020 enhanced by ChipMaster
# 10/02/2021 fix typo kenunix
[ -z "$BWBASIC" ]   && BWBASIC="$HOME/bwbasic"
[ ! -d "$BWBASIC" ] && mkdir "$BWBASIC"
cd "$BWBASIC"
trap '/bin/echo " "; /bin/echo -e -n "PROGRAM INTERRUPTED. \007Press Enter "; read j; exit 1' INT
bwbasic "$@"
# -n = no newline -e interpret special octel numbers \007 = Bell
/bin/echo -n "Bwbasic terminated. Press Enter "
read j
