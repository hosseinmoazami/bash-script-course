#!/bin/bash
end=$((SECONDS+5))
one=`echo "/"`
two=`echo "\\\" `
three=`echo -`
while [ $SECONDS -lt $end ]; do

echo -en "$one" "\r"
echo -en "$two" "\r"
echo -en "$three" "\r"
done