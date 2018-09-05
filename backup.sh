#!/bin/bash

cd /home/
if [ ! -d "$1" ]; then
    echo "Usage: ./backup.sh [user] [optional: media destination] - Creates tar file containing user's home directory"
elif [ $# -eq 2 ]; then
	if [ ! -d /media/"$USER"/"$2" ]; then
		echo "Media does not exist."
	else
		sudo tar czf "$1"_home_"$(date +"%m-%d-%Y")".tar.gz "$1"
		sudo cp "$1"_home_"$(date +"%m-%d-%Y")".tar.gz /media/"$USER"/"$2"
		sudo rm "$1"_home_"$(date +"%m-%d-%Y")".tar.gz
		echo "Last Backup Generated:" $(date)
    fi
else
    sudo tar czf "$1"_home_"$(date +"%m-%d-%Y")".tar.gz "$1"
    echo "Last Backup Generated:" $(date)
fi
