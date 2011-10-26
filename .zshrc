[ -e  ~/.rvm/scripts/rvm ] && . ~/.rvm/scripts/rvm

if [ "$TERM" = "xterm" ]; then
  if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
  else
    export TERM='xterm-color'
  fi
fi


[ -z "$PS1" ] && return

. ~/.zsh/config
. ~/.zsh/completion
. ~/.zsh/functions
. ~/.zsh/aliases
. ~/.zsh/prompt
[ -e ~/.zsh/custom ] && . ~/.zsh/custom
