local nmap = require("mgail.util.keymap").nmap

nmap("<leader>dc", require('dap').continue, "continue")
nmap("<leader>dn", require('dap').step_over, "step over")
nmap("<leader>di", require('dap').step_into, "step into")
nmap("<leader>do", require('dap').step_out, "step out")
nmap("<leader>db", require('dap').toggle_breakpoint, "toggle breakpoint")
nmap("<leader>dr", require('dap').repl.open, "dap repl")
nmap("<leader>du", require('dapui').toggle, "dap ui")
