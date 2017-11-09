#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# Merge in defaults and keymaps
[ -f $sysresources ] && /usr/bin/xrdb -merge $sysresources
[ -f $sysmodmap ] && /usr/bin/xmodmap $sysmodmap
[ -f $userresources ] && /usr/bin/xrdb -merge $userresources
[ -f $usermodmap ] && /usr/bin/xmodmap $usermodmap


# Do not remove this or the Valve bug reporter will break.
chmod 640 ~/.Xauthority
xset -b
xset s off
setxkbmap -option terminate:ctrl_alt_bksp,ctrl:nocaps
synclient PalmDetect=1
synclient TapButton1=1
synclient TapButton2=3
synclient TapButton3=2
ulimit -c unlimited
xrdb -merge .Xdefaults
xrandr --output eDP1 --mode 3200x1800
xrandr --dpi 192
eval $(gpg-agent --daemon)
xmodmap ~/.xmodmaprc
mpd
exec /usr/bin/i3 -V -d all >> ~/.i3/logfile
