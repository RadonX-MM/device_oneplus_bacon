#!/bin/sh
# loggy.sh.

date=`date +%F_%H-%M-%S`
logcat -v time -f  /storage/emulated/0/RadonX-logcat_${date}.txt
