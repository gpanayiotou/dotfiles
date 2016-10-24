#!/bin/bash

if [ ! -f $HOME/.bashrc ]; then
    ln -s $PWD/.bashrc ~/.bashrc
fi

if [ ! -f $HOME/.bash_profile ]; then
    ln -s $PWD/.bash_profile ~/.bash_profile
fi

