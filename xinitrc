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


xbindkeys   # bind shortcuts
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources   # config for terminal
sh ~/.fehbg &   # set background with feh
conky | while read -r; do xsetroot -name "$REPLY"; done &   # run conky
# this allows dwm to restart without closing the windows
source ~/scripts/startdwm
