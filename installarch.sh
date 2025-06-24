#!/bin/bash

#install needed packages
sudo pacman -S --needed wofi firefox waypaper swaybg gammastep python-pywal pavucontrol waybar foot

#The installing script making go brrrr
if [ -f installarch.sh ]; then
  chmod +x installarch.sh
  ./installarch.sh
fi

#copy files to .config
cp -rf * .[!.]* ~/.config/

#remove the dotfiles
rm -rf dotfiles
