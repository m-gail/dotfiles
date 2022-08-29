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
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

