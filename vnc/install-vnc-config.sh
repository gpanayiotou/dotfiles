#!/bin/bash

if [ ! -d $HOME/.vnc ]; then
    mkdir ~/.vnc
fi

if [ ! -f $HOME/.vnc/xconfig.custom ]; then
    ln -s $PWD/xstartup.custom ~/.vnc/xstartup.custom
fi

if [ ! -f $HOME/.vnc/config ]; then
    ln -s $PWD/config ~/.vnc/config
fi

