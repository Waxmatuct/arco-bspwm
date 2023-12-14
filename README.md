# arco-bspwm

### 1. Install bspwm

```
cd ~/Downloads
git clone https://github.com/Waxmatuct/arco-bspwm.git ./bspwm
git checkout debian12
```

### 2. Install fonts

```
mkdir ~/Downloads/fonts && cd ~/Downloads/fonts
git clone https://github.com/supercomputra/SF-Mono-Font.git
git clone https://github.com/erikflowers/weather-icons.git
sudo cp -R SF-Mono-Font /usr/local/share/fonts/
git clone https://github.com/sahibjotsaggu/San-Francisco-Pro-Fonts.git
sudo cp -R San-Francisco-Pro-Fonts /usr/local/share/fonts/San-Francisco-Pro-Fonts/
sudo cp weather-icons/font/weathericons-regular-webfont.ttf /usr/local/share/fonts/
sudo apt install fonts-noto -y
sudo apt install fonts-font-awesome -y
fc-cache -fv
```

### 3. Install themes and wallpapers

```
cd ~/Pictures && git clone https://github.com/linuxdotexe/nordic-wallpapers
sudo apt install arc-theme -y
sudo apt install nitrogen -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 4. Install betterlockscreen

```
sudo apt install autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util0-dev libxcb-xrm-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev -y
cd ~/Downloads && git clone https://github.com/Raymo111/i3lock-color.git && cd i3lock-color
./install-i3lock-color.sh
wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | sudo bash -s system
betterlockscreen -u "path/to/dir"
```

### 5. Rofi

```
sudo apt install rofi -y
cd ~/Downloads && git clone --depth=1 https://github.com/adi1090x/rofi.git && cd rofi
chmod +x setup.sh
./setup.sh
micro ~/.config/rofi/launchers/type-5/launcher.sh
```
