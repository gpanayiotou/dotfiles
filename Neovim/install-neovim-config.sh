#!/bin/sh

NVIM_HOME=$HOME/.config/nvim

# Soft link the config directory
if [ ! -e "$NVIM_HOME" ]; then
    ln -s $PWD ~/.config/nvim
fi

# Install vim-plug
if [ ! -e "$NVIM_HOME/autoload/plug.vim" ]; then
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Start Neovim and install plugins
nvim -c "PlugInstall"

