require("nvim-tree").setup {
    view = {
        signcolumn = "auto",
        width = 35,
        adaptive_size = true
    },
    renderer = {
        root_folder_modifier = ":t",
        icons = {
            git_placement = "after",
            glyphs = {
                git = {
                    unstaged = "",
                    staged = "",
                    unmerged = "",
                    renamed = "",
                    untracked = "",
                    deleted = "",
                    ignored = "",
                }
            }
        },
        indent_markers = {
            enable = true
        }
    },
    git = {
        enable = true,
        ignore = false
    },
    filters = {
        custom = {
            "__pycache__",
            ".git",
            ".idea"
        }
    }
}
