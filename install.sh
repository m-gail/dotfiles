#!/bin/bash

if [[ "$1" == "--help" ]];
then
  echo "Available Operating Systems: debian (default), arch, macos"
  exit
fi

DISTRIBUTION=${1:-"debian"}

# dependencies
case $DISTRIBUTION in
  arch)
    sudo pacman -S --noconfirm curl stow zsh exa neovim dunst rofi alacritty awesome
  ;;
  debian)
    sudo apt install -y curl stow zsh exa neovim dunst rofi awesome
  ;;
  macos)
    brew install stow coreutils exa neovim
  ;;
esac

# zsh
mkdir ~/zsh-plugins
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/zsh-plugins/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/zsh-plugins/zsh-autosuggestions
chsh $USER -s /bin/zsh

# symlink all dotfiles
stow */
