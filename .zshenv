# Default programs
export VISUAL="nvim"
export EDITOR="nvim"
export BROWSER="librewolf"
export TERMINAL="alacritty"
export IMAGE="sxiv"
export VIDEO="mpv"
export READER="zathura"

# Language
export LANG=en_NZ.UTF-8
export LC_CTYPE=en_NZ.UTF-8

# Set "vim" as manpager
export MANPAGER='/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

# ~/ Clean-up:
ZDOTDIR=$HOME/.config/zsh
export LESSHISTFILE=-
export VIMINFO=-

# XDG Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
