#!/bin/sh

# Prerequisits:
# Fish installed
# Git installed
 
# Clone shell theme
if [ ! -d "~/.config/base16-shell" ]; then
    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi

# Soft link config file
ln -s $PWD/config.fish ~/.config/fish/config.fish

# Install Oh-My-Fish
curl -L http://get.oh-my.fish | fish

