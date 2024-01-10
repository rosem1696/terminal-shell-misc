#!/usr/bin/env bash

# Call when entering ssh session
ssh-tmux-session() {
    tmux attach -t ssh || tmux new -t ssh
    echo "Leaving ssh tmux session"
    exec bash
}
