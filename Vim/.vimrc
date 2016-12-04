set encoding=utf-8      " Vim can not recognize the character code of .vimrc
                        " when scriptencoding is defined before set encoding
scriptencoding utf-8

set runtimepath+=$XDG_CONFIG_HOME/vim,$VIM,$VIMRUNTIME
let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc"
source $MYVIMRC

