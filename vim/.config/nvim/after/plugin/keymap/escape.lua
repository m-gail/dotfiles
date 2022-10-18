local map = require("ihciM.keymap").map

map({"n", "v"}, "<leader>ee", require('escape').escape)
map({"n", "v"}, "<leader>eu", require('escape').encode_uri_component)
