# dotfiles

## Install

* loadkeys fr-latin1
* ping archlinux.org
* timedatectl set-ntp true
* create partition with fdisk : 300M for boot 30G for root the rest for home (change type to 1 for boot to UEFI)
* mkfs.fat -F32 for boot and mkfs.ext4 for root and home
* mount /mnt on root fs and /mnt/home (mkdir) on home fs
* cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
* pacman -Sy pacman-mirrorlist
* rankmirrors -n 6 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist
* pacstrap /mnt base base-devel vim
* genfstab -U -p /mnt >> /mnt/etc/fstab
* arch-chroot /mnt

## Post-Install

* add KEYMAP=fr to /etc/vconsole.conf
* useradd -m -g wheel o2sh
* passwd o2sh
* vi /etc/sudoers (uncomment %wheel ALL=(ALL) NOPASSWD: ALL) visudo
* pacman -S cpupower
* systemctl enable cpupower.service
* pacman -S mesa-dri xf86-video-intel bumblebee nvidia
* gpasswd -a o2sh bumblebee
* systemctl start bumblebeed.service
* pacman -S xorg-server xorg-xinit
* pacman -S firefox

## Useful

* lscpu | grep Mhz
* fc-list | grep -i awesome
* fc-cache -f -v
* https://fontawesome.com/cheatsheet?from=io
* Server = https://mirror.thekinrar.fr/archlinux/$repo/os/$arch

## Debian

* wget https://github.com/o2sh/onefetch/archive/v2.9.1.tar.gz
* tar xzvf v2.9.0.tar.gz
* cd onefetch-2.9.0/ && rm -f Makefile
* cargo vendor debian/vendor
* cd debian && tar zcf vendor.tar.gz vendor && rm -Rf vendor && cd ..
* update changelog and files
* dpkg-buildpackage -S -us -uc
* cd ..
* debsign onefetch_2.9.0-1_source.changes
* dput -f ppa:o2sh/onefetch onefetch_2.9.0-1_source.changes

