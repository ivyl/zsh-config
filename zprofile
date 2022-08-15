export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"

export EDITOR='nvim'
export VISUAL='nvim'
export DIFFPROG='nvim -d'

if [ -x /etc/profile ]; then
    setopt -G
    . /etc/profile
    setopt +G
fi

export PATH="$PATH:$HOME/bin:$HOME/.config/sway/bin"

# local Ruby Gems
>> /dev/null which gem && export PATH="$PATH:$(ruby -e "print Gem.user_dir")/bin"

export MOZ_ENABLE_WAYLAND=1
export MOZ_USE_OMTC=1
export _JAVA_AWT_WM_NONREPARENTING=1
