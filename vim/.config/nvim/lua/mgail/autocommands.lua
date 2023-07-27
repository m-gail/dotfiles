local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })

vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank({ higroup = "Visual", timeout = 125 })
    end,
    group = highlight_group,
    pattern = '*',
})

-- https://github.com/nvim-treesitter/nvim-treesitter/issues/1337#issuecomment-1397639999
local folding_group = vim.api.nvim_create_augroup('FoldingFix', { clear = true })

vim.api.nvim_create_autocmd('BufEnter', {
    command = "normal zx",
    group = folding_group,
    pattern = '*',
})
