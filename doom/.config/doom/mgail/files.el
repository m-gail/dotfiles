;; Unmap default file bindings
(map! :leader "f" nil)

(map! :leader
      (:prefix ("f" . "files")
      :desc "Find file" "f" #'projectile-find-file
      :desc "ripgrep" "g" #'+default/search-project
      :desc "Open file browser" "b" #'+default/browse-project
      :desc "Open file browser here" "B" #'+default/dired))
