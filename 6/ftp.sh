#!/bin/bash
>file
echo "user username password" > file
echo "cd /home/hossein/source" >> file
echo "lcd ../5/source" >> file
cd ../5/source

for var in `ls *.csv`
do
    echo "put $var $var"
done >> ../../6/file
cd ../../6
echo "quit" >> file
cat file | ftp -i -v -n 127.0.0.1
