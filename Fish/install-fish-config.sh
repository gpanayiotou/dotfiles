#!/bin/bash

# Clone shell theme
if [ ! -d $HOME/.config/base16-shell ]; then
    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi

# Check for fish config dir
if [ ! -d $HOME/.config/fish ]; then
    mkdir ~/.config/fish
fi

# Soft link config file
if [ ! -f $HOME/.config/fish/config.fish ]; then
    ln -s $PWD/config.fish ~/.config/fish/config.fish
fi

# Soft link functions
if [ ! -d $HOME/.config/fish/functions ]; then
    ln -s $PWD/functions ~/.config/fish/functions
fi

# Install Oh-My-Fish
curl -L http://get.oh-my.fish | fish

