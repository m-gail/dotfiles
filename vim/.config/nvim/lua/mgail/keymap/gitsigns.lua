local nmap = require('mgail.util.keymap').nmap
local map = require('mgail.util.keymap').map
local default_opts = require('mgail.util.keymap').default_opts
local gitsigns = require("gitsigns")

map({"n", "v"}, "<leader>gr", gitsigns.reset_hunk, default_opts, "reset hunk")
nmap("<leader>gR", gitsigns.reset_buffer, "reset buffer")
nmap("<leader>gp", gitsigns.preview_hunk, "preview hunk")
nmap("<leader>gb", function() gitsigns.blame_line({ full = true }) end, "blame line")
nmap("<leader>gN", function() gitsigns.prev_hunk() end, "previous hunk")
nmap("<leader>gn", function() gitsigns.next_hunk() end, "next hunk")

-- Text object
map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>', default_opts, "git hunk")
