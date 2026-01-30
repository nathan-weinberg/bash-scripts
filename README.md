# Bash Scripts

Collection of scripts used to maintain various Unix systems

## Requirements

These scripts assume root access and one of the following Linux distros:

- Debian-based
  - Debian
  - Raspberry Pi OS (formerly Raspbian)
- Red Hat-based
  - Fedora
  - Red Hat Enterprise Linux
  - CentOS (untested)

## Contents

- [backup](#backup)
- [deploy](#deploy)
- [sync](#sync)
- [system](#system)
- [update](#update)

> [!NOTE]
> `update.sh` and `deploy.sh` require an Internet connection.

## backup

`backup.sh` performs the following tasks:

- Creates tar file containing a specifed user's home directory
- Saves file to either the `/home/` directory or an alternate destination if specified

### Usage

`backup.sh` can be run from the command line as follows:

```bash
./backup.sh [user] [optional: path/to/destination]
```

> [!CAUTION]
> It is recommended you use an absolute path for the destination (if you choose to specify one) to reduce the chance of error.

## deploy

`deploy.sh` installs the following applications and does some basic SSH/Terminal configuration on Red Hat-based systems:

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

It does the following on Debian-based systems:

- SSH configuation
- UFW installation and configuration
- Fail2Ban installation and configuration

### Usage

`deploy.sh` can be run from the command line as follows:

```bash
./deploy.sh
```

> [!IMPORTANT]
> It is recommended you restart your computer after running `deploy.sh` - certain applications may not appear visible until doing so.

## system

`system.sh` displays the following system data:

- CPU Info
- Memory Info
- Hard Drive Info
- Partition Info
- Linux Version Info

### Usage

`system.sh` can be run from the command line as follows:

```bash
./system.sh
```

## sync

`sync.sh` syncs the files between a source and destination such that the files in the specified destination will be the same as the files in the specified source.

### Usage

`sync.sh` can be run from the command line as follows:

```bash
./sync.sh [path/to/source] [path/to/destination]
```

> [!TIP]
> `sync.sh` is just a wrapper for `rsync` - I would recommend looking at the [rsync man page](https://download.samba.org/pub/rsync/rsync.html) if you wish to further customize your syncing options.

## update

`update.sh` performs the following tasks on Debian-based systems:

- Updates System Package List
- Upgrades installed packages to latest versions
- Upgrades openssh server

And does a standard `dnf` upgrade on Red Hat-based systems.

### Usage

update.sh can be run from the command line as follows:

```bash
./update.sh
```
