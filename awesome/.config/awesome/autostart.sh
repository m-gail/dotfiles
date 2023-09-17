autorandr --load default &
picom &
emacs --daemon &
xsetroot -cursor_name left_ptr &
setxkbmap us -variant altgr-intl -option caps:escape
[ -z  "$(pgrep nm-applet)" ] && nm-applet &
[ -z  "$(pgrep blueman-applet)" ] && blueman-applet &
[ -z  "$(pgrep nextcloud)" ] && nextcloud --background &
killall sxhkd
sxhkd -c ~/.config/sxhkd/sequences/sxhkdrc
