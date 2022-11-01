#!/bin/bash

awk -F'[:]' -v user="$1" '$1 ~ user {printf "uid=%s(%s) gid=%s(%s) ", $3, $1, $3, $1}' /etc/group
echo -n groups=
for group in `groups hossein | cut -d":" -f 2`
do
	cat /etc/group | sort -n | awk -F'[:]' -v user="$group" '$1 ~ user {printf "%s(%s),", $3, $1}'
done


# Master Code 
echo -n "uid=$UID($USER) `cat /etc/group | grep "^$USER:" | awk -F : '{print "gid="$3"("$1")"}'` groups="

for var in `groups`; do echo "$(cat /etc/group | grep "^$var:" | awk -F : '{print $3 "("$1"),"}')" ; done | xargs | sed "s/ //g" | sed "s/,$//g"