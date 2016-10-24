#!/bin/sh

# Create folders if necessary
if [ ! -d "$HOME/.vim" ]; then
    mkdir ~/.vim
fi

# Soft link the configuration files
if [ ! -e "$HOME/.vimrc" ]; then
    ln -s $PWD/.vimrc ~/.vimrc
fi

if [ ! -e "$HOME/.gvimrc" ]; then
    ln -s $PWD/.gvimrc ~/.gvimrc
fi

if [ ! -e "$HOME/.vim/autocommands.vim" ]; then
    ln -s $PWD/VIMBASE/autocommands.vim ~/.vim/autocommands.vim
fi

if [ ! -e "$HOME/.vim/keymappings.vim" ]; then
    ln -s $PWD/VIMBASE/keymappings.vim ~/.vim/keymappings.vim
fi

if [ ! -e "$HOME/.vim/plugins.vim" ]; then
    ln -s $PWD/VIMBASE/plugins.vim ~/.vim/plugins.vim
fi

# Install vim-plug
if [ ! -e "$HOME/.vim/autoload/plug.vim" ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Install plugins
vim -c PlugInstall

