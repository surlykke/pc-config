#!/usr/bin/bash
[[ "root" == "$(whoami)" ]] && { echo This script should not be run as root but as thy self; exit 1; }


echo "Installing apt packages"
APT_PACKAGES="\
 apt-file autorandr blueman curl feh fish flameshot git golang gopls htop i3\
 openfortivpn openjdk-17-jdk openjdk-17-source openssh-server pasystray pavucontrol playerctl\
 rxvt-unicode thefuck unclutter xclip xscreensaver\
"


sudo apt-get -y update
sudo apt-get -y upgrade 
sudo apt-get -y install $APT_PACKAGES


echo "Installing snap packages"

SNAP_PACKAGES="nvim brave"

for snappackage in $SNAP_PACKAGES; do 
	sudo snap install $snappackage
done

cd $(dirname $0)

echo "Copying files under $HOME"

# Set up for envsubst
export MONITOR=$(xrandr | grep 'connected primary' | cut -d ' ' -f 1)
SHELL_FORMAT='$USER $MONITOR'

for dir in $(find home -type d -printf "%P\n"); do 
	mkdir -p ${HOME}/$dir
done

for file in $(find home -type f -printf "%P\n"); do 
	cat $(pwd)/home/$file | envsubst "'$SHELL_FORMAT'" > $HOME/$file
done


echo "Copying files under /etc"

for etcdir in $(find etc -type d -printf "%P\n"); do 
	sudo mkdir -p /etc/$etcdir 
done

for file in $(find etc -type f -printf "%P\n"); do 
	sudo cp $(pwd)/etc/${file} /etc/${file}
done



