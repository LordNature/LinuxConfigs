#!/usr/bin/env bash

printf "Nature's .files\n"

cd $HOME
uid = `id -u`
if [[ uid == 0 ]]; then
	echo "Woah! You forgot that you were root!"
	exit 1
fi

printf "Time to cook!\n"
printf "This won't install graphics btw.\n"
for i in {10..0}; do
	sleep 1
	prinf "We are cooking in $sec seconds..."
done
printf "\n"

dir = `pwd`
mkdir -p $HOME/temp

printf "All your passwords belong to us.\n"
sudo printf "You fool! Ha! I've got your password now.\n"

printf "Preperation: Let's fetch those updates!"
sudo xbps-install -Syu

printf "Ingredients: Time to add the applications..."
sudo xbps-install -y i3-gaps dmenu polybar firefox htop git automake autoconf make ffmpeg unzip unclutter feh compton R

printf "Spices: Install st terminal..."
sudo xbps-install -y gcc libXft-devel fontconfig-devel pkg-config
cd $HOME/temp
# To-do: Make own patch for Nord colors
git clone https://github.com/LukeSmithXYZ/st.git
cd st
make
sudo make install

printf "Spices: Install discord..."
sudo xbps-install xtools
git clone https://github.com/voidlinux/void-packages
cd void-packages
./xbps-src binary-bootstrap
./xbps-src pkg discord
sudo xi -y discord

printf "Decorations: Getting your favorite eye candy ready..."
sudo xbps-remove -y xorg-fonts
sudo xbps-install -y tewi-font google-fonts-ttf freefont-ttf
# Add arc-theme in future; don't care for it now as no gtk applications *shrug*

printf "Decorations: Symlinking the links of links O_O..."
ln -si $dir/.Xresources $HOME/.Xresources
ln -si $dir/.zshrc $HOME/.zshrc
ln -si $dir/i3 $HOME/.config/i3
ln -si $dir/.fehbg $HOME/.fehbg
ln -si $dir/bin $HOME/bin
# I'll probably randomize this at some point based on Months. aka every 30 days change
# Disabled for now because I change it a lot.
# ln -si $dir/wall.jpg $HOME/.config/wall.jpg

printf "Wrap it all together and make it clean..."
sudo xbps-remove -oy
rm -rf $HOME/temp
# To-do: Add texlive, atom, dmenu build with Nord colors

printf "Ding ding! It's complete!"
sleep 3
