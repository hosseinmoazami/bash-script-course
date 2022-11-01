#!/bin/bash
if [ -f /etc/passwd1 ]
then
	echo OK
else
	echo not OK
fi

echo `stat /etc/passwd | grep  Uid | cut -d"/"  -f1 | cut -d"(" -f2`

