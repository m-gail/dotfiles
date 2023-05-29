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
        function() awful.spawn(apps.browser) end,
        {
            description = "open a browser",
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
        { modkey }, "q",
        function() awful.spawn(apps.lockscreen) end,
        {
            description = "lock the screen",
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
        { modkey }, "p",
        function() awful.spawn.with_shell(apps.colorpicker) end,
        {
            description = "show a color picker",
            group = "launcher"
        }
    )
)
