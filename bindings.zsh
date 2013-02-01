#vi mode
bindkey -v

#ctrl-p ctrl-n history navigation
bindkey '^P' up-history
bindkey '^N' down-history

#backspace working even after returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

#ctrl-w removed word backwards
bindkey '^w' backward-delete-word

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^f' edit-command-line

