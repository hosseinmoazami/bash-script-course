#!/bin/bash
while :; do
    read -p "Enter a number: " number
    number=$(echo $number | sed 's/+//g')
    echo $number >>file
    echo $(sort -n file)
done

# Master Script
>list
get() {
    read -p "Please enter an integer number: " number_temp
    number=$(echo $number_temp | sed "s/+//g")
}

Sort() {
    echo $number >>list
    sort -n list >>list_temp
    cp list_temp list
    rm list_temp
    cat list
}

while true; do
    sleep 0.1
    get
    Sort
done
