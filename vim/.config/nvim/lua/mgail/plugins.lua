local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "williamboman/mason.nvim",
        dependencies = { "williamboman/mason-lspconfig.nvim" },
        init = function() require("mgail.config.mason") end
    },

    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make"
            },
            "nvim-telescope/telescope-file-browser.nvim",
            "nvim-telescope/telescope-ui-select.nvim",
        },
        init = function()
            require("mgail.config.telescope")
            require("mgail.keymap.telescope")
        end
    },
    {
        "ThePrimeagen/harpoon",
        dependencies = { "nvim-lua/plenary.nvim" },
        init = function()
            require("mgail.keymap.harpoon")
        end
    },
    {
        'phaazon/hop.nvim',
        branch = 'v1',
        init = function()
            require('hop').setup()
            require("mgail.keymap.hop")
        end
    },

    -- Themes
    {
        "rose-pine/neovim",
        priority = 1000,
        name = "rose-pine",
        init = function()
            require("mgail.config.rosepine")
            vim.cmd("colorscheme rose-pine")
        end
    },
    "m-gail/northernlights.vim",

    -- Git
    {
        "NeogitOrg/neogit",
        dependencies = 'nvim-lua/plenary.nvim',
        init = function()
            require("mgail.config.neogit")
            require("mgail.keymap.neogit")
        end
    },
    {
        "sindrets/diffview.nvim",
        init = function()
            require("mgail.config.diffview")
            require("mgail.keymap.diffview")
        end
    },
    {
        "lewis6991/gitsigns.nvim",
        init = function()
            require("gitsigns").setup()
            require("mgail.keymap.gitsigns")
        end
    },

    -- LSP
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "mfussenegger/nvim-jdtls",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/nvim-cmp",
            {
                "L3MON4D3/LuaSnip",
                version = "2.*",
                dependencies = { "rafamadriz/friendly-snippets" }
            },
            "saadparwaiz1/cmp_luasnip",
            { "folke/neodev.nvim", opts = {} },
        },
        init = function()
            require("mgail.config.lsp")
            require("mgail.config.luasnip")
            require("mgail.keymap.lsp")
            require("mgail.keymap.luasnip")
        end
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        init = function()
            require("mgail.config.null_ls")
        end
    },
    {
        "numToStr/Comment.nvim",
        init = function()
            require("Comment").setup {
                pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
            }
        end
    },
    {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-treesitter/nvim-treesitter" }
        },
        init = function()
            require("telescope").load_extension("refactoring")
            require("refactoring").setup {}
            require("mgail.keymap.refactoring")
        end
    },
    {
        "m-gail/diagnostic_manipulation.nvim",
        init = function()
            require("mgail.config.diagnostic_manipulation")
        end
    },
    "m-gail/concise_diagnostics.nvim",

    -- Debugging
    {
        'mfussenegger/nvim-dap',
        dependencies = {
            "rcarriga/nvim-dap-ui",
            'theHamsta/nvim-dap-virtual-text',
        },
        init = function()
            require("mgail.config.dap")
            require("mgail.keymap.dap")
        end
    },

    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        init = function()
            require("mgail.config.treesitter")
        end
    },
    "nvim-treesitter/playground",
    {
        "nvim-treesitter/nvim-treesitter-context",
        init = function()
            require("mgail.config.treesitter_context")
        end
    },
    "nvim-treesitter/nvim-treesitter-textobjects",
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },
    "windwp/nvim-ts-autotag",
    "JoosepAlviste/nvim-ts-context-commentstring",

    -- UI
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "kyazdani42/nvim-web-devicons" },
        init = function()
            require("mgail.config.lualine")
        end
    },
    {
        "folke/noice.nvim",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify"
        },
        init = function()
            require("mgail.config.noice")
        end
    },
    {
        "goolord/alpha-nvim",
        dependencies = { "kyazdani42/nvim-web-devicons" },
        init = function()
            require("mgail.config.alpha")
        end
    },
    {
        "folke/which-key.nvim",
        init = function()
            require("mgail.config.whichkey")
            require("mgail.keymap.whichkey")
        end
    },

    -- Other
    {
        'm-gail/escape.nvim',
        init = function() require("mgail.keymap.escape") end
    },
})
