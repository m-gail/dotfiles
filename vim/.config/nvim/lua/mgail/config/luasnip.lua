local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local d = ls.dynamic_node
local sn = ls.snippet_node

require("luasnip.loaders.from_vscode").lazy_load()

ls.config.set_config {
    history = false,
    updateevents = "TextChanged,TextChangedI"
}

ls.add_snippets("javascript", {
    s("intl", {
        t("intl.formatMessage({id: '"), i(1, "id"), t("'})")
    }),
    s("state", {
        t("["),
        i(1, "stateName"),
        t(", "),
        d(2, function(args)
            local result = (string.gsub((args[1][1] or ""), "^%l", string.upper))
            return sn(nil, {
                t("set" .. result),
            })
        end, { 1 }),
        t("] = useState("), i(3, "default"), t(")")
    })
})

ls.filetype_extend("typescript", { "javascript" })
ls.filetype_extend("javascriptreact", { "javascript" })
ls.filetype_extend("typescriptreact", { "javascript" })
