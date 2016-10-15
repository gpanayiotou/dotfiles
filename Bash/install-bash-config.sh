#!/bin/bash

if [ ! -f ~/.bashrc ]; then
    ln -s $PWD/.bashrc ~/.bashrc
fi

if [ ! -f ~/.bash_profile ]; then
    ln -s $PWD/.bash_profile ~/.bash_profile
fi
