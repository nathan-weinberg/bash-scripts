#!/bin/bash

cd /home/

if [[ ! -d "$1" ]]; then
    echo "Usage: ./backup.sh [user] [optional: path/to/destination] - Creates tar file containing user's home directory"

elif [[ $# -eq 2 ]]; then
	if [[ ! -d "$2" ]]; then

		exit 1
	else

		sudo tar czf "$1"_home_"$(date +"%m-%d-%Y")".tar.gz "$1"
		sudo cp "$1"_home_"$(date +"%m-%d-%Y")".tar.gz "$2"
		sudo rm "$1"_home_"$(date +"%m-%d-%Y")".tar.gz
		echo "Last Backup Generated:" $(date)
    fi
else

    sudo tar czf "$1"_home_"$(date +"%m-%d-%Y")".tar.gz "$1"
    echo "Last Backup Generated:" $(date)
fi
