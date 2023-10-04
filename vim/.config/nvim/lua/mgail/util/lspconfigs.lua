local configs = {
    lua_ls = {
        settings = {
            Lua = {
                diagnostics = {
                    globals = { 'vim', 'use' }
                },
                hint = {
                    enable = true,
                    arrayIndex = 'Disable'
                },
                workspace = {
                    -- Make the server aware of Neovim runtime files
                    library = {
                        [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                        [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
                    }
                }
            }
        }
    },
    pyright = {},
    rust_analyzer = {},
    kotlin_language_server = {},
    html = {},
    tsserver = {},
    cssls = {},
    jsonls = {},
    gopls = {},
    ansiblels = {},
    vimls = {},
    taplo = {},
    svelte = {},
    -- volar = {}
    vuels = {},
    bashls = {},
    -- nil_ls = {}
    clangd = {},
    zls = {
        settings = {
            enable_autofix = false
        }
    }
}

return configs
