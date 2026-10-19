picom &
emacs --daemon &
xsetroot -cursor_name left_ptr &
setxkbmap us -variant altgr-intl -option caps:escape
[ -z  "$(pgrep nm-applet)" ] && nm-applet &
[ -z  "$(pgrep blueman-applet)" ] && blueman-applet &
[ -z  "$(pgrep nextcloud)" ] && nextcloud --background &
[ -z  "$(pgrep light-locker)" ] && light-locker &
$HOME/.config/polybar/launch.sh &
feh --bg-fill $HOME/Pictures/Wallpapers/pexels-creative-free-stock-971360.jpg
