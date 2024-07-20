require("null-ls").setup {
    sources = {
        require("null-ls").builtins.code_actions.eslint_d,
        require("null-ls").builtins.formatting.black,
        require("null-ls").builtins.formatting.isort,
        require("null-ls").builtins.formatting.prettier,
        require("null-ls").builtins.formatting.beautysh,
        require("null-ls").builtins.formatting.djlint,
        require("null-ls").builtins.formatting.stylua,
        require("null-ls").builtins.diagnostics.eslint_d,
        require("null-ls").builtins.diagnostics.djlint,
        require("null-ls").builtins.formatting.asmfmt
    }
}
