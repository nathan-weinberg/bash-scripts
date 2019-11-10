#!/bin/bash

source /etc/os-release

if [ $ID == 'fedora' ]; then

	# snap
	sudo dnf install -y snapd
	sudo ln -s /var/lib/snapd/snap /snap
	sudo systemctl restart snapd.service

	# nano
	sudo dnf install -y nano

	# GNOME Tweak Tool
	sudo dnf install -y gnome-tweak-tool

	# npm
	sudo dnf install -y npm

	# Thunderbird
	sudo dnf install -y thunderbird

	# Spotify
	sudo snap install spotify

	# HexChat
	sudo dnf install -y hexchat

	# Slack
	sudo snap install slack --classic

	# Sublime Text 3
	sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
	sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
	sudo dnf install -y sublime-text

	# VLC
	sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
	sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
	sudo dnf install -y vlc
	sudo dnf install -y python-vlc

	# Redshift
	sudo dnf install -y redshift-gtk

	# Adobe Flash
	sudo dnf install -y http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm
	sudo dnf install -y flash-plugin alsa-plugins-pulseaudio libcurl

	# SSH configuration
	sudo dnf install -y openssh-server
	sudo systemctl enable sshd
	sudo systemctl start sshd

	# see git branch within terminal
	echo '## see git branch within terminal
	git_branch() {
	  git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/ (\1)/"
	}

	export PS1="[\u@\h \W\[\033[00;32m\]\$(git_branch)\[\033[00m\]]\$ "' >> ~/.bashrc

elif [ $ID == 'raspbian' ]; then

	# SSH configuration
	sudo apt install -y openssh-server
	sudo systemctl enable ssh
	sudo systemctl start ssh

	# Firewall configuration
	sudo apt install -y ufw
	sudo ufw enable
	sudo ufw allow 22	# allow ssh
	sudo ufw allow 5900 # allow vnc

	# Fail2Ban configuration
	sudo apt install -y fail2ban
	sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local

	# VNC configuration
	sudo apt install -y realvnc-vnc-server realvnc-vnc-viewer
	sudo systemctl enable vncserver-x11-serviced.service
	sudo systemctl start vncserver-x11-serviced.service

else
	echo "Unknown Distro: $ID"

fi
