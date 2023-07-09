# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1=' \[\e[96m\]>\[\e[39m\] '

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.config/bspwm/rofi/scripts:$PATH"
