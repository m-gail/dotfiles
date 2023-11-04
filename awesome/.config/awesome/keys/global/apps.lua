local awful = require("awful")
local gears = require("gears")
local apps = require("config.apps")

return gears.table.join(
    awful.key(
        { modkey }, "Return",
        function() awful.spawn(apps.terminal) end,
        {
            description = "open a terminal",
            group = "launcher"
        }
    ),

    awful.key(
        { modkey }, "b",
        function() awful.spawn.with_shell(apps.browser) end,
        {
            description = "open or focus a browser",
            group = "launcher"
        }
    ),

    awful.key(
        { modkey }, "a",
        function() awful.spawn.with_shell(apps.screenshot.area) end,
        {
            description = "make an area screenshot",
            group = "launcher"
        }
    ),

    awful.key(
        { modkey }, "s",
        function() awful.spawn.with_shell(apps.screenshot.screen) end,
        {
            description = "make a screenshot of the current monitor",
            group = "launcher"
        }
    ),

    awful.key(
        { modkey, "Shift" }, "q",
        function() awful.spawn.with_shell(apps.lockscreen) end,
        {
            description = "lock the screen" .. apps.lockscreen,
            group = "launcher"
        }
    ),

    awful.key(
        { modkey }, "r",
        function() awful.spawn.with_shell(apps.launcher) end,
        {
            description = "run prompt",
            group = "launcher"
        }
    ),

    awful.key(
        { modkey }, "i",
        function() awful.spawn.with_shell(apps.controlcenter) end,
        {
            description = "toggle controlcenter",
            group = "launcher"
        }
    )
)
