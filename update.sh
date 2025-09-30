#!/bin/bash

if [[ $1 == '-v' ]]; then
	echo "===> running in verbose mode"
    set -x
fi

source /etc/os-release

# apt-based Operating Systems
if [ $ID == 'debian' ] || [ $ID == 'raspbian' ]; then
	echo "###########################"
	echo "Update System Package List"
	echo "###########################"
	sudo apt-get -y update
	echo "##############################################"
	echo "Upgrade installed packages to latest versions"
	echo "##############################################"
	sudo apt-get -y dist-upgrade
	echo "###################"
	echo "Upgrade ssh server"
	echo "###################"
	sudo apt-get -y install openssh-server
	echo "#############################################"
	echo "Last Updated:" $(date)
	echo "#############################################"

# dnf-based Operating Systems
elif [ $ID == 'fedora' ] || [ $ID == 'rhel' ]; then
	sudo dnf -y upgrade
	echo "##########################################"
	echo "Last Updated:" $(date)
	echo "##########################################"

else
	echo "Unknown Distro: $ID"

fi
