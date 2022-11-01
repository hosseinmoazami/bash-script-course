#!/bin/bash

read -p "Please enter your age: " age
days=$[ $age * 365 ]
echo "That makes you over $days days old"

# User Input
echo "The first parameter is : $1"
echo "The second parameter is : $2"
sum=$[ $1 + $2 ]
echo "The final answer is : $sum"

# User Input read
echo -n "Enter your name: "
read name
echo "Hello $name, Welcome to my program"

# testing $* and $@
count=1
for param in "$*"
do
echo "\$* Parameter #$count = $param"
count=$[ $count + 1 ]
done
count=1
for param in "$@"
do
echo "\$@ Parameter #$count = $param"
count=$[ $count + 1 ]
done

