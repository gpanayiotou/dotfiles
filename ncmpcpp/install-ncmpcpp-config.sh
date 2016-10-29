#!/bin/bash

if [ ! -e "$HOME/.config/ncmpcpp" ]; then
    ln -s $PWD ~/.config/ncmpcpp
fi

