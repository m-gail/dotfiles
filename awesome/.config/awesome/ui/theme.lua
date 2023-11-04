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

theme.wallpaper = "~/Pictures/Wallpapers/pexels-creative-free-stock-971360.jpg"
theme.useless_gap = dpi(6)
theme.border_width = dpi(2)
theme.border_normal = colors.muted
theme.border_focus = colors.cyan
theme.font = "JetBrains Mono Nerd Font 14"
theme.wibar_height = dpi(40)
theme.taglist_font = "JetBrains Mono Nerd Font 14"
theme.taglist_spacing = dpi(8)
theme.taglist_fg_empty = colors.text
theme.taglist_fg_occupied = colors.text
theme.taglist_fg_focus = colors.purple
theme.taglist_fg_urgent = colors.yellow
theme.taglist_bg_empty = gears.color.transparent
theme.taglist_bg_occupied = gears.color.transparent
theme.taglist_bg_focus = gears.color.transparent
theme.taglist_bg_urgent = gears.color.transparent
theme.bg_systray = colors.surface
theme.systray_icon_spacing = dpi(8)
theme.module_outer_margin = dpi(6)
theme.module_inner_margin = dpi(12)

-- Hotkeys
theme.hotkeys_bg = colors.base
theme.hotkeys_border_color = colors.cyan
theme.hotkeys_font = "JetBrains Mono Nerd Font 12"
theme.hotkeys_description_font = "JetBrains Mono Nerd Font 12"
theme.hotkeys_group_margin = dpi(16)
theme.hotkeys_label_bg = colors.blue
theme.hotkeys_label_fg = colors.text
theme.hotkeys_fg = colors.text
theme.hotkeys_modifiers_fg = colors.purple

theme.titlebar_size = dpi(32)
theme.titlebar_font = "JetBrains Mono Nerd Font 12"
theme.titlebar_bg = colors.surface
theme.titlebar_fg = colors.yellow

return theme
