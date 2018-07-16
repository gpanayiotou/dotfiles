#!/bin/bash

if [ ! -e "$HOME/.zshrc" ]; then
    ln -s $PWD/.zshrc ~/.zshrc
fi

