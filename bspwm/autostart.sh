#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Find out your monitor name with xrandr or arandr (save and you get this line)
#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
xrandr --output Virtual1 --mode 1360x768 &
#xrandr --output DVI-D-0 --auto --output HDMI-0 --auto &
#autorandr horizontal

$HOME/.config/polybar/launch.sh &

#change your keyboard if you need it
#setxkbmap -layout be

keybLayout=$(setxkbmap -v | awk -F "+" '/symbols/ {print $2}')

run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

#Some ways to set your wallpaper besides variety or nitrogen
#feh --bg-fill /usr/share/backgrounds/arcolinux/arco-wallpaper.jpg &

#dex $HOME/.config/autostart/arcolinux-welcome-app.desktop
#xsetroot -cursor_name left_ptr &

conky -c $HOME/.config/bspwm/system-overview &
#run variety &
#run redshift-gtk &
#run nvidia-settings -l &
run nm-applet &
#run xfce4-power-manager &
numlockx on &
blueman-applet &
picom --config $HOME/.config/bspwm/picom.conf &
#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
run volumeicon &
#run nextcloud &
nitrogen --restore &
run thunar --daemon &
run xfce4-clipman &

