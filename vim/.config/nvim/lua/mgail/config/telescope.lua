local layout_config = {
    height = 0.65,
    preview_width = 0.65,
}

require("telescope").setup {
    defaults = vim.tbl_extend("force", require("telescope.themes").get_ivy(), {
        sorting_strategy = "ascending",
        results_title = false,
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "truncate" },
        layout_config = layout_config
    }),
    pickers = {
        find_files = {
            layout_config = layout_config
        },
        live_grep = {
            layout_config = layout_config
        }
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case"
        },
        ["ui-select"] = {
            require("telescope.themes").get_cursor {}
        }
    }
}

require("telescope").load_extension("fzf")
require("telescope").load_extension("ui-select")
