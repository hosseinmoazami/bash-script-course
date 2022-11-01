#!/bin/bash
oldSTTY=$( stty --save )
stty -echo
read -p "Password: " PASSWD
stty $oldSTTY

echo just for testing ...
echo $PASSWD