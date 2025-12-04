#!/bin/bash

#Backup file location
BACKUP_DIR=$HOME/backup

#Source file location
SOURCE_DIR=/var/log

#TIMESTATMP
timestamp=$(date +%Y-%m-%d)


#Create tar
tar -cvJf "$BACKUP_DIR/backup-$timestamp.tar.xz" -P "$SOURCE_DIR"

if [ $? -eq 0 ]
then
        echo "Backup create successfully $BACKUP_DIR/backup-$timestamp.tar.xz"
else
        echo "Backup Failed"
        exit 1
fi
