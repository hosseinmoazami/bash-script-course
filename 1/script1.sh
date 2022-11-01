#!/bin/bash
echo "The start time is : `date`"
#sleep 5
echo "The end time is : $(date)"

sum=1
sum=[ 2 * $sum ] ; echo $sum

expr 1 + 5

var1=`echo "scale=4; 3.44/5" | bc`
echo $var1

if grep "rich" /etc/passwd > /dev/null
then
	echo true
else
	echo false
fi