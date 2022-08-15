autoload -Uz compinit && compinit
autoload -U colors && colors

# Get completion above command line
setopt noalwayslastprompt
setopt noauto_remove_slash
setopt list_types
setopt complete_in_word

ZSHCAHCEDIR=/tmp/$USER-zsh-cache

zstyle ':completion:*' cache-path $ZSHCAHCEDIR
zstyle ':completion:*' use-cache on

zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort modification
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*:approximate:*' max-errors 2
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;35'
zstyle ':completion:*:*:kill:*:processes' command 'ps xo pid,user:10,cmd'
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:predict:*' completer _complete

zstyle ':completion:*:functions' ignored-patterns '_*'
zstyle ':completion:*' squeeze-slashes 'yes'
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:descriptions' format "$fg[yellow]%B---- %d%b"
zstyle ':completion:*:messages' format "$fg[blue]%B---- %d%b"
zstyle ':completion:*:warnings' format "$fg[red]%B---- no match for:${reset_color} %d%b"
