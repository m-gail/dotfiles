local actions = require("telescope.actions")

require("telescope").setup {
    defaults = {
        sorting_strategy = "ascending",
        results_title = false,
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "truncate" },
        layout_config = {
            width = 0.7,
            height = 0.7,
            prompt_position = "top",
            horizontal = {
                preview_width = 0.5,
            }
        }
    },
    pickers = {

    },
    extensions = {
        file_browser = {
            hijack_netrw = false,
            initial_mode = "normal",
            grouped = true,
            hidden = true
        },
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case"
        },
        ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
        }
    }
}

require("telescope").load_extension("fzf")
require("telescope").load_extension("ui-select")
