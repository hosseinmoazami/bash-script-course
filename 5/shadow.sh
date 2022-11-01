#!/bin/bash
case $2 in
-L)
grep "$1" /etc/passwd | sed -i 's/$1\:/$1\:\!/g
-U)
grep "$1" /etc/passwd | sed -i 's/$1\:\!/$1\:/g
*)
echo hichi
esac