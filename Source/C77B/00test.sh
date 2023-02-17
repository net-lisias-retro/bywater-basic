# Puropose:  Verify existing BWBASIC behavior
#   Author:  Howard Wulf, AF5NE
#     Date:  2014-03-28
#    Usage:  implementatino defined
#  Example:
#            cd /sdcard/Download/BASIC/bwbasic3/BIZMII/
#            ash ./00test.sh
#

rm *.80
rm *.OUT
rm *.LPT
rm *.dif

# ----------------------------------------------
# Regression Tests
# ----------------------------------------------
testcase()
{
   TESTCASE=${1}
   echo "TESTCASE=${TESTCASE}"
   ~/bwbasic --tape ${TESTCASE}.INP --profile C77.PRO --profile ${TESTCASE}.PRO ${TESTCASE}.BAS 1> ${TESTCASE}.OUT 2> ${TESTCASE}.LPT
   
   
   echo "500 DATA ${TESTCASE}.OUT, ${TESTCASE}.80" > PAD80.INP
   ~/bwbasic --profile BYWATER.PRO PAD80.BAS


   diff ${TESTCASE}.run ${TESTCASE}.80 > ${TESTCASE}.dif
   if test -s  ${TESTCASE}.dif
   then
      echo    less ${TESTCASE}.dif
   fi
}

# ---------------------------------------------
#
# TRS-80 Model I/III/4 with 24 row x 80 column display
#
echo "OPTION VERSION CBASIC-II"  > C77.PRO

echo "OPTION VERSION BYWATER" > BYWATER.PRO
echo "OPTION LABELS OFF"     >> BYWATER.PRO

# ----------------------------------------------
# the regression tests assume these data files
# ----------------------------------------------
cp ./DATA/* .

# ----------------------------------------------
# now, we are ready to test
# ----------------------------------------------
# ~/bwbasic --tape BIZMII.INP --profile C77.PRO BIZMII.BAS
testcase BIZMII

# ----------------------------------------------
# EOF
# ----------------------------------------------
