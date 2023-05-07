#!/bin/zsh

# Environmental variables are set here.
[ -f "$HOME/.config/shell/environmentrc" ] && source "$HOME/.config/shell/environmentrc"

# History configurations
HISTFILE=~/.local/state/zsh-history
HISTSIZE=1000
SAVEHIST=2000
