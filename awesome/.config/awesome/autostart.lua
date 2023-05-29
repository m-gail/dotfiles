local awful = require("awful")

awful.spawn.with_shell("picom")
awful.spawn.with_shell('[ -z  "$(pgrep nm-applet)" ] && nm-applet')
awful.spawn.with_shell('[ -z  "$(pgrep blueman-applet)" ] && blueman-applet')
awful.spawn.with_shell('[ -z  "$(pgrep nextcloud)" ] && nextcloud --background')
awful.spawn.with_shell("setxkbmap -option caps:escape")
awful.spawn.with_shell('light-locker')

