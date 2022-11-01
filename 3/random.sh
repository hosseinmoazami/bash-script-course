#!/bin/bash

for step in {1..100}
do
	for scale in {1..20}
	do
		echo -n $(( $RANDOM % 9 )) >> randomFile
	done
	echo >> randomFile
done

while read -r line
do
	digit=`echo $line | cut -c10-14`
	if [ $digit -gt 50000 ]
	then
		echo $line
	fi
done < ./randomFile
