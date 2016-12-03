#!/bin/bash

# Soft link the configuration files
if [ ! -e "$HOME/.vimrc" ]; then
    ln -s $PWD/.vimrc ~/.vimrc
fi

if [ ! -e "$HOME/.gvimrc" ]; then
    ln -s $PWD/.gvimrc ~/.gvimrc
fi

# Soft link the vim folder
if [ ! -e "$XDG_CONFIG_HOME/vim" ]; then
    ln -s $PWD/VIM_HOME $XDG_CONFIG_HOME/vim
fi

# Install plugins
vim -c PlugInstall

