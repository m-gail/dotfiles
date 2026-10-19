local gears = require("gears")

local apps_keys = require("keys.global.apps")
local awesome_keys = require("keys.global.awesome")
local layout_keys = require("keys.global.layout")
local screen_keys = require("keys.global.screen")
local tag_keys = require("keys.global.tag")
local media_keys = require("keys.global.media")
local client_keys = require("keys.global.client")
local keyboard_keys = require("keys.global.keyboard")

root.keys(gears.table.join(
    apps_keys,
    awesome_keys,
    layout_keys,
    screen_keys,
    tag_keys,
    media_keys,
    client_keys,
    keyboard_keys
))
