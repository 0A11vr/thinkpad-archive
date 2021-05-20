#!/bin/sh
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

[ -f ~/.Xmodmap ] && xmodmap ~/.Xmodmap

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xsetroot -cursor_name left_ptr &

xrandr --output eDP-1 --mode 1920x1080 --dpi 120 &


# disable touchpad
xinput disable 12 &

# turn off beep
xset b off &

# setbg
#hsetroot -solid "#303030" &
hsetroot -center /home/m/Pictures/Wallpaper.png &
#sxhkd -c ~/.config/2bwm/2bwmrc &
exec 2bwm
