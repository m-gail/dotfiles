local saga = require("lspsaga")

saga.init_lsp_saga({
    show_outline = {
        win_position = 'right',
        left_with = 'NvimTree',
        win_width = 40,
        auto_refresh = true,
    }
})
