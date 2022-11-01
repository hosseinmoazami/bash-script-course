#!/bin/bash

# Script get U | L and username, lock and unlock user

# cat shadow | grep $1 | cut -d":" -f2 | awk '{print $1}'
awk -F'[:]' -v user="$1" '$1 ~ user {sub(/$1/,$1!); print}' shadow