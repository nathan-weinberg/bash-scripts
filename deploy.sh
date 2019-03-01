#!/bin/bash

# GNOME Tweak Tool
dnf install -y gnome-tweak-tool

# Thunderbird
dnf install -y thunderbird

# Snap
dnf install -y snapd
ln -s /var/lib/snapd/snap /snap

# Spotify
snap install spotify

# HexChat
dnf install hexchat

# Slack
snap install slack

# Sublime Text 3
rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
dnf install sublime-text

# VLC
dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf install -y vlc
dnf install -y python-vlc
