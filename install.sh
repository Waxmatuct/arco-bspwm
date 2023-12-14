#!/bin/bash

ln -s ~/Downloads/bspwm/alacritty ~/.config/alacritty
ln -s ~/Downloads/bspwm/bspwm ~/.config/bspwm
ln -s ~/Downloads/bspwm/polybar ~/.config/polybar

sudo apt update && sudo apt upgrade -y

### Install fonts
mkdir ~/Downloads/fonts && cd ~/Downloads/fonts
git clone https://github.com/supercomputra/SF-Mono-Font.git
git clone https://github.com/erikflowers/weather-icons.git
sudo cp -R SF-Mono-Font /usr/local/share/fonts/
git clone https://github.com/sahibjotsaggu/San-Francisco-Pro-Fonts.git
sudo cp -R San-Francisco-Pro-Fonts /usr/local/share/fonts/San-Francisco-Pro-Fonts/
sudo cp weather-icons/font/weathericons-regular-webfont.ttf /usr/local/share/fonts/
sudo apt install -y fonts-font-awesome
fc-cache -fv

### Install theme and wallpaper
sudo apt install -y arc-theme
sudo apt install -y nitrogen
sudo apt install -y zsh
sudo apt install -y bibata-cursor-theme
sudo apt install -y conky-all

### Install betterlockscreen
sudo apt install -y autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util0-dev libxcb-xrm-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev -y
cd ~/Downloads && git clone https://github.com/Raymo111/i3lock-color.git && cd i3lock-color
chmod +x install-i3lock-color.sh
./install-i3lock-color.sh
wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | sudo bash -s system

### Rofi
sudo apt install -y rofi
cd ~/Downloads && git clone --depth=1 https://github.com/adi1090x/rofi.git && cd rofi
chmod +x setup.sh
./setup.sh

### grub2-theme
cd ~/Downloads && git clone https://github.com/vinceliuice/grub2-themes.git && cd grub2-themes 
chmod +x install.sh
./install.sh -t stylish

### Colloid-gtk-theme
cd ~/Downloads && git clone https://github.com/vinceliuice/Colloid-gtk-theme.git && cd Colloid-gtk-theme
chmod +x install.sh
./install.sh --tweaks nord

### Colloid-icons
cd ~/Downloads && git clone https://github.com/vinceliuice/Colloid-icon-theme.git && cd Colloid-icon-theme
chmod +x install.sh
./install.sh -s nord

### Packages
sudo apt install -y gnome-disk-utility evince kodi kodi-pvr-iptvsimple kodi-inputstream-ffmpegdirect