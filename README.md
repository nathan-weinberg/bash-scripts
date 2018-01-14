# Bash Scripts
#### Author: Nathan Weinberg

## update.sh
### Purpose

update.sh performs the following tasks:

- Updates System Package List
- Upgrades installed packages to latest versions
- Upgrades openssh server

### Usage

update.sh can be run from the command line as follows:

`./update.sh`

You may need to run the following command first:

`chmod +x update.sh`

## backup.sh
### Purpose

backup.sh performs the following tasks:

- Creates tar file containing a specifed user's home directory
- Saves file to /home/ directory

### Usage
backup.sh can be run from the command line as follows:

`./backup.sh [user]`

You may need to run the following command first:

`chmod +x backup.sh`

## Requirements
These scripts assume a Linux Debian/Raspian OS environment and sudo privileges. update.sh requires an Internet connection.

### Automating Scripts with Cron

It is recommended to automate the usage of these scripts using `cron`. 
