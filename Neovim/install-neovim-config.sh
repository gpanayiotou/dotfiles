#!/bin/sh

# Soft link the config files
if [ ! -d "~/.config/nvim" ]; then
    mkdir ~/.config/nvim
fi

if [ ! -f ~/.config/nvim/init.vim ]; then
    ln -s $PWD/init.vim ~/.config/nvim/init.vim
fi

if [ ! -f ~/.config/nvim/ginit.vim ]; then
    ln -s $PWD/ginit.vim ~/.config/nvim/ginit.vim
fi

# Install vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

