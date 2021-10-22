#!/bin/sh

# install-dependencies
sudo apt install -y curl stow

# zsh
sudo apt install -y zsh
mkdir ~/zsh-plugins
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/zsh-plugins/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/zsh-plugins/zsh-autosuggestions
chsh $USER -s /bin/zsh

# vim
sudo apt install -y vim
curl -sLf https://spacevim.org/install.sh | bash

# symlink all dotfiles
stow */
