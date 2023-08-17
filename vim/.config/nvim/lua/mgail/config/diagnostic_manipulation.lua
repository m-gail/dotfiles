require("diagnostic_manipulation").setup {
    blacklist = {
        require("diagnostic_manipulation.builtin.tsserver").tsserver_codes({ 6133, 6196 }),
        require("diagnostic_manipulation.builtin.eslint").eslint_parsing_error,
    },
    whitelist = {
        require("diagnostic_manipulation.builtin.severity").change_severities("eslint_d", -1)
    }
}
