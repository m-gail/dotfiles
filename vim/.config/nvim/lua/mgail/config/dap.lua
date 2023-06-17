local dap = require('dap')

dap.configurations.java = {
    {
        type = 'java';
        request = 'attach';
        name = "Debug (Attach) - Remote";
        hostName = "127.0.0.1";
        port = 5005;
    },
}

local javascript = {{
    name = 'Debug with Firefox',
    type = 'firefox',
    request = 'launch',
    reAttach = true,
    url = 'http://localhost:8081',
    webRoot = '${workspaceFolder}',
    firefoxExecutable = '/usr/bin/firefox'
}}

dap.adapters.firefox = {
    type = 'executable',
    command = 'firefox-debug-adapter',
}

dap.configurations.javascript = javascript
dap.configurations.javascriptreact = javascript
dap.configurations.typescript = javascript
dap.configurations.typescriptreact = javascript


vim.fn.sign_define('DapBreakpoint', { text = '', texthl = "DapBreakpoint" })

require('dapui').setup({
    layouts = {
        {
            elements = {
                "scopes",
                "watches",
                "repl",
                "console",
            },
            size = 60,
            position = "right"
        }
    }
})

require('nvim-dap-virtual-text').setup()
