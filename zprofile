export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"

if [ -e  ~/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

#LOAD PROFILE
if [ -x /etc/profile ]; then
    setopt -G
    . /etc/profile
    setopt +G
fi

#PATH
export PATH="$PATH:$HOME/bin:$HOME/bin-priv:$HOME/.config/sway/bin"
export MOZ_USE_OMTC=1

# LOCAL CPAN
export PERL_LOCAL_LIB_ROOT="$PERL_LOCAL_LIB_ROOT:~/.perl5";
export PERL_MB_OPT="--install_base ~/.perl5";
export PERL_MM_OPT="INSTALL_BASE=~/.perl5";
export PERL5LIB="~/.perl5/lib/perl5:$PERL5LIB";
export PATH="$PATH:~/.perl5/bin";
