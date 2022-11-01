#!/bin/bash
#title           :middle-ftp.sh
#description     :get unique files from source server and upload to destination server
#author		 :Hossein Moazami
#date            :2022 Oct 26 21:25:42
#version         :1.32    
#usage		 : ./middle-ftp.sh
#bash_version    :5.1.16(1)-release
#==============================================================================

# Source Server Info
source_ip="192.168.0.1"
source_user="source_admin"
source_pass="HJUsfnh14s#"
source_dir="/home/source/backup"
>downloadFTP

# Destination Server Info
destination_ip="192.168.0.10"
destination_user="destination_admin"
destination_pass="aeE@#4Fer45#"
destination_dir="/home/destination/backup"
>uploadFTP

downloadList() {
    echo "user $source_user $source_pass" > downloadFTP
    echo "cd $source_dir" >> downloadFTP
    echo "lcd /home/middle/backup" >> downloadFTP
    cd /home/middle/backup
    
    # get list of files in source server
    getSourceFilesList

    # get different between source and middle
    for item in `comm sourceNewList sourceList -23 | xargs`
    do
        echo "get $item $item"

        # save source files name in a file in middle server
        echo $item >> sourceList

    done >> downloadFTP

    echo "quit" >> downloadFTP

    cat downloadFTP | ftp -i -v -n $source_ip
}

getSourceFilesList() {
    echo "user $source_user $source_pass" > tempList
    echo "nlist $source_dir > sourceNewList" >> tempList
    echo "quit" >> tempList
    cat tempList | ftp -i -v -n $source_ip
}

# Upload files from middle server to destination server
uploadList() {
    echo "user $destination_user $destination_pass" > uploadFTP
    echo "cd $destination_dir" >> uploadFTP
    echo "lcd /home/middle/backup" >> uploadFTP
    cd /home/middle/backup

    for item in `ls`
    do
        echo "put $item $item"
    done >> uploadFTP

    echo "quit" >> uploadFTP

    cat uploadFTP | ftp -i -v -n $destination_ip
}

cleanMiddleServer() {
    rm -rf /home/middle/backup/*
}

downloadList
uploadList
cleanMiddleServer