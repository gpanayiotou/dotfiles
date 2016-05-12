# Path to Oh My Fish install.
set -gx OMF_PATH ~/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG ~/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

#bobthefish config
set -g theme_nerd_fonts yes
set -g theme_date_format "+%A %HH:%MM"

export TERM=xterm-256color

# Base16 Shell
eval sh $HOME/.config/base16-shell/base16-ocean.dark.sh

set fish_function_path $fish_function_path "/usr/share/powerline/fish/"
powerline-setup

