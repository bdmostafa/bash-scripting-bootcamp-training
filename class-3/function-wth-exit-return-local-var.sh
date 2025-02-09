#!/bin/bash

function backup_file () {
  if [ -f "$1" ] 
  then
    local BACKUP_FILE="/tmp/$(basename ${1}).$(date +%F).$$"

    echo "Backing up $1 to ${BACKUP_FILE}"

    # The exit status of the function will be the exit status of the cp command.
    cp $1 $BACKUP_FILE
  else
    # The file does not exist, so return an non-zero exit status.
    return 1
  fi
}

backup_file /etc/hosts

# Make a decision based on the exit status of the function.
if [ $? -eq "0" ]
then
  echo "Backup succeeded!"
else
  echo "Backup failed!"
  # Abort the script and return a non-zero exit status.
  exit 1
fi
