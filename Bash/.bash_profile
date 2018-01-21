# .bash_profile

# Get the aliases and functions
if [ -e "$HOME/.bashrc" ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
GOPATH=$HOME/.local/share/go
PATH=$PATH:$HOME/.local/bin:$HOME/bin:$GOPATH/bin
export PATH

# Define XDG folders for Vim
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache

# Locale
LANG="en_US.UTF-8"
export LANG

# Terminal Type
TERM="xterm-256color"
export TERM

# Python Virtualenvwrapper
source /usr/bin/virtualenvwrapper.sh
export PROJECT_HOME="$HOME/Projects"

# \e    Escape character
# \e[0m Remove all attributes
PS1="\u@\e[1m\h\e[0m \e[7m \w \e[0m\n\e[93mλ \e[0m"
export PS1

# Aliases
alias e="exit"
alias g="git"

