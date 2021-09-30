#!/bin/sh
# 12/14/2019 Ken
# 07/28/2020 enhanced by ChipMaster
[ -z "$BWBASIC" ]   && BWBASIC="$HOME/bwbasic"
[ ! -d "$BWBASIC" ] && mkdir "$BWBASIC"
cd "$BWBASIC"
trap 'echo " "; echo "PROGRAM INTERRUPTED"; echo "Press Enter "; read j; exit 1' INT
bwbasic "$@"
# -n = no newline -e interpret special octel numbers \007 = Bell
/bin/echo -n -e "Bwbasic terminated. Press Enter \007"
read j