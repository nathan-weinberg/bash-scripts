#!/bin/bash

# Snap
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
