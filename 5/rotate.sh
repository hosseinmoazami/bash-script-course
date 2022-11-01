#!/bin/bash

read -p "Speed (s/1000): " speed
read -p "duration (s): " duration

chars="/-\|"
end=$((SECONDS+duration))

while [ $SECONDS -lt $end ]
do
    for (( i=0; i<${#chars}; i++ ))
    do
        sleep $speed
        echo -en "${chars:$i:1}" "\r"
    done
done

echo "Job done Successfully"


######################################
# Master Code
######################################
function rotate
{
INTERVAL=0.1
while : # Loop forever...until this function is killed
do
(( RCOUNT = RCOUNT + 1 )) # Increment the RCOUNT
case $RCOUNT in
1) echo -e '-'"\b\c"
sleep $INTERVAL
;;
2) echo -e '\\'"\b\c"
sleep $INTERVAL
;;
3) echo -e "|\b\c"
sleep $INTERVAL
;;
4) echo -e "/\b\c"
sleep $INTERVAL
;;
*) RCOUNT="0" # Reset the RCOUNT to "0", zero.
;;
esac
done
} # End of Function - rotate


######################################
# Beginning of Main
######################################
rotate &
ROTATE_PID=$!
sleep 10
kill -9 $ROTATE_PID
# Cleanup...
echo "the job is done "
# End of Example