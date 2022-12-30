# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.config/zsh/.zsh_history
setopt hist_ignore_dups # Don't save duplicate entries in history.
setopt sharehistory # Share history between all sessions.

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files.

# Misc
zle_highlight=('paste:none') # Disable highlighting pasted text
setopt autocd # Automatically cd into typed directory.
setopt pushdignoredups # Don't record the same directory as multiple entries.
stty stop undef # Disable ctrl-s to freeze terminal.

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.config/zsh/.zsh_history
setopt hist_ignore_dups # Don't save duplicate entries in history.
setopt sharehistory # Share history between all sessions.

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files.

# Zap plugin manager
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "hlissner/zsh-autopair"
plug "rauchg/wifi-password"
plug "zap-zsh/atmachine-prompt"

# Aliases

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec ${SHELL} -l"

alias q="exit"
alias c="clear"
alias rr="rm -rf -Iv"
alias cp="cp -iv"
alias mv="mv -iv"
alias mkdir="mkdir -pv"
alias sdn="shutdown -h now"

alias .h="cd $HOME"
alias .1="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."

alias g="git"
alias s="ncdu"
alias n="newsboat"
alias e="$EDITOR"
alias v="$EDITOR"

alias ls="exa -a --color=always --icons --group-directories-first"
alias ll="exa -la --color=always --icons --group-directories-first"
alias tree="exa -a --color=always --icons --group-directories-first -T"
