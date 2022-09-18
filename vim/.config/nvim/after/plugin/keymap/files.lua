local nmap = require('ihciM.keymap').nmap

nmap("<leader>ff", ":Telescope find_files<CR>")
nmap("<leader>fs", function() require("telescope.builtin").lsp_dynamic_workspace_symbols { symbols = {"interface", "class", "constructor", "function", "method"}} end)
nmap("<leader>fg", ":Telescope live_grep<CR>")
nmap("<leader>fb", ":Telescope file_browser<CR>")
nmap("<leader>fB", function() require("telescope").extensions.file_browser.file_browser({ path = "%:p:h" }) end)
