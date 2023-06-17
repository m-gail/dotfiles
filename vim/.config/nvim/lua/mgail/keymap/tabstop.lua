local nmap = require("mgail.util.keymap").nmap
local updateTabStop = require("mgail.util.tabstop").updateTabStop


nmap("<leader>t2", function () updateTabStop(2) end)
nmap("<leader>t4", function () updateTabStop(4) end)
