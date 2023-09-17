local wk = require("which-key")

wk.setup {
    window = {
        border = "none",
        position = "bottom",
        padding = { 2, 2, 2, 2 }
    },
    triggers = {},
}

wk.register({
    ["<leader>"] = {
        f = {
            name = "+files"
        },
        d = {
            name = "+debug"
        },
        g = {
            name = "+git"
        },
        h = {
            name = "+harpoon"
        },
        r = {
            name = "+refactor"
        },
        s = {
            name = "+lsp"
        },
        t = {
            name = "+tabsize"
        }
    }
})
