# ls
alias ls="exa -Fgh --icons"
alias l="ls"
alias ll="ls -l"
alias lla="ls -la"
alias la="ls -a"
alias lt="ls -T"

# mkdir
alias mkdir="mkdir -pv"

# cd
function .. {
    count=$1
    [[ $1 -lt 1 ]] && count=1
    for i in {1..$count}
    do
        cd ..
    done
}

alias ra="ranger"
alias ranger=". ranger"

function j {
    cd $(find -L ~/Programming ~/Documents ~/Nextcloud ~/Downloads ~/.config -type d | fzf)
}

# confirmations
alias mv='mv -i'
alias cp='cp -i'
alias rm='trash'
alias ln='ln -i'

# vim
alias vim="nvim"
alias v="vim"
alias vi="vim"
alias sv="sudoedit"

function vf {
    v $(fzf)
}

# python
alias pe="pipenv"

# findproject
alias fp="fp_tmux"

# lazygit
alias lg="lazygit"

# ssh
alias ssh="TERM=xterm ssh"

# nvm
alias nvminit="source ~/.nvm/nvm.sh"
alias sdkinit="source ~/.sdkman/bin/sdkman-init.sh"
