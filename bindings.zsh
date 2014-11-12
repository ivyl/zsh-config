#vi mode
bindkey -v

#get rid of esc escape sequence latency
export KEYTIMEOUT=1

#ctrl-p ctrl-n history navigation
bindkey '^P' up-history
bindkey '^N' down-history

#backspace working even after returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

#ctrl-w removed word backwards
bindkey '^w' backward-kill-word

#and it should behave as in bash
autoload -U select-word-style
select-word-style bash

#ctrl-f edit current buffer in editor
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^f' edit-command-line

