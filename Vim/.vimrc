set encoding=utf-8      " Vim can not recognize the character code of .vimrc
                        " when scriptencoding is defined before set encoding
scriptencoding utf-8

" XDG directories are set to contain nothing by default (Fedora).
" XDG-aware programs are then supposed to set the default, which is
" $HOME/.config
" Vim does not do this, so the variables are set here
if empty($XDG_CONFIG_HOME)
  let $XDG_CONFIG_HOME=$HOME . "/.config"
endif

if empty($XDG_CACHE_HOME)
  let $XDG_CACHE_HOME=$HOME . "/.cache"
endif

set runtimepath+=$XDG_CONFIG_HOME/vim
set runtimepath+=$XDG_CONFIG_HOME/vim/after

let $MYVIMRC=$XDG_CONFIG_HOME . "/vim/vimrc"
source $MYVIMRC

