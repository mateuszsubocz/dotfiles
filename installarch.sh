#!/bin/bash

#install needed packages
sudo pacman -S --needed wofi firefox swaybg gammastep python-pywal pavucontrol waybar foot
yay waypaper

#copy files to .config
cd dotfiles
cp river ~/.config
cp wofi ~/.config
cp waybar ~/.config
cp waypaper ~/.config
cp installarch.sh ~/.config
cd .config

#The installing script making go brrrr
if [ -f installarch.sh ]; then
  chmod +x installarch.sh
  ./installarch.sh
fi

#remove the dotfiles
cd
rm -rf dotfiles
