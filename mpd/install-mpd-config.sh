#!/bin/bash

if [ ! -e "$HOME/.config/mpd" ]; then
    ln -s $PWD ~/.config/mpd
fi

# Create empty data files
if [ -e "$HOME/.config/mpd" ]; then
    touch ~/.config/mpd/pid
    touch ~/.config/mpd/database
    touch ~/.config/mpd/state
    touch ~/.config/mpd/sticker.sql
    touch ~/.config/mpd/log
fi

