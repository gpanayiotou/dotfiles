#!/bin/sh

# Create folders if necessary
if [ ! -d "~/.vim" ]; then
	mkdir ~/.vim
fi

# Soft link the files
ln -s $PWD/.vimrc ~/.vimrc
ln -s $PWD/.gvimrc ~/.gvimrc
ln -s $PWD/VIMBASE/autocommands.vim ~/.vim/autocommands.vim
ln -s $PWD/VIMBASE/keymappings.vim ~/.vim/keymappings.vim
ln -s $PWD/VIMBASE/plugins.vim ~/.vim/plugins.vim

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

