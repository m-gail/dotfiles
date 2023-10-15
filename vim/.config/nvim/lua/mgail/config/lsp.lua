require("neodev").setup {}

-- Add additional capabilities supported by nvim-cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Setup Language Servers

local configs = require("mgail.util.lspconfigs")

local lspconfig = require('lspconfig')

for ls, value in pairs(configs) do
    value.capabilities = capabilities
    lspconfig[ls].setup(value)
end

-- Setup completion

local cmp = require('cmp')

local kind_icons = {
    Text = "󰉿",
    Method = "󰆧",
    Function = "󰊕",
    Constructor = "",
    Field = "󰜢",
    Variable = "󰀫",
    Class = "󰠱",
    Interface = "",
    Module = "",
    Property = "󰜢",
    Unit = "󰑭",
    Value = "󰎠",
    Enum = "",
    Keyword = "󰌋",
    Snippet = "",
    Color = "󰏘",
    File = "󰈙",
    Reference = "󰈇",
    Folder = "󰉋",
    EnumMember = "",
    Constant = "󰏿",
    Struct = "󰙅",
    Event = "",
    Operator = "󰆕",
    TypeParameter = "",
};

local function create_mapping(mapping)
    return {
        i = mapping,
        c = mapping
    }
end

local cmp_mappings = cmp.mapping.preset.insert({
    ['<C-b>'] = create_mapping(cmp.mapping.scroll_docs(-4)),
    ['<C-f>'] = create_mapping(cmp.mapping.scroll_docs(4)),
    ['<C-Space>'] = create_mapping(cmp.mapping.complete()),
    ['<C-e>'] = create_mapping(cmp.mapping.abort()),
    ['<A-l>'] = create_mapping(cmp.mapping.confirm({ select = true })),     -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
})

cmp.setup({
    performance = {
        debounce = 15,
        throttle = 15
    },
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    formatting = {
        format = function(_, vim_item)
            -- Kind icons
            vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
            return vim_item
        end
    },
    view = {
        entries = {
            selection_order = "near_cursor"
        }
    },
    completion = {
        completeopt = "menu,menuone,noselect"
    },
    mapping = cmp.mapping.preset.insert(cmp_mappings),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
        { name = 'path' },
    }, {
        { name = 'buffer' },
    }),
    experimental = {
        ghost_text = true
    }
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
        { name = 'buffer' },
    })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(cmp_mappings),
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(cmp_mappings),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

-- Signcolumn Icons
local icons = { Error = '', Warn = '', Hint = '', Info = '' }

for symbol, icon in pairs(icons) do
    local sign_name = "DiagnosticSign" .. symbol
    vim.fn.sign_define(sign_name, { text = icon, texthl = sign_name })
end

-- Diagnostics
vim.diagnostic.config {
    severity_sort = true,
    underline = function(ns_id, _)
        if ns_id == nil then
            return true
        end
        local namespace = vim.diagnostic.get_namespace(ns_id)
        -- Remove underlines for eslint warnings
        if namespace.name == "NULL_LS_SOURCE_7" then
            -- Can also use { min = ... }
            return { severity = { min = vim.diagnostic.severity.WARN } }
        end
        return true
    end,
    virtual_text = {
        format = require("concise_diagnostics").format
    }
}
