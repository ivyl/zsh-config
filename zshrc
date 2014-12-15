# xterm hack for some terminals to support 256 colors
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

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
export WORKON_HOME=~/.pyenv
if [ -e /usr/bin/virtualenvwrapper_lazy.sh ]; then
    source /usr/bin/virtualenvwrapper_lazy.sh
fi

# CPAN
export PERL_LOCAL_LIB_ROOT="$PERL_LOCAL_LIB_ROOT:~/.perl5";
export PERL_MB_OPT="--install_base ~/.perl5";
export PERL_MM_OPT="INSTALL_BASE=~/.perl5";
export PERL5LIB="~/.perl5/lib/perl5:$PERL5LIB";
export PATH="$PATH:~/.perl5/bin";

[ -e ~/.zsh/custom.zsh ] && . ~/.zsh/custom.zsh

[ -e ~/.fzf.zsh ] && . ~/.fzf.zsh


# newly opened terminal should clean prompt
true
