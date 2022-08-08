local table_keys = require('ihciM.util').table_keys

require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = table_keys(require('ihciM.lspconfigs'))
})
