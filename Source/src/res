#!/bin/bash
# 4-2020 Ken
# Draw current set rows and columns to see if it's as expected
#
clear
row=0 ; rowc=0 ; col=0 ; colc=0 ;  ccnt=0
row=`stty -a | cut -d" " -f5 | sed -e "1s/;//p" -e "1,\\$d"`
col=`stty -a | cut -d" " -f7 | sed -e "1s/;//p" -e "1,\\$d"`
rowc=`expr $row - 2` ; colc=`expr $col - 1`
seq $rowc
while [ $ccnt -lt $colc ]
   do
	echo -n "x"
	ccnt=`expr $ccnt + 1`
   done
echo "#"

