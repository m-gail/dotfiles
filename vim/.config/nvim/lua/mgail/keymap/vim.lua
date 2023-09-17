local default_opts = require('mgail.util.keymap').default_opts
local nmap = require('mgail.util.keymap').nmap
local map = require('mgail.util.keymap').map

-- General

nmap("ZW", ":wa<CR>")
nmap("H", "^")
nmap("<C-h>", "<C-w>h")
nmap("<C-j>", "<C-w>j")
nmap("<C-k>", "<C-w>k")
nmap("<C-l>", "<C-w>l")
nmap("<C-d>", "<C-d>zz")
nmap("<C-u>", "<C-u>zz")
map({"x", "n"}, "<leader>P", "\"+P", default_opts)
map({"x", "n"}, "<leader>p", "\"+p", default_opts)
map({"x", "n"}, "<leader>y", "\"+y", default_opts)
map({"x", "n"}, "<leader>Y", "\"+Y", default_opts)

vim.cmd.cnoreabbrev {
    "H",
    "vert",
    "bo",
    "h"
}
