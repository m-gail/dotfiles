local function rewrite_prettier_to_hint(diagnostic)
    if diagnostic.code == "prettier/prettier" then
        diagnostic.severity = vim.diagnostic.severity.HINT
    end
    return false
end

require("diagnostic_manipulation").setup {
    blacklist = {
        require("diagnostic_manipulation.builtin.tsserver").tsserver_codes({ 6133, 6196 }),
        require("diagnostic_manipulation.builtin.eslint").eslint_parsing_error,
    },
    whitelist = {
        require("diagnostic_manipulation.builtin.severity").change_severities("eslint_d", -1),
        rewrite_prettier_to_hint
    }
}
