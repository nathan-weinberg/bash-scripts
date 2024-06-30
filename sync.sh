#!/bin/bash

if [ $# -eq 2 ]; then
	rsync -auhvP --delete --mkpath $1 $2
	echo "##################################################"
	echo "Last Sync Occured:" $(date)
	echo "##################################################"
else
	echo "Usage: ./sync.sh [path/to/source] [path/to/destination] - Wrapper for rsync"
fi
