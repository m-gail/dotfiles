require('orgmode').setup_ts_grammar()

require("orgmode").setup {
    org_indent_mode = "noindent",
    org_agenda_files = "~/Nextcloud/Notes/**/*",
    win_split_mode = "tabnew",
    org_startup_folded = "showeverything"
}

require("org-bullets").setup()
