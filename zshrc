if [ "$TERM" = "xterm" ]; then
  if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
  else
    export TERM='xterm-color'
  fi
fi


[ -z "$PS1" ] && return

. ~/.zsh/config.zsh
. ~/.zsh/completion.zsh
. ~/.zsh/functions.zsh
. ~/.zsh/aliases.zsh
. ~/.zsh/prompt.zsh
[ -e ~/.zsh/custom.zsh ] && . ~/.zsh/custom.zsh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
