#!/bin/bash
read -p "Please Enter Second: " second

if [ $second -gt 3599 ]; then
    h=$(date -d@$second -u +%H)
    m=$(date -d@$second -u +%M)
    s=$(date -d@$second -u +%S)
    echo "Elapse Time is: $h hr $m min $s sec"
elif [ $second -gt 59 ]; then
    m=$(date -d@$second -u +%M)
    s=$(date -d@$second -u +%S)
    echo "Elapse Time is: $m min $s sec"
elif [ $second -lt 60 ]; then
    s=$(date -d@$second -u +%S)
    echo "Elapse Time is: $s sec"
fi

# Master Code
elapsed_time() {
    SEC=$1
    (($SEC < 60)) && echo "[Elapsed time: $SEC seconds]"
    (($SEC >= 60 && $SEC < 3600)) && echo "[Elapsed time: $(($SEC / 60)) min $(($SEC % 60)) sec]"
    (($SEC > 3600)) && echo "[Elapsed time: $(($SEC / 3600)) hr $((($SEC % 3600) / 60)) min $((($SEC % 3600) % 60)) sec]"
}
elapsed_time $1
