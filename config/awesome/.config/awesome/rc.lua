pcall(require, "luarocks.loader")
require("awful.autofocus")

local beautiful = require("beautiful")
beautiful.init(require("ui.theme"))

local apps = require("config.apps")
modkey = "Mod4"
terminal = apps.terminal
require("keys")

require("layouts")
require("tags")
require("ui")
require("rules")

require("autostart")

pcall(require, "localconfig")
