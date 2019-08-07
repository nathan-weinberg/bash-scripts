# Bash Scripts
#### Author: Nathan Weinberg

## update.sh
### Purpose

update.sh performs the following tasks on Debian/Raspian systems:

- Updates System Package List
- Upgrades installed packages to latest versions
- Upgrades openssh server

And does a standard yum update on Fedora.

### Usage

update.sh can be run from the command line as follows:

`./update.sh`

You may need to run the following command first:

`chmod +x update.sh`

## backup.sh
### Purpose

backup.sh performs the following tasks:

- Creates tar file containing a specifed user's home directory
- Saves file to either /home/ directory or an alternate destination if specified

### Usage
backup.sh can be run from the command line as follows:

`./backup.sh [user] [optional: path/to/destination]`

You may need to run the following command first:

`chmod +x backup.sh`

### Notes

backup.sh assumes the media drive is mounted under the user that is being backed up; if this is not the case make the nessessarily modfications to the code.

## status.sh
### Purpose

staus.sh displays the following data:

- CPU Info
- Memory Info
- Hard Drive Info
- Partition Info
- Linux Version Info

### Usage
status.sh can be run from the command line as follows:

`./status.sh`

You may need to run the following command first:

`chmod +x backup.sh`

## Requirements
These scripts assume sudo privileges and one of the following OS environments:

- Raspbian
- Debian
- Fedora
- Red Hat Enterprise Linux

update.sh requires an Internet connection.

### Automating Scripts with Cron

It's recommended to automate the usage of these scripts using `cron`. 
