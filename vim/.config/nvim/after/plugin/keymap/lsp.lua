local nmap = require('ihciM.keymap').nmap
local map = require('ihciM.keymap').map

nmap("K", require('lspsaga.hover').render_hover_doc)

nmap("gpd", function() require('lspsaga.definition'):preview_definition() end)
nmap("gd", ":lua vim.lsp.buf.definition()<CR>")
nmap("gD", ":lua vim.lsp.buf.declaration()<CR>")
nmap("gI", ":lua vim.lsp.buf.implementation()<CR>")
nmap("gr", ":lua vim.lsp.buf.references()<CR>")

map({ "i", "n" }, "<C-p>", require('lspsaga.signaturehelp').signature_help)

nmap("<leader>sa", function() require('lspsaga.codeaction'):code_action() end)
nmap("<leader>sd", require('lspsaga.diagnostic').show_line_diagnostics)
nmap("<leader>sf", ":lua vim.lsp.buf.format { async = true }<CR>")
nmap("<leader>sr", ":LspRestart<CR>")

nmap("[d", vim.diagnostic.goto_prev)
nmap("]d", vim.diagnostic.goto_prev)
