#!/bin/sh

#begin install
echo "installing dependencies... (make sure yay is installed pls)"
#install pacman deps
sudo pacman -S feh dmenu i3status picom xss-lock ttf-terminus-nerd rofi xdg-desktop-portal-gtk
#install AUR deps
yay -S autotiling brillo i3lock-fancy-git i3lock-color-git
 
#move everything to the proper folders
echo "moving stuff around..."
cp config $HOME/.config/i3/config
sudo cp i3status.conf /etc/i3status.conf
cp a.sh $HOME/.screenlayout/a.sh
cp 1.png $HOME/1.png

#select rofi theme (gruvbox in this case)
echo "please select a theme for rofi (i recommend gruvbox-dark-hard)"
rofi-theme-selector

#install my st fork
cd st/
sudo make install

#done
echo "DONE!"
