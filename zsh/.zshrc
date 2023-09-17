unsetopt BEEP

# history
export HISTFILE=~/.zsh_history
export SAVEHIST=100000
export HISTSIZE=100000
setopt INC_APPEND_HISTORY_TIME

source ~/.config/zsh/completion.zsh
source ~/.config/zsh/alias.zsh
source ~/.config/zsh/environment.zsh
source ~/.config/zsh/vim.zsh


[[ -f ~/.config/zsh/localrc ]] && source ~/.config/zsh/localrc

# starship prompt
eval "$(starship init zsh)"

# plugins
[[ ! -d ~/.config/zsh/plugins/zsh-syntax-highlighting ]] && git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.config/zsh/plugins/zsh-syntax-highlighting
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[[ ! -d ~/.config/zsh/plugins/zsh-autosuggestions ]] && git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/plugins/zsh-autosuggestions
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# direnv
eval "$(direnv hook zsh)"
