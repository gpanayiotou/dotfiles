#!/bin/sh

NVIM_CONFIG_HOME=$HOME/.config/nvim
NVIM_CACHE_HOME=$HOME/.cache/nvim

# Soft link the config directory
if [ ! -e "$NVIM_CONFIG_HOME" ]; then
    ln -s $PWD ~/.config/nvim
fi

# Create the cache directories
if [ ! -e "$NVIM_CACHE_HOME" ]; then
    mkdir $NVIM_CACHE_HOME
    mkdir $NVIM_CACHE_HOME/backup
    mkdir $NVIM_CACHE_HOME/undo
    mkdir $NVIM_CACHE_HOME/swap
fi

# Install vim-plug
PLUG_FILE=$HOME/.local/share/nvim/site/autoload/plug.vim

if [ ! -e "$PLUG_FILE" ]; then
    curl -fLo $PLUG_FILE --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Start Neovim and install plugins
nvim -c "PlugInstall"

