#!/bin/bash

if [ ! -e "$HOME/.bashrc" ]; then
    ln -s $PWD/.bashrc ~/.bashrc
fi

if [ ! -e "$HOME/.bash_profile" ]; then
    ln -s $PWD/.bash_profile ~/.bash_profile
fi

