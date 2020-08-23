# Bash Scripts
#### Author: Nathan Weinberg

## Requirements
These scripts assume sudo privileges and one of the following OS environments:

- Raspbian
- Debian
- Fedora
- Red Hat Enterprise Linux

`update.sh` and `deploy.sh` require an Internet connection.

## update.sh
### Purpose

`update.sh` performs the following tasks on Debian/Raspian systems:

- Updates System Package List
- Upgrades installed packages to latest versions
- Upgrades openssh server

And does a standard dnf/yum update on Fedora/RHEL.

### Usage

update.sh can be run from the command line as follows:

`$ ./update.sh`

You may need to run the following command first:

`$ chmod +x update.sh`

## backup.sh
### Purpose

`backup.sh` performs the following tasks:

- Creates tar file containing a specifed user's home directory
- Saves file to either /home/ directory or an alternate destination if specified

### Usage
`backup.sh` can be run from the command line as follows:

`$ ./backup.sh [user] [optional: path/to/destination]`

You may need to run the following command first:

`$ chmod +x backup.sh`

### Notes

It is recommended you use an absolute path for the destination (if you choose to specify one) to reduce the chance of error.

## system.sh
### Purpose

`system.sh` displays the following system data:

- CPU Info
- Memory Info
- Hard Drive Info
- Partition Info
- Linux Version Info

### Usage
`system.sh` can be run from the command line as follows:

`$ ./system.sh`

You may need to run the following command first:

`$ chmod +x backup.sh`

## deploy.sh
### Purpose

`deploy.sh` installs the following applications and does some basic SSH/Terminal configuration on Fedora:

- GNOME tweak tool
- nano
- tmux
- npm
- KolourPaint
- Thunderbird
- Quod Libet
- Hexchat
- flatpak
- Slack
- Spotify
- Visual Studio Code
- VLC
- Adobe Flash

It does the following on Raspbian:

- SSH configuation
- UFW installation and configuration
- Fail2Ban installation and configuration
- VNC installation and configuration

### Usage
`deploy.sh` can be run from the command line as follows:

`$ ./deploy.sh`

You may need to run the following command first:

`$ chmod +x deploy.sh`

### Notes

Unlike the other scripts in this repository, `deploy.sh` is only configured for/has only been tested on Fedora and Raspbian (that has been installed via NOOBS). No other Operating Systems are officially supported at this time.

It is recommended you restart your computer after running `deploy.sh` - certain applications may not appear visible until doing so.

## sync.sh
### Purpose
`sync.sh` syncs the files between a source and destination such that the files in the specified destination will be the same as the files in the specified source.

### Usage
`sync.sh` can be run from the command line as follows:

`$ ./sync.sh [path/to/source] [path/to/destination]`

You may need to run the following command first:

`$ chmod +x sync.sh`

### Notes
`sync.sh` is just a wrapper for `rsync`; I would recommend looking at the [rsync man page](https://download.samba.org/pub/rsync/rsync.html) if you wish to further customize your syncing options.

### Automating Scripts with Cron

It is recommended to automate the usage of these scripts (specifically `update.sh`, `backup.sh`, and `sync.sh`) using `cron`. 
