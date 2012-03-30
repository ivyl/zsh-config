[ -e  ~/.rvm/scripts/rvm ] && . ~/.rvm/scripts/rvm
if [ -e  ~/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

