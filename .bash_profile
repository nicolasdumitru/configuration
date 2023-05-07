#!/bin/bash

# Environmental variables are set here.
[ -f "$HOME/.config/shell/environmentrc" ] && source "$HOME/.config/shell/environmentrc"

# History configurations
export HISTFILE="$XDG_STATE_HOME"/bash/history
