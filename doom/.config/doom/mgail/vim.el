(map! :desc "Write all" :n "Z W" #'evil-write-all)
(map! :n "H" #'evil-first-non-blank)
(map! :n "C-h" #'evil-window-left)
(map! :n "C-l" #'evil-window-right)
(map! :n "C-k" #'evil-window-up)
(map! :n "C-j" #'evil-window-down)
(map! :n "C-u" (lambda () (interactive) (evil-scroll-up 0) (evil-scroll-line-to-center nil)))
(map! :n "C-d" (lambda () (interactive) (evil-scroll-down 0) (evil-scroll-line-to-center nil)))
(map! :i "M-l" #'company-complete-selection)
