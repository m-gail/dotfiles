local actions = require("telescope.actions")

require("telescope").setup {
    defaults = {
        sorting_strategy = "ascending",
        results_title = false,
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "truncate" },
        layout_config = {
            preview_width = 0.5,
            width = 0.7,
            height = 0.7,
            prompt_position = "top",
        }
    },
    extensions = {
        file_browser = {
            hijack_netrw = false,
            initial_mode = "normal",
            grouped = true,
            hidden = true
        }
    }
}

require("telescope").load_extension("file_browser")
