#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi


xbindkeys
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
sh ~/.fehbg &
conky | while read -r; do xsetroot -name "$REPLY"; done &
# this allows dwm to restart without closing the windows
source ~/scripts/startdwm
