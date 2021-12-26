return {
  terminal = "alacritty",
  browser = "firefox",
  launcher = "rofi -show combi",
  lockscreen = "light-locker-command -l",
  colorpicker = "xcolor -S 3 -P 80 | tr -d '\\n' | xclip -selection c",
  screenshot = {
    area = "flameshot gui",
    screen = "flameshot screen -c"
  }
}
