#!/bin/bash

if [ ! -e "$HOME/.tmux.conf" ]; then
    ln -s $PWD/.tmux.conf ~/.tmux.conf
fi

