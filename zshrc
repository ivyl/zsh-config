if [ "$TERM" = "xterm" ]; then
  if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
  else
    export TERM='xterm-color'
  fi
fi


[ -z "$PS1" ] && return

. ~/.zsh/config.zsh
. ~/.zsh/bindings.zsh
. ~/.zsh/completion.zsh
. ~/.zsh/functions.zsh
. ~/.zsh/aliases.zsh
. ~/.zsh/prompt.zsh

[ -e  ~/.rvm/scripts/rvm ] && . ~/.rvm/scripts/rvm

if [ -e  ~/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

[ -e ~/.zsh/custom.zsh ] && . ~/.zsh/custom.zsh
