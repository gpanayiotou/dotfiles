#!/bin/sh

# Soft link the config directory
if [ ! -d "~/.config/nvim" ]; then
    ln -s $PWD/Neovim ~/.config/nvim
fi

# Install vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Start Neovim and install plugins
nvim -c "PlugInstall"

