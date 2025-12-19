#!/bin/bash

source /etc/os-release

if [ $ID == 'fedora' ]; then

	# GNOME Tweak Tool
	sudo dnf install -y gnome-tweak-tool

	# nano
	sudo dnf install -y nano

	# tmux
	sudo dnf install -y tmux

	# npm
	sudo dnf install -y npm

	# KolourPaint
	sudo dnf install -y kolourpaint

	# Thunderbird
	sudo dnf install -y thunderbird

	# Quod Libet
	sudo dnf install -y quodlibet

	# HexChat
	sudo dnf install -y hexchat

	# flatpak
	sudo dnf install -y flatpak
	sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

	# Slack
	sudo flatpak install flathub com.slack.Slack

	# Spotify
	sudo flatpak install flathub com.spotify.Client

	# Visual Studio Code
	sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
	sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
	sudo dnf check-update
	sudo dnf install code

	# VLC
	sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
	sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
	sudo dnf install -y vlc
	sudo dnf install -y python-vlc

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

elif [ $ID == 'debian' ]; then

	# SSH configuration
	sudo apt install -y openssh-server
	sudo systemctl enable ssh
	sudo systemctl start ssh

	# Firewall configuration
	sudo apt install -y ufw rsyslog
	sudo ufw allow 22	# allow default ssh port
	sudo ufw enable

	# Fail2Ban configuration
	sudo apt install -y fail2ban
	sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local

else
	echo "Unknown Distro: $ID"

fi
