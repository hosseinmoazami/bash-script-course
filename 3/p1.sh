#!/bin/bash
count=0
for path in ${PATH//:/ }
do
	count=$[ `ls $path | wc -l` + count]
done
echo You have $count executables to execute!!!