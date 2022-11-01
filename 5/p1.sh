#!/bin/bash

today=`date +%Y%m%d`

for i in {1..1000}
do
    echo $i > DWF_"$today"_$i.csv
done

# Create Report File
# cksum * | awk '{print $3";"$1";"$2}' | sort > s
# cksum * | awk '{print $3";"$1";"$2}' | sort > d

clear ; echo -e "Dear Anisa\nHi\nplease find the mismatch as below: \n\n`comm d s -23 | cut -d";" -f1`\n\nBest Regards"

# Ubuntu package hash create
dpkg --listfiles coreutils | grep sum | grep -v gz
