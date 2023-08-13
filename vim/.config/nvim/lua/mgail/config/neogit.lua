require("neogit").setup {
    signs = {
        section = { "", "" },
        item = { "", "" },
    },
    mappings = {
        status = {
            ["<leader>s"] = "StashPopup",
            ["Z"] = false,
        }
    }
}
