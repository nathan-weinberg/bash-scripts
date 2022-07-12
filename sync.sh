#!/bin/bash

if [[ $# -eq 2 ]]; then
	rsync -auhvP --delete $1 $2
else
	echo "Usage: ./sync.sh [path/to/source] [path/to/destination] - Wrapper for rsync"
fi
