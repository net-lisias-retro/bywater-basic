# 12/14/2019 Ken
trap 'echo " "; echo "PROGRAM INTERRUPTED"; echo "Press Enter "; read j; exit 1' INT
cd /home/$USER/source/bwbasic-3.2a/BAS-EXAMPLES
bwbasic
# -n = no newline -e interpret special octel numbers \007 = Bell
/bin/echo -n -e "Bwbasic terminated. Press Enter \007"
read j
