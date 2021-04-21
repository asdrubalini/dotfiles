#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

cd $HOME
alias phploc="find . -name '*.php' | xargs wc -l"
alias jsloc="find . -name '*.js' | xargs wc -l"
alias scssloc="find . -name '*.scss' | xargs wc -l"
alias ls="exa --color=auto"
# alias vim="nvim"

# Git
alias gits="git status"
alias gita="git add"
alias gitc="git commit"
alias gitp="git push"
alias yay="paru"
alias scroto="scrot"
alias multimc="prime-run multimc"

# Gentoo
alias eworld="doas emerge -ND @world"

export LANG=en_US.utf8
export EDITOR=vim

export PATH=$HOME/Scripts/:$PATH
export PATH=$HOME/.local/bin/:$PATH

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
