# dotfiles

## Install

* loadkeys fr-latin1
* ping archlinux.org
* timedatectl set-ntp true
* cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
* pacman -S pacman-mirrorlist
* rankmirrors -n 6 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist


## Post-Install

* useradd -m -g wheel o2sh
* passwd o2sh
* vi /etc/sudoers (uncomment %wheel ALL=(ALL) NOPASSWD: ALL)
* pacman -S cpupower
* systemctl enable cpupower.service
* pacman -S mesa-dri xf86-video-intel bumblebee nvidia
* gpasswd -a o2sh bumblebee
* systemctl start bumblebeed.service
* pacman -S xorg-server xorg-xinit
* pacman -S firefox
