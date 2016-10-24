#!/bin/bash

VNC_HOME=$HOME/.vnc

# Create directory if necessary
if [ ! -d "$VNC_HOME" ]; then
    mkdir ~/.vnc
fi

# Link the coniguration files
if [ ! -e "$VNC_HOME/xstartup.custom" ]; then
    ln -s $PWD/xstartup.custom ~/.vnc/xstartup.custom
fi

if [ ! -e "$VNC_HOME/config" ]; then
    ln -s $PWD/config ~/.vnc/config
fi

