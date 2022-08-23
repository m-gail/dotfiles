local nmap = require('ihciM.keymap').nmap
local map = require('ihciM.keymap').map

nmap("K", require('lspsaga.hover').render_hover_doc)
map({ "i", "n" }, "<C-p>", require('lspsaga.signaturehelp').signature_help)
nmap("<leader>la", function() require('lspsaga.codeaction'):code_action() end)
nmap("<leader>ld", require('lspsaga.diagnostic').show_line_diagnostics)
nmap("<leader>lr", function() require('lspsaga.rename'):lsp_rename() end)
nmap("gpd", function() require('lspsaga.definition'):preview_definition() end)
