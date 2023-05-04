#!/bin/zsh

# profile file. Runs on login. Environmental variables are set here.

# Additions to $PATH:
export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"
export PATH="$PATH:$HOME/.local/go/bin"

# Default programs:
export EDITOR="nvim"
export TERMINAL="alacritty"
export TERMINAL_PROG="alacritty"
export BROWSER="librewolf"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"

export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

#export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
#export INPUTRC="$XDG_CONFIG_HOME/shell/inputrc"
