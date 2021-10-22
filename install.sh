#!/bin/sh

# install-dependencies
sudo apt install -y curl stow

# zsh
sudo apt install -y zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
chsh $USER -s /bin/zsh

# vim
sudo apt install -y vim
curl -sLf https://spacevim.org/install.sh | bash

# symlink all dotfiles
stow */
