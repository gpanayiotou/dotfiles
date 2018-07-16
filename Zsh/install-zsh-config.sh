#!/bin/bash

# Link the config file to home dir
if [ ! -e "$HOME/.zshrc" ]; then
    ln -s $PWD/.zshrc ~/.zshrc
fi

# Download and install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

