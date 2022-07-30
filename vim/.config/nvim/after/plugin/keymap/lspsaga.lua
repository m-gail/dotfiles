local nmap = require('keymap').nmap
local map = require('keymap').map

nmap("K", require('lspsaga.hover').render_hover_doc)
map({ "i", "n" }, "<C-p>", require('lspsaga.signaturehelp').signature_help)
nmap("<leader>la", require('lspsaga.codeaction').code_action)
nmap("<leader>ld", require('lspsaga.diagnostic').show_line_diagnostics)
nmap("gpd", require('lspsaga.definition').preview_definition)
