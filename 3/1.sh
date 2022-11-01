#!/bin/bash

for (( i=1;i<=10;i+=2 ))
do
	echo $i
done

# for with swquence
for i in `seq 1 10`
do
	echo $i
done

# Multiple condition
for (( i=1, start=1, end=20; i<=5; i++, start += 20, end +=20 ))
do
	echo $start and $end
done

# list files in a dir as 1st parameter
i=1
for file in `ls $1`
do
	echo "Number $i is : $file"
	i=$[$i+1]
done
