#!/bin/bash

source /etc/os-release

if [[ $ID == 'raspbian' ]] || [[ $ID == 'debian' ]]; then
	sudo apt-get -y update
	sudo apt-get -y dist-upgrade
	sudo apt-get -y install openssh-server

elif [[ $ID == 'fedora' ]]; then
	sudo dnf -y update

elif [[ $ID == 'rhel' ]]; then
	sudo yum -y update

else
	echo "Unknown Distro: $ID"

fi
