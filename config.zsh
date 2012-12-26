#HISTORY
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1717

setopt inc_append_history
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify
setopt hist_allow_clobber

#ZSH OPTS
setopt noclobber
setopt extendedglob
setopt correct correctall
setopt autolist
setopt auto_resume
setopt short_loops #for file in *.pdf; lp ${file}

unset beep
set nobeep


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


#LOAD PROFILE
if [ -x /etc/profile ]; then
    setopt -G
    . /etc/profile
    setopt +G
fi

#PATH
PATH="$PATH:$HOME/.bin"


#EXPORTS
export PAGER='less'
export EDITOR='vim'
export VISUAL='vim'
export LESS=-ex3MRXSF

#loading functions
autoload -Uz zmv
