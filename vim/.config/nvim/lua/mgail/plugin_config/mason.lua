require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = vim.tbl_keys(require('mgail.lspconfigs'))
})
