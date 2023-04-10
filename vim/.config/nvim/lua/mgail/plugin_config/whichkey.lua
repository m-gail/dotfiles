local wk = require("which-key")

wk.setup {
    window = {
        border = "single",
        position = "bottom",
        margin = { 1, 1, 1, 1 },
        padding = { 1, 1, 1, 1 }
    }
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
