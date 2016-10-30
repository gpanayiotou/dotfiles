# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
umask 0006
# Ignore duplicates in command history
export HISTCONTROL=ignoredups

# Aliases
alias l.='ls -ld .* --color=auto'
alias ll='ls -l --color=auto'
alias rimraf='rm -rf'

# Base16-shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# NodeJS Version Manager
export NVM_DIR="/home/geo/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

