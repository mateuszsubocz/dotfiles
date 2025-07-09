#!/bin/bash

#install needed packages
sudo pacman -S --needed wofi firefox swaybg gammastep python-pywal pavucontrol waybar foot
yay waypaper

#copy files to .config
cd dotfiles
cp -rf river ~/.config
cp -rf wofi ~/.config
cp -rf waybar ~/.config
cp -rf waypaper ~/.config
cp installarch.sh ~/.config
cd .config
cd river 
chmod +x init
cd ..

#remove the dotfiles
cd
rm -rf dotfiles
