# General settings
set LANG en_US.UTF-8
export TERM=xterm-256color
export GOPATH=$HOME/.local/share/go

# Oh-My-Fish
# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"
# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG ~/.config/omf
source $OMF_PATH/init.fish

# Define XDG folders for Vim
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache

# Base16 Shell
if status --is-interactive
  eval sh $HOME/.config/base16-shell/scripts/base16-ocean.sh
end

# Powerline
if test -e /usr/share/powerline/fish/powerline-setup.powerline-setup.fish
    # Fedora package version of the path
    set fish_function_path $fish_function_path "/usr/share/powerline/fish/"
else if test -e /usr/lib/python3.6/site-packages/powerline/bindings/fish/powerline-setup.fish
    # Python package version for Arch
    set fish_function_path $fish_function_path "/usr/lib/python3.6/site-packages/powerline/bindings/fish/"
end
powerline-setup

