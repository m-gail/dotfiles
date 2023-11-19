local group = vim.api.nvim_create_augroup('MGail', { clear = true })

vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank({ higroup = "Visual", timeout = 125 })
    end,
    group = group,
    pattern = '*',
})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    group = group,
    pattern = "*",
    callback = function()
        local cursor = vim.fn.getpos(".")
        vim.cmd([[%s/\s\+$//e]])
        vim.fn.setpos(".", cursor)
    end
})

-- https://github.com/nvim-treesitter/nvim-treesitter/issues/1337#issuecomment-1397639999
vim.api.nvim_create_autocmd('BufEnter', {
    command = "normal zx",
    group = group,
    pattern = '*',
})

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        -- only works on nighly
        if client.server_capabilities.inlayHintProvider and vim.lsp.inlay_hint then
            vim.lsp.inlay_hint(0, true)
        end
    end
})
