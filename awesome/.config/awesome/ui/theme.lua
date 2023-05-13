local xresources = require("beautiful.xresources")
local filesystem = require("gears.filesystem")
local gears = require("gears")
local dpi = xresources.apply_dpi
local colors = require("config.colors")
local theme_dir = filesystem.get_themes_dir()
local gtable = require("gears.table")
local dofile = dofile
local protected_call = require("gears.protected_call")

local default_theme = protected_call(dofile, theme_dir .. "default/theme.lua")
local theme = {}

gtable.crush(theme, default_theme)

theme.wallpaper = "/usr/share/backgrounds/pexels-valdemaras-d-11042734.jpg"
theme.useless_gap = dpi(6)
theme.border_width = 3
theme.border_normal = colors.background_alt_2
theme.border_focus = colors.green
theme.font = "JetBrains Mono Nerd Font 14"
theme.wibar_height = dpi(36)
theme.taglist_font = "Font Awesome 6 Free Solid 14"
theme.taglist_spacing = dpi(8)
theme.taglist_fg_empty = colors.forgeround
theme.taglist_fg_occupied = colors.forgeround
theme.taglist_fg_focus = colors.green
theme.taglist_fg_urgent = colors.yellow
theme.taglist_bg_empty = gears.color.transparent
theme.taglist_bg_occupied = gears.color.transparent
theme.taglist_bg_focus = gears.color.transparent
theme.taglist_bg_urgent = gears.color.transparent
theme.bg_systray = colors.background
theme.systray_icon_spacing = dpi(8)

-- Notifications
theme.notification_font = "JetBrains Mono Nerd Font 14"
theme.notification_bg = colors.background
theme.notification_fg = colors.forgeround
theme.notification_border_width = 2
theme.notification_border_color = colors.green
theme.notification_max_width = dpi(500)
theme.notification_max_height = dpi(200)
theme.notification_icon_size = dpi(180)

-- Hotkeys
theme.hotkeys_bg = colors.background
theme.hotkeys_border_color = colors.green
theme.hotkeys_font = "JetBrains Mono Nerd Font 12"
theme.hotkeys_description_font = "JetBrains Mono Nerd Font 12"
theme.hotkeys_group_margin = dpi(16)
theme.hotkeys_label_bg = colors.cyan
theme.hotkeys_label_fg = colors.forgeround
theme.hotkeys_fg = colors.forgeround
theme.hotkeys_modifiers_fg = colors.green

return theme
