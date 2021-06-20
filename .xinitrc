setxkbmap it
feh --bg-fill $HOME/.wallpaper
xrdb -merge $HOME/.Xresources

xset b off
bash .screenlayout/external.sh
# bash .screenlayout/single.sh

export _JAVA_AWT_WM_NONREPARENTING=1

# exec dwm
exec qtile

