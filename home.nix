{ config, pkgs, inputs, ... }:

let
  dots = "${config.home.homeDirectory}/.dotfiles";
  link = path: config.lib.file.mkOutOfStoreSymlink "${dots}/${path}";
in
{
  imports = [
    inputs.caelestia-shell.homeManagerModules.default
  ];

  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 172;
  };
  

  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    fd
    syncthing
    direnv
    delta
    gnumake
    ripgrep
    cmake
    gcc
    nodejs
    unzip
    btop
    killall
    starship
    neovim
    eza
    trash-cli
    lazygit
    tmux
    tree-sitter
    fzf
    prismlauncher
    emacs
    android-studio
    discord
    spotify
    kitty
    firefox
    nautilus
    (callPackage ./findproject.nix { src = inputs.findproject-src; })
  ];

  fonts.fontconfig.enable = true;

  programs.firefox = {
    enable = true;
    profiles.default = {
      isDefault = true;
      settings = {
        "sidebar.revamp" = true;
        "sidebar.verticalTabs" = true;
      };
    };
  };

  programs.caelestia = {
    enable = true;
    systemd = {
      enable = false;
      target = "graphical-session.target";
      environment = [];
    };
    cli = {
      enable = true;
      settings = {
        theme.enableGtk = false;
      };
    };
    settings = {
      bar = {
        workspaces = {
	  shown = 6;
	};
      };
      dashboard = {
        showWeather = false;
      };
      lock = {
        hideNotifs = true;
      };
      services = {
        smartScheme = false;
      };
    };
  };

  programs.git = {
    enable = true;
    settings.user = {
      name = "m-gail";
      email = "34513390+m-gail@users.noreply.github.com";
    };
    ignores = [
      ".envrc"
    ];
  };

  gtk = {
    enable = true;
    theme = {
      name = "Adwaita-dark";
      package = pkgs.gnome-themes-extra;
    };

    iconTheme = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
    };

    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };

    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };

  xdg.configFile."doom".source = link "config/doom/.config/doom";
  xdg.configFile."kitty".source = link "config/kitty/.config/kitty";
  xdg.configFile."zsh".source = link "config/zsh/.config/zsh";
  xdg.configFile."starship.toml".source = link "config/zsh/.config/starship.toml";
  xdg.configFile."hypr".source = link "config/hypr";
  xdg.configFile."findproject".source = link "config/findproject/.config/findproject";
  xdg.configFile."lazygit".source = link "config/lazygit/.config/lazygit";
  xdg.configFile."tmux".source = link "config/tmux/.config/tmux";
  xdg.configFile."nvim".source = link "config/vim/.config/nvim";
  home.file.".zshrc".source = link "config/zsh/.zshrc";
  home.file."Pictures/Wallpapers".source = link "wallpapers";

  home.stateVersion = "26.05";
}
