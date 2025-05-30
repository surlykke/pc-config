#!/usr/bin/bash
[[ "root" == "$(whoami)" ]] && { echo This script should not be run as root but as thy self; exit 1; }


echo "Installing apt packages"
APT_PACKAGES="\
 alacritty apt-file autorandr blueman curl feh fish flameshot git golang gopls gtklock htop i3 lua5.4 luarocks\
 openfortivpn openjdk-17-jdk openjdk-17-source openssh-server pasystray pavucontrol playerctl ripgrep\
 rxvt-unicode sway swaylock swayidle unclutter xclip xdg-desktop-portal xdg-desktop-portal-wlr xscreensaver\
 lxpolkit lxappearance \
 bridge-utils cpu-checker libvirt-clients libvirt-daemon libvirt-daemon-system virtinst virt-manager qemu-system qemu-kvm\
 firewall-config firewalld clamav-freshclam clamav-daemon unattended-upgrades net-tools
"


sudo apt-get -y update
sudo apt-get -y upgrade 
sudo apt-get -y install $APT_PACKAGES


echo "Installing snap packages"
sudo snap install nvim --classic
sudo snap install code --classic
sudo snap install slack
sudo snap install lazygit-gm

cd $(dirname $0)

sudo ./etcConfig.sh

./homeConfig.sh

