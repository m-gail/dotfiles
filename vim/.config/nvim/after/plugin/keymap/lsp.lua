local nmap = require('ihciM.keymap').nmap
local map = require('ihciM.keymap').map
local default_opts = require('ihciM.keymap').default_opts

nmap("K", require('lspsaga.hover').render_hover_doc)

nmap("gpd", function() require('lspsaga.definition'):preview_definition() end, "preview definition")
nmap("gd", ":lua vim.lsp.buf.definition()<CR>", "go to definition")
nmap("gD", ":lua vim.lsp.buf.declaration()<CR>", "go to declaration")
nmap("gI", ":lua vim.lsp.buf.implementation()<CR>", "go to implementation")
nmap("gr", ":lua vim.lsp.buf.references()<CR>", "show references")

map({ "i", "n" }, "<C-p>", require('lspsaga.signaturehelp').signature_help, default_opts, "show signature help")

nmap("<leader>sa", function() require('lspsaga.codeaction'):code_action() end, "code action")
nmap("<leader>sd", require('lspsaga.diagnostic').show_line_diagnostics, "show line diagnostics")
nmap("<leader>sf", ":lua vim.lsp.buf.format { async = true }<CR>", "format")
nmap("<leader>sr", ":LspRestart<CR>", "restart lsp")

nmap("[d", vim.diagnostic.goto_prev, "go to previous diagnostic")
nmap("]d", vim.diagnostic.goto_next, "go to next diagnostic")
