local colors = require("config.colors")

return {
    terminal = "kitty",
    dev_terminal = "wmctrl -xa kitty-dev || kitty --class=kitty-dev",
    browser = "wmctrl -xa firefox || firefox",
    launcher = "rofi -show drun -theme rose-pine",
    lockscreen = "i3lock -c '" .. colors.surface .. "'",
    screenshot = {
        area = "flameshot gui",
        screen = "flameshot screen -n 1 -c"
    }
}
