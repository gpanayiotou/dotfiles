# .bash_profile

# Get the aliases and functions
if [ -e "$HOME/.bashrc" ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
GOPATH=$HOME/.local/share/go
PATH=$PATH:$HOME/.local/bin:$HOME/bin:$GOPATH/bin
export PATH


# Locale
LANG="en_US.UTF-8"
export LANG

# Terminal Type
TERM="xterm-256color"
export TERM

PS1="\u@\h \[\033[0;44m\] \w \[\033[0m\] \[\033[1;33m\]\$\[\033[0m\] "
export PS1

