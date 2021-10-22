#!/bin/sh

# install-dependencies
sudo apt install -y curl stow

# zsh
sudo apt install -y zsh

# vim
sudo apt install -y vim
curl -sLf https://spacevim.org/install.sh | bash

# symlink all dotfiles
stow */
