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

theme.wallpaper = "/usr/share/backgrounds/mountains_night.jpg"
theme.useless_gap = dpi(6)
theme.border_width = 3 
theme.border_normal = colors.primary
theme.border_focus = colors.accent
theme.font = "JetBrains Mono Nerd Font 16"
theme.wibar_height = dpi(48)
theme.taglist_font = "Font Awesome 6 Free Solid 18"
theme.taglist_spacing = dpi(16)
theme.taglist_fg_empty = colors.inactive
theme.taglist_fg_occupied = colors.inactive
theme.taglist_fg_focus = colors.text
theme.taglist_fg_urgent = colors.accent
theme.taglist_bg_empty = gears.color.transparent
theme.taglist_bg_occupied = gears.color.transparent
theme.taglist_bg_focus = gears.color.transparent
theme.taglist_bg_urgent = gears.color.transparent

-- Notifications
theme.notification_font = "JetBrains Mono Nerd Font 14"
theme.notification_bg = colors.primary
theme.notification_fg = colors.text
theme.notification_border_width = 2
theme.notification_border_color = colors.accent
theme.notification_max_width = dpi(500)
theme.notification_max_height = dpi(200)
theme.notification_icon_size = dpi(180)

-- Hotkeys
theme.hotkeys_bg = colors.primary .. 'CC'
theme.hotkeys_border_color = colors.accent
theme.hotkeys_font = "JetBrains Mono Nerd Font 12"
theme.hotkeys_description_font = "JetBrains Mono Nerd Font 12"
theme.hotkeys_group_margin = dpi(16)
theme.hotkeys_label_bg = colors.accent_dark_1
theme.hotkeys_label_fg = colors.text
theme.hotkeys_fg = colors.inactive
theme.hotkeys_modifiers_fg = colors.accent


return theme
