#!/bin/bash

random=$(( $RANDOM % 5000 + 1 ))
echo $random | rev

echo number is : $random

length=${#random}
diff=$[ 5 - length ]
echo $length $diff

temp=""
digit=random
for((i=0;i<=${#random};i++))
do
	digit=$[ random / 10 ]
	exp=$[ digit % 10 ]
	echo $digit
done
echo $temp


