local nmap = require('mgail.keymap').nmap
local map = require('mgail.keymap').map
local default_opts = require('mgail.keymap').default_opts

nmap("K", function() require('lspsaga.hover'):render_hover_doc() end)

nmap("gpd", function() require('lspsaga.definition'):peek_definition(1) end, "preview definition")
nmap("gd", ":lua vim.lsp.buf.definition()<CR>", "go to definition")
nmap("gD", ":lua vim.lsp.buf.declaration()<CR>", "go to declaration")
nmap("gI", ":lua vim.lsp.buf.implementation()<CR>", "go to implementation")
nmap("gr", ":lua vim.lsp.buf.references()<CR>", "show references")

nmap("<leader>sa", function() require('lspsaga.codeaction'):code_action() end, "code action")
nmap("<leader>sd", function() require('lspsaga.showdiag'):show_diagnostics({line = true}) end, "show line diagnostics")
nmap("<leader>sf", ":lua vim.lsp.buf.format { async = true }<CR>", "format")
nmap("<leader>sr", ":LspRestart<CR>", "restart lsp")

nmap("[d", vim.diagnostic.goto_prev, "go to previous diagnostic")
nmap("]d", vim.diagnostic.goto_next, "go to next diagnostic")
