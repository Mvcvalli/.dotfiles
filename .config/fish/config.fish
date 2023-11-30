# Exports
set fish_greeting
set -x EDITOR nvim
set -x VISUAL nvim
set -x BROSWER librewolf
set -x TERMINAL alacritty
set -x IMAGE setsid -f nsxiv
set -x VIDEO setsid -f mpv
set -x READER setsid -f zathura
set -x RSS newsboat
set -x MANPAGER "nvim +Man!"

# Prompt
function fish_prompt
	set_color red --bold
	printf "["
	set_color yellow
	printf "%s" "mason"
	set_color green
	printf "@"
	set_color blue
	printf "%s" "art"
	set_color magenta
	printf " %s" "$PWD"
	set_color red
	printf "] "
	set_color normal
end

# Automatically install fundle (package manager)
if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end

# Plugins
fundle plugin "edc/bass"
fundle plugin "jorgebucaran/autopair.fish"
fundle init

# Abbreviations
abbr cld "git clone --depth 1"
abbr pdw "pwd"
abbr cd.. "cd .."

# Aliases
alias q="exit"
alias c="clear"
alias rr="rm -rf -Iv"
alias cp="cp -iv"
alias mv="mv -iv"
alias mkd="mkdir -pv"
alias mkdir="mkdir -pv"
alias mkex="chmod +x"
alias sdn="shutdown -h now"

alias .h="cd $HOME"
alias .1="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."

alias n="$RSS"
alias e="$EDITOR"
alias v="$EDITOR"
alias z="$READER"
alias mpv="$VIDEO"
alias sxiv="$IMAGE"
alias nsxiv="$IMAGE"

alias ls="exa -a --color=always --icons --group-directories-first"
alias tree="exa -a --color=always --icons --group-directories-first -T"
