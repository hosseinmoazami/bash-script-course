#!/bin/bash
#for ((i=1;i<=255;i++))
#do
#	echo "192.168.1.$i" | grep -v 192.168.1.100 >> ip-list
#done


for ((i=1;i<=255;i++))
do
	if [ $i == 100 ]
	then
		continue 
	fi
	echo 192.168.1.$i >> file
done

