set encoding=utf-8      " Vim can not recognize the character code of .vimrc
                        " when scriptencoding is defined before set encoding
scriptencoding utf-8

" XDG directories are set to contain nothing by default.
" XDG-aware programs are then supposed to set the default, which is
" $HOME/.config
" Vim does not do this, so the variables here are set here

let $XDG_CONFIG_HOME=$HOME . "/.config"

set runtimepath+=$XDG_CONFIG_HOME/vim
set runtimepath+=$XDG_CONFIG_HOME/vim/after

let $MYVIMRC=$XDG_CONFIG_HOME . "/vim/vimrc"
source $MYVIMRC

