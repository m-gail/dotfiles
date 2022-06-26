vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.compatible = false
vim.opt.termguicolors = true
vim.opt.showmode = false
vim.g.mapleader = " "

vim.cmd("colorscheme iceberg")

require("plugins")
require("plugin_config.treesitter")
require("plugin_config.lsp")
require("keymap")
require("plugin_config.lualine")
require("plugin_config.alpha")
