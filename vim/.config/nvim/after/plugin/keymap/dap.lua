local nmap = require("ihciM.keymap").nmap

nmap("<leader>dc", require('dap').continue)
nmap("<leader>dn", require('dap').step_over)
nmap("<leader>di", require('dap').step_into)
nmap("<leader>do", require('dap').step_out)
nmap("<leader>db", require('dap').toggle_breakpoint)
nmap("<leader>dr", require('dap').repl.open)
