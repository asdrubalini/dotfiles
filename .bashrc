#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

alias phploc="find . -name '*.php' | xargs wc -l"
alias jsloc="find . -name '*.js' | xargs wc -l"
alias scssloc="find . -name '*.scss' | xargs wc -l"
alias ls="exa --color=auto"

# Git
alias gits="git status"
alias gita="git add"
alias gitc="git commit"
alias gitp="git push"
alias scroto="scrot"
alias multimc="prime-run multimc"
alias rgit="git --git-dir=/home/giovanni/config --work-tree=/"

# Gentoo
alias eworld="doas emerge --ask --changed-use --deep @world"

export PATH=$HOME/Scripts/:$PATH
export PATH=$HOME/.local/bin/:$PATH

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PS1="\[\033[38;5;9m\][\[$(tput sgr0)\]\[\033[38;5;220m\]\u\[$(tput sgr0)\]\[\033[38;5;154m\]@\[$(tput sgr0)\]\[\033[38;5;81m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;13m\]\W\[$(tput sgr0)\]\[\033[38;5;9m\]]\[$(tput sgr0)\] \[$(tput sgr0)\]"

