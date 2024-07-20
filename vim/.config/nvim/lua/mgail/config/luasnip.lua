local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local d = ls.dynamic_node
local sn = ls.snippet_node

require("luasnip.loaders.from_vscode").lazy_load()

ls.config.set_config {
    history = false,
    updateevents = "TextChanged,TextChangedI",
    region_check_events = "InsertEnter",
    delete_check_events = "InsertLeave"
}

local react_snippets = {
    s("intl", {
        t("intl.formatMessage({id: '"), i(1, "id"), t("'})")
    }),
    s("state", {
        t("const ["),
        i(1, "stateName"),
        t(", "),
        d(2, function(args)
            local result = (string.gsub((args[1][1] or ""), "^%l", string.upper))
            return sn(nil, {
                t("set" .. result),
            })
        end, { 1 }),
        t("] = useState("), i(3, "default"), t(")")
    }),
    s("component", {
        t({ "import React from 'react';", "", "export interface " }),
        d(4, function(args) return sn(nil, { t(args[1][1]) }) end, { 1 }),
        t({ "Props {", "}", "", "" }),
        t("export function "),
        i(1, "CompenentName"),
        t("(props: "),
        d(2, function(args) return sn(nil, { t(args[1][1]) }) end, { 1 }),
        t({ "Props): React.JSX.Element {", "    " }),
        i(3),
        t({ "", "}" })
    })
}

ls.add_snippets("javascript", react_snippets)
ls.add_snippets("typescript", react_snippets)
ls.add_snippets("javascriptreact", react_snippets)
ls.add_snippets("typescriptreact", react_snippets)
