# Default programs
export VISUAL="nvim"
export EDITOR="nvim"
export BROWSER="librewolf"
export TERMINAL="alacritty"
export IMAGE="setsid -f nsxiv"
export VIDEO="setsid -f mpv"
export READER="setsid -f zathura"
export RSS="newsboat"
export MANPAGER="nvim +Man!"

# Language
export LANG=en_NZ.UTF-8
export LC_CTYPE=en_NZ.UTF-8

# ~/ Clean-up:
ZDOTDIR=$HOME/.config/zsh
export LESSHISTFILE=-
export VIMINFO=-

# XDG Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
