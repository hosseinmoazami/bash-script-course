#!/bin/bash

for city in Hessen Frankfurt Mainz Dusseldorf "Sin City"
do
	echo City is: $city
done

for var in a b c d e f g h i j k
do
	echo $var > $var
done


for file in `ls ?`
do
	if [ ! -s "$file" ] 
	then
		echo $file
	fi
done

# Break
for var1 in 1 2 3 4 5 6 7 8 9 10
do
	if [ $var1 -eq 5 ]
	then
		break
	fi
	echo "Iteration numbe: $var1"
done
echo "The for loop is completed"

# Continue
for (( var=1;var<15;var++))
do
	if [ $var -gt 5 ] && [ $var -lt 10 ]
	then
		continue
	fi
	echo "Iteration number: $var"
done
