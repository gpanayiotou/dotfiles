#!/bin/bash

FISH_HOME=$HOME/.config/fish

# Clone shell theme
if [ ! -d "$HOME/.config/base16-shell" ]; then
    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi

# Check for fish config dir
if [ ! -d "$FISH_HOME" ]; then
    mkdir ~/.config/fish
fi

# Soft link config file
if [ ! -e "$FISH_HOME/config.fish" ]; then
    ln -s $PWD/config.fish ~/.config/fish/config.fish
fi

# Soft link functions directory
if [ ! -e "$FISH_HOME/functions" ]; then
    ln -s $PWD/functions ~/.config/fish/functions
fi

# Install Oh-My-Fish
read -p "Install Oh-my-fish? (y/n)" choice
case $choice in
    y|Y ) curl -L http://get.oh-my.fish | fish;;
    n|N ) echo "Aborting";;
    * ) echo "Please answer yes or no.";;
esac

