local nmap = require('mgail.util.keymap').nmap

nmap("<leader>ff", ":Telescope find_files<CR>")
nmap("<leader>fs", function() require("telescope.builtin").lsp_dynamic_workspace_symbols { symbols = {"interface", "class", "constructor", "function", "method"}} end)
nmap("<leader>fg", ":Telescope live_grep<CR>")
nmap("<leader>fb", ":Telescope file_browser<CR>")
nmap("<leader>fB", function() require("telescope").extensions.file_browser.file_browser({ path = "%:p:h" }) end)
nmap("<leader>b", function() require('telescope.builtin').buffers({ sort_mru = true }) end)
