#!/bin/bash

DISTRO=$(lsb_release -is)

if [ $DISTRO == 'Raspbian' ]; then
	echo "##########################################"
	echo "Last Updated:" $(date)
	echo "##########################################"

	sudo apt-get -y update
	echo "###########################"
	echo "Updated System Package List"
	echo "###########################"
	sudo apt-get -y dist-upgrade
	echo "##############################################"
	echo "Upgraded installed packages to latest versions"
	echo "##############################################"
	sudo apt-get -y install openssh-server
	echo "###################"
	echo "Upgraded ssh server"
	echo "###################"

elif [ $DISTRO == 'Fedora' ]; then
	echo "##########################################"
	echo "Last Updated:" $(date)
	echo "##########################################"

	sudo yum -y update

else
    echo "Unknown Distro: $DISTRO"

fi