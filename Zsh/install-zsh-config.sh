#!/bin/bash

# Link the config file to home dir
if [ ! -e "$HOME/.zshrc" ]; then
    ln -s $PWD/.zshrc ~/.zshrc
fi

# Download and install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Download base16-shell
if [ ! -d "$HOME/.config/base16-shell" ]; then
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi

