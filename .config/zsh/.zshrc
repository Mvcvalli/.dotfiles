# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="$HOME/.config/zsh/.zsh_history"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Completion Options.
setopt complete_in_word         # Complete From Both Ends Of A Word.
setopt always_to_end            # Move Cursor To The End Of A Completed Word.
setopt path_dirs                # Perform Path Search Even On Command Names With Slashes.
setopt auto_menu                # Show Completion Menu On A Successive Tab Press.
setopt auto_list                # Automatically List Choices On Ambiguous Completion.
setopt auto_param_slash         # If Completed Parameter Is A Directory, Add A Trailing Slash.
setopt menu_complete            # Do Not Autoselect The First Completion Entry.

# Zap plugin manager
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "hlissner/zsh-autopair"

# Aliases

# Use neovim for vim if present.
[ -x "$(command -v nvim)" ] && alias vim="nvim" vimdiff="nvim -d"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec ${SHELL} -l"

alias q="exit"
alias c="clear"
alias rr="rm -rf -Iv"
alias cp="cp -iv"
alias mv="mv -iv"
alias mkd="mkdir -pv"
alias mkdir="mkdir -pv"
alias sdn="shutdown -h now"
alias clipclr="printf '' | xclip -selection clipboard"

alias .h="cd $HOME"
alias .1="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."

alias dox="cd ~/personal/dox"
alias dl="cd ~/personal/dl"
alias pix="cd ~/personal/pix"
alias vid="cd ~/personal/vid"
alias conf="cd ~/.config"
alias srpt="cd ~/.local/scripts"

alias n="newsboat"
alias e="$EDITOR"
alias v="$EDITOR"
alias z="zathura"
alias mpv="setsid -f mpv"
alias sxiv="setsid -f sxiv"

alias ls="exa -a --color=always --icons --group-directories-first"
alias ll="exa -la --color=always --icons --group-directories-first"
alias tree="exa -a --color=always --icons --group-directories-first -T"
