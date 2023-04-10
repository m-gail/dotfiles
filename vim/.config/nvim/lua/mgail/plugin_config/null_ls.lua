require("null-ls").setup {
    sources = {
        require("null-ls").builtins.formatting.black,
        require("null-ls").builtins.formatting.isort,
        require("null-ls").builtins.formatting.prettier,
        require("null-ls").builtins.formatting.djlint,
        require("null-ls").builtins.diagnostics.djlint,
    }
}
