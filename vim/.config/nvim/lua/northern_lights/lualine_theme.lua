local colors = {
    red = "#a63232",
    yellow = "#a6a632",
    orange = "#a66c32",
    green = "#6ca632",
    cyan = "#32a6a6",
    blue = "#3262a6",
    purple = "#4532a6",
    background = "#0e1316",
    background_alt_1 = "#1d282e",
    background_alt_2 = "#2d3e47",
    white = "#e6ffcc",
    forgeround = "#b8cca3",
    forgeround_alt_1 = "#91998a",
    forgeround_alt_2 = "#60665c",
}

return {
    normal = {
        a = { bg = colors.background_alt_1, fg = colors.forgeround },
        b = { bg = colors.background_alt_2, fg = colors.foreground },
        c = { bg = colors.background, fg = colors.forgeround }
    },
    insert = {
        a = { bg = colors.green, fg = colors.white },
        b = { bg = colors.background_alt_2, fg = colors.foreground },
        c = { bg = colors.background, fg = colors.forgeround }
    },
    visual = {
        a = { bg = colors.yellow, fg = colors.white },
        b = { bg = colors.background_alt_2, fg = colors.foreground },
        c = { bg = colors.background, fg = colors.forgeround }
    },
    replace = {
        a = { bg = colors.orange, fg = colors.white },
        b = { bg = colors.background_alt_2, fg = colors.foreground },
        c = { bg = colors.background, fg = colors.forgeround }
    },
    command = {
        a = { bg = colors.blue, fg = colors.white },
        b = { bg = colors.background_alt_2, fg = colors.foreground },
        c = { bg = colors.background, fg = colors.forgeround }
    },
    inactive = {
        a = { bg = colors.background_alt_1, fg = colors.foreground },
        b = { bg = colors.background_alt_2, fg = colors.foreground },
        c = { bg = colors.background, fg = colors.forgeround }
    },
}
