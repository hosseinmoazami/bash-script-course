#!/bin/bash
number=$(($RANDOM % 100 + 1))
GUESS=1
read -p "Please Ebter Your Name and a number between 1-100: " NAME number_input

while :; do
    if [ $number_input -lt $number ]; then
        echo "Bigger!"
        GUESS=$((GUESS + 1))
    elif [ $number_input -gt $number ]; then
        echo "LOWER!"
        GUESS=$((GUESS + 1))
    else
        echo "GOD DAMM RIGHT! "
        echo "WITH $GUESS Guess"
        break
    fi
    read -p "Another TRY! : " number_input
done

echo $NAME $GUESS >>record
sort -k2 -n record >>list_temp
cp list_temp record
rm list_temp
echo "TOP RANK IS : "
cat record

# Master Code
# hilow - a simple number guessing game

biggest=100                        # maximum number possible
guess=0                            # guessed by player
guesses=0                          # number of guesses made
number=$(($RANDOM % $biggest + 1)) # random number, 1 to .. $biggest

while [ $guess -ne $number ]; do
    echo -n "Guess? "
    read guess
    if [ "$guess" -lt $number ]; then
        echo "... bigger!"
    elif [ "$guess" -gt $number ]; then
        echo "... smaller!"
    fi
    guesses=$(($guesses + 1))
done

echo "Right!! Guessed $number in $guesses guesses."

exit 0
