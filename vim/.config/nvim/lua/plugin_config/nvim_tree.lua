require("nvim-tree").setup {
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
    }
}
