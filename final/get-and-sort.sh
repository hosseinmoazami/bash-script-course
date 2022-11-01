#!/bin/bash
#title           :get-and-sort.sh
#description     :get number from input, store it in an array and sort it (without sort command)
#author		 :Hossein Moazami
#date            :2022 Oct 26 21:23:26
#version         :1.4    
#usage		 : ./get-and-sort.sh
#bash_version    :5.1.16(1)-release
#==============================================================================

ini_array=()

getNumber() {
    read -p "Enter New Number Please: " input
}

sortArray() {
    length=${#ini_array[@]}
    for ((i = 0; i < $length; i++)); do
        condition=$(($length - $i - 1))
        for ((j = 0; j < $condition; j++)); do
            current=${ini_array[$j]}
            next=${ini_array[$j + 1]}
            if [ $current -gt $next ]; then
                temp=${ini_array[$j + 1]}
                ini_array[$(($j + 1))]=${ini_array[$j]}
                ini_array[$j]=$temp
            fi
        done
    done
}

printSortedArray() {
    echo Printing the array
    length=${#ini_array[@]}
    for ((i = 0; i < $length ; i++)); do
        echo "array[$i]= ${ini_array[$i]}"
    done
}

while :; do
    getNumber
    ini_array+=($(echo $input | sed "s/+//g" | sed -e "s/-$//g"))
    sortArray
    printSortedArray
done
