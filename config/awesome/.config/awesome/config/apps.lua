local colors = require("config.colors")

return {
    terminal = "kitty",
    browser = "firefox",
    launcher = "rofi -show drun -theme rose-pine",
    lockscreen = "i3lock -c '" .. colors.surface .. "'",
    controlcenter = "eww open --toggle controlcenter",
    screenshot = {
        area = "flameshot gui",
        screen = "flameshot screen -n 1 -c"
    }
}
