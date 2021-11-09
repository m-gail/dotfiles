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
    sudo pacman -S --noconfirm curl stow zsh vim 
  ;;
  debian)
    sudo apt install -y curl stow zsh vim
  ;;
  macos)
    brew install stow coreutils
  ;;
esac

# zsh
mkdir ~/zsh-plugins
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/zsh-plugins/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/zsh-plugins/zsh-autosuggestions
chsh $USER -s /bin/zsh

# vim
curl -sLf https://spacevim.org/install.sh | bash

# symlink all dotfiles
stow */
