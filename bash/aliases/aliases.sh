#!/usr/bin/env bash

### cheat.sh ###
cheat() {
    curl cheat.sh/$1
}

### ls ###
alias ll='ls -la'
alias lsl="ls -lhAF"

### tmux ###
alias quit="tmux detach"
alias tma="tmux a -d"

### git ###
alias gs="git status"
alias ga="git add"
alias gp="git push"

gc() {
    git commit -m "$1"
}

gpo() {
    git push --set-upstream origin "$(git rev-parse --abbrev-ref HEAD)"
}

commit-all() {
    git add .
    git commit -m "$1"
    git push
}
