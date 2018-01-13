#!/bin/bash

cd /home/
if [ ! -d "$1" ]; then
    echo "Usage: ./backup.sh [user] - Creates tar file containing user's home directory"
else
    sudo tar czf "$1"_home.tar.gz "$1"
    echo "Last Backup Generated:" $(date)
fi
