#!/bin/bash

todayDate='\D{%m-%d-%Y}' backupName="$1_home_${todayDate@P}.tar.gz"

cd /home/

if [[ ! -d "$1" ]]; then
    echo "Usage: ./backup.sh [user] [optional: path/to/destination] - Creates tar file containing user's home directory"

elif [[ $# -eq 2 ]]; then
	if [[ ! -d "$2" ]]; then

		exit 1
	else

		sudo tar czf "${backupName}" "$1"
		sudo cp "${backupName}" "$2"
		sudo rm "${backupName}"
    fi
else

    sudo tar czf "${backupName}" "$1"
fi
