local nmap = require('ihciM.keymap').nmap
local map = require('ihciM.keymap').map
local default_opts = require('ihciM.keymap').default_opts
local gitsigns = require("gitsigns")

map({"n", "v"}, "<leader>gr", gitsigns.reset_hunk, default_opts)
nmap("<leader>gR", gitsigns.reset_buffer)
nmap("<leader>gp", gitsigns.preview_hunk)
nmap("<leader>gb", function() gitsigns.blame_line({ full = true }) end)

-- Text object
map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>', default_opts)
