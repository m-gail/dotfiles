local actions = require("telescope.actions")

require("telescope").setup {
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close
            }
        },
        sorting_strategy = "ascending",
        results_title = false,
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = {"truncate"},
        layout_config = {
            preview_width = 0.5,
            width = 0.7,
            height = 0.7,
            prompt_position = "top",
        }
    },
}
