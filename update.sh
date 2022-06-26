#!/bin/bash

source /etc/os-release

if [[ $ID == 'raspbian' ]] || [[ $ID == 'debian' ]]; then
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

elif [[ $ID == 'fedora' ]]; then
	sudo dnf -y update
	echo "##########################################"
	echo "Last Updated:" $(date)
	echo "##########################################"

elif [[ $ID == 'rhel' ]]; then
	sudo yum -y update
    echo "##########################################"
    echo "Last Updated:" $(date)
    echo "##########################################"

else
	echo "Unknown Distro: $ID"

fi
