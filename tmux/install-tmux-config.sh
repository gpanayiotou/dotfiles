#!/bin/bash

if [ ! -f ~/.tmux.conf ]; then
    ln -s $PWD/.tmux.conf ~/.tmux.conf
fi

