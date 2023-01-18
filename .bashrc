#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Autoload sway after login on command line
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec startx
fi

# Set default text editor to nvim
export EDITOR='nvim'
export VISUAL='nvim'

# export scripts folder to path
export PATH=$PATH:$HOME/.local/bin

# starship prompt
eval "$(starship init bash)"

source /usr/share/nvm/init-nvm.sh
