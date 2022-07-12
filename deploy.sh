#!/bin/bash

source /etc/os-release

if [[ $ID == 'fedora' ]]; then

	fedoraPackages=(gnome-tweak-tool nano tmux npm kolourpaint thunderbird quodlibet hexchat flatpak openssh-server flash-plugin alsa-plugins-pulseaudio libcurl vlc python-vlc)

	sudo dnf install -y "${fedoraPackages[@]}" \
                        http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm \
                        https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
                        https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

	sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

	sudo flatpak install flathub com.{slack.Slack,spotify.Client}

	# Visual Studio Code
	sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
	sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
	sudo dnf check-update
	sudo dnf install code

	# SSH configuration
	sudo systemctl enable --now sshd

	# see git branch within terminal
	cat >> ~/.bashrc << EOF
	git_branch() {

        gitBranch="$(git branch --show-current)"

        printf "${gitBranch:-HEAD}"
	}

	export PS1="[\u@\h \W\[\033[00;32m\]\$(git_branch)\[\033[00m\]]\$ "'
EOF

elif [[ $ID == 'raspbian' ]]; then

	# SSH configuration
	sudo apt install -y openssh-server
	sudo systemctl enable --now ssh

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
	sudo systemctl enable --now vncserver-x11-serviced.service
else
	echo "Unknown Distro: $ID"

fi
