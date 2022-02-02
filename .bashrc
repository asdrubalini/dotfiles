#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval "$(starship init bash)"

alias ls="exa"

# Git
alias gits="git status"
alias gita="git add"
alias gitc="git commit"
alias gitp="git push"

alias p="pacman"
alias nv="nvim"
alias d="doas"

alias rsloc="find . -name '*.rs' | xargs wc -l"
alias randgen="for i in {1..20000}; do dd if=/dev/urandom bs=4 count=256 of=file_$i; done"

alias mountdata="doas mount /dev/sda2 /mnt/data/"
alias mountkrypta="doas mount /dev/krypta/krypta -o subvol=@ /krypta/"

alias testall="cargo test --release --all -- --nocapture"

export PATH=$HOME/Scripts/:$PATH
export PATH=$HOME/.local/bin/:$PATH

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PS1="\[\033[38;5;9m\][\[$(tput sgr0)\]\[\033[38;5;220m\]\u\[$(tput sgr0)\]\[\033[38;5;154m\]@\[$(tput sgr0)\]\[\033[38;5;81m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;13m\]\W\[$(tput sgr0)\]\[\033[38;5;9m\]]\[$(tput sgr0)\] \[$(tput sgr0)\]"

if [ "$TERM" == "linux" ]
then
    unix
fi

