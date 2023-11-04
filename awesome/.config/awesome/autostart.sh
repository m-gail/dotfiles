autorandr --load default
picom &
emacs --daemon &
xsetroot -cursor_name left_ptr &
setxkbmap us -variant altgr-intl -option caps:escape
[ -z  "$(pgrep nm-applet)" ] && nm-applet &
[ -z  "$(pgrep blueman-applet)" ] && blueman-applet &
[ -z  "$(pgrep nextcloud)" ] && nextcloud --background &
killall sxhkd
~/.config/sxhkd/sequences/generate.py ~/.config/sxhkd/sequences/bindings "super + space" > ~/.config/sxhkd/sequences/sxhkdrc
~/.config/sxhkd/sequences/generate.py ~/.config/sxhkd/sequences/bindings.local "super + space" >> ~/.config/sxhkd/sequences/sxhkdrc
sxhkd -c ~/.config/sxhkd/sequences/sxhkdrc
