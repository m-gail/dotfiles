local group = vim.api.nvim_create_augroup('MGail', { clear = true })

vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank({ higroup = "Visual", timeout = 125 })
    end,
    group = group,
    pattern = '*',
})
