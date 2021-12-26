pcall(require, "luarocks.loader")
require("awful.autofocus")

local beautiful = require("beautiful")
beautiful.init(require("ui.theme"))

modkey = "Mod4"
require("keys")

require("layouts")
require("tags")
require("ui")
require("rules")

require("autostart")