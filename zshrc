ZSH_CONFIG_DIR="$(dirname $(readlink -f $HOME/.zshrc))"

. $ZSH_CONFIG_DIR/config.zsh
. $ZSH_CONFIG_DIR/bindings.zsh
. $ZSH_CONFIG_DIR/completion.zsh
. $ZSH_CONFIG_DIR/functions.zsh
. $ZSH_CONFIG_DIR/prompt.zsh

[ -e $ZSH_CONFIG_DIR/custom.zsh ] && . $ZSH_CONFIG_DIR/custom.zsh

# local Ruby Gems
>> /dev/null which gem && export PATH="$PATH:$(ruby -e "print Gem.user_dir")/bin"

# FZF
[ -e ~/.fzf.zsh ] && . ~/.fzf.zsh
[ -e /usr/share/fzf/completion.zsh ] && . /usr/share/fzf/completion.zsh
[ -e /usr/share/fzf/key-bindings.zsh ] && . /usr/share/fzf/key-bindings.zsh

# the checks above may fail
# let's not pollute $? indicator in new shells
true
