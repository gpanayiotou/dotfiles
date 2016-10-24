# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH

# Locale
LANG="en_US.UTF-8"
export LANG

# Terminal Type
TERM="xterm-256color"
export TERM

PS1="\u@\h \w \$ "
export PS1

