(setq fancy-splash-image "~/.config/doom/banner.png")
(setq +doom-dashboard-menu-sections
      '(("Open org-agenda" :icon
         (nerd-icons-octicon "nf-oct-calendar" :face 'doom-dashboard-menu-title)
         :when
         (fboundp 'org-agenda)
         :action org-agenda)
        ("Open project" :icon
         (nerd-icons-octicon "nf-oct-briefcase" :face 'doom-dashboard-menu-title)
         :action projectile-switch-project)))
