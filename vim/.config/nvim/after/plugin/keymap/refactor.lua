local nmap = require('ihciM.keymap').nmap

nmap("<leader>rn", function() require('lspsaga.rename'):lsp_rename() end)
