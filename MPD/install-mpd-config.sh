#!/bin/bash

MPD_HOME=$HOME/.config/mpd

if [ ! -e "$MPD_HOME" ]; then
    ln -s $PWD ~/.config/mpd
fi

# Create empty data files
if [ -e "$MPD_HOME" ]; then
    touch ~/.config/mpd/pid
    touch ~/.config/mpd/database
    touch ~/.config/mpd/state
    touch ~/.config/mpd/sticker.sql
    touch ~/.config/mpd/log
fi

