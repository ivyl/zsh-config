#HISTORY
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=1500

setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS

setopt HIST_VERIFY

setopt HIST_ALLOW_CLOBBER
setopt NO_CLOBBER

setopt CORRECT
setopt AUTO_LIST
setopt AUTO_RESUME
setopt SHORT_LOOPS #for file in *.pdf; lp ${file}

set NOBEEP

#PAGER
export PAGER='less'
export LESS=-ex3MRXSF
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;30m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export GROFF_NO_SGR=yes

# bell when terminal is ready
autoload -U add-zsh-hook
bell_precmd() {
    echo -ne "\a"
}
add-zsh-hook precmd bell_precmd
