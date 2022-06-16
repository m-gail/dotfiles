#!/bin/bash

if [[ "$1" == "--help" ]];
then
  echo "Available Operating Systems: fedora (default)"
  exit
fi

DISTRIBUTION=${1:-"fedora"}

# dependencies
case $DISTRIBUTION in
  fedora)
    sudo dnf install $(cat packagelist-fedora)
  ;;
esac

# symlink all dotfiles
stow */

# zsh
mkdir ~/.config/zsh/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/plugins/zsh-autosuggestions
chsh $USER -s /bin/zsh

# Fonts
mkdir -p ~/.local/share/fonts/JetBrainsMonoNF
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip -P ~/.local/share/fonts/JetBrainsMonoNF/
unzip -d ~/.local/share/fonts/JetBrainsMonoNF ~/.local/share/fonts/JetBrainsMonoNF/JetBrainsMono.zip

mkdir -p ~/.local/share/fonts/FontAwesome
wget https://use.fontawesome.com/releases/v6.1.1/fontawesome-free-6.1.1-desktop.zip -P ~/.local/share/fonts/FontAwesome/
unzip -d ~/.local/share/fonts/FontAwesome ~/.local/share/fonts/FontAwesome/fontawesome-free-6.1.1-desktop.zip

fc-cache -fv

# Neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
