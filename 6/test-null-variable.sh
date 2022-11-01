#!/bin/bash
VAL= # Creates a NULL variable
if [[ -z "$VAL" && "$VAL" = '' ]]
then
echo "The VAL variable is NULL"
fi



VAL=25
if [[ ! -z "$VAL" && "$VAL" != '' ]]
then
echo "The VAL variable is NOT NULL"
fi