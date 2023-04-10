local nmap = require('mgail.keymap').nmap

nmap("<leader>ha", require('harpoon.mark').add_file, "Add Harpoon mark")
nmap("<leader>hd", require('harpoon.mark').rm_file, "Remove harpoon mark")
nmap("<leader>hc", require('harpoon.mark').clear_all, "Clear harpoon marks")
nmap("<leader>H", require('harpoon.ui').toggle_quick_menu, "Harpoon menu")

nmap("<leader>j", function () require('harpoon.ui').nav_file(1) end, "Harpoon 1")
nmap("<leader>k", function () require('harpoon.ui').nav_file(2) end, "Harpoon 2")
nmap("<leader>l", function () require('harpoon.ui').nav_file(3) end, "Harpoon 3")
nmap("<leader>;", function () require('harpoon.ui').nav_file(4) end, "Harpoon 4")
nmap("<leader>J", function () require('harpoon.ui').nav_file(5) end, "Harpoon 5")
nmap("<leader>K", function () require('harpoon.ui').nav_file(6) end, "Harpoon 6")
nmap("<leader>L", function () require('harpoon.ui').nav_file(7) end, "Harpoon 7")
nmap("<leader>:", function () require('harpoon.ui').nav_file(8) end, "Harpoon 8")
