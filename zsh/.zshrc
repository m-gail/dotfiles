unsetopt BEEP

# aliases
source ~/.config/zsh/aliasrc

# environment variables
source ~/.config/zsh/environmentrc

# history
export HISTFILE=~/.zsh_history
export SAVEHIST=100000
export HISTSIZE=100000

[[ -f ~/.config/zsh/localrc ]] && source ~/.config/zsh/localrc

# vi-mode
bindkey -v
KEYTIMEOUT=1

# starship prompt
eval "$(starship init zsh)"

# plugins
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -U compinit; compinit
zstyle ':completion:*' menu select
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes
