#!/bin/bash

VNC_HOME=$HOME/.vnc

if [ ! -d $VNC_HOME ]; then
    mkdir ~/.vnc
fi

if [ ! -e $VNC_HOME/xconfig.custom ]; then
    ln -s $PWD/xstartup.custom ~/.vnc/xstartup.custom
fi

if [ ! -e $VNC_HOME/config ]; then
    ln -s $PWD/config ~/.vnc/config
fi

