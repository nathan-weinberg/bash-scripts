#!/bin/bash

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
