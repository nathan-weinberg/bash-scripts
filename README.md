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

## status.sh
### Purpose

`status.sh` displays the following data:

- CPU Info
- Memory Info
- Hard Drive Info
- Partition Info
- Linux Version Info

### Usage
`status.sh` can be run from the command line as follows:

`$ ./status.sh`

You may need to run the following command first:

`$ chmod +x backup.sh`

## deploy.sh
### Purpose

`deploy.sh` installs the following applications:

- snap
- nano
- GNOME tweak tool
- npm
- Thunderbird
- Spotify
- Hexchat
- Slack
- Sublime Text 3
- VLC
- Redshift
- Adobe Flash

And performs some basic SSH configuration.

### Usage
`deploy.sh` can be run from the command line as follows:

`$ ./deploy.sh`

You may need to run the following command first:

`$ chmod +x deploy.sh`

### Notes

Unlike the other scripts in this repository, `deploy.sh` is only configured for/has only been tested on Fedora. No other Operating System is officially supported at this time.

It is recommended you restart your computer after running `deploy.sh` - certain applications may not appear visible until doing so.

### Automating Scripts with Cron

It is recommended to automate the usage of these scripts (specifically `update.sh` and `backup.sh`) using `cron`. 
