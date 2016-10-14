#!/bin/sh

# Soft link config files
if [ ! -f ~/.gitconfig-common ]; then
    ln -s $PWD/.gitconfig-common ~/.gitconfig-common
fi

if [ ! -f ~/.gitconfig-linux ]; then
    ln -s $PWD/.gitconfig-linux ~/.gitconfig-linux
fi

# Copy the .gitconfig to user dir and add the platform-specific line
if [ ! -f ~/.gitconfig ]; then
    cp $PWD/.gitconfig ~/
    echo "path = .gitconfig-linux" >> ~/.gitconfig 
fi

