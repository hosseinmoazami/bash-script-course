#!/bin/bash
# This is the Chkconfig with --list option to be executed the Gnu/Linux System
for file in `cd /etc/init.d ; ls *`
do
echo -n "`echo $file ` "
for runlevel in 0 1 2 3 4 5 6
do a=`ls /etc/rc"$runlevel".d/ | grep -i $file`
if [[ `echo $a | cut -c1` == "S" ]]
then echo -n "$runlevel:on "
else echo -n "$runlevel:off " ;fi; done
echo
done | awk '{ printf "%-15s %-10s %-10s %-10s %-10s %-10s %-10s %-10s\n", $1 , $2 , $3 , $4 , $5 ,$6 ,$7, $8 }'