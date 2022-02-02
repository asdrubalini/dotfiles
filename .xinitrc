setxkbmap it
feh --bg-fill $HOME/.wallpaper
xrdb -merge $HOME/.Xresources

# xset b off
# bash .screenlayout/external.sh
# bash .screenlayout/single.sh

export _JAVA_AWT_WM_NONREPARENTING=1
picom &
# slstatus &
# dunst &

# export KDEWM=/usr/bin/i3
# export DESKTOP_SESSION=plasma
# exec startplasma-x11
exec dwm

