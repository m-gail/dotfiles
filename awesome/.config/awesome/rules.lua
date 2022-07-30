local awful = require("awful")
local beautiful = require("beautiful")

local clientkeys = require("keys.client.keys")
local clientbuttons = require("keys.client.buttons")

awful.rules.rules = {
    { rule = {},
        properties = { border_width = beautiful.border_width,
            border_color = beautiful.border_normal,
            focus = awful.client.focus.filter,
            raise = true,
            keys = clientkeys,
            buttons = clientbuttons,
            screen = awful.screen.preferred,
            placement = awful.placement.no_overlap + awful.placement.no_offscreen,
            titlebars_enabled = false
        }
    },

    -- Floating clients.
    { rule_any = {
        instance = {
            "DTA", -- Firefox addon DownThemAll.
            "copyq", -- Includes session name in class.
            "pinentry",
        },
        class = {
            "Arandr",
            "Blueman-manager",
            "Gpick",
            "Kruler",
            "MessageWin", -- kalarm.
            "Sxiv",
            "Tor Browser", -- Needs a fixed window size to avoid fingerprinting by screen size.
            "Wpa_gui",
            "veromix",
            "xtightvncviewer" },

        -- Note that the name property shown in xprop might be set slightly after creation of the client
        -- and the name shown there might not match defined rules here.
        name = {
            "Event Tester", -- xev.
        },
        role = {
            "AlarmWindow", -- Thunderbird's calendar.
            "ConfigManager", -- Thunderbird's about:config.
            "pop-up", -- e.g. Google Chrome's (detached) Developer Tools.
        }
    }, properties = { floating = true } },

    -- Tag mappings
    { rule = { class = "firefox" },
        properties = { tag = "" } },

    { rule = { class = "discord" },
        properties = { tag = "", screen = 2 } },

    { rule = { class = "Virt-manager" },
        except = { name = "Virtual Machine Manager" },
        properties = { tag = "", screen = 1 } },

    { rule = { class = "Virt-manager", name = "Virtual Machine Manager" },
        properties = { tag = "", screen = 2 } },

    { rule = { class = "Thunar" },
        properties = { tag = "" } },

    { rule = { class = "Spotify" },
        properties = { tag = "", screen = 2 } },
}
