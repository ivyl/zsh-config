autoload -Uz vcs_info
zstyle ':vcs_info:*' stagedstr "%{$fg[blue]%}?"
zstyle ':vcs_info:*' unstagedstr "%{$fg[yellow]%}?"
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' enable git

precmd () {
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
        zstyle ':vcs_info:*' formats "%{$fg[green]%} %b%c%u%{$reset_color%}"
    } else {
        zstyle ':vcs_info:*' formats "%{$fg[green]%} %b%c%u%{$fg[red]%}!%{$reset_color%}"
    }
    vcs_info
}

autoload -U colors && colors
setopt prompt_subst

PROMPT="%{$fg[white]%}%m %{$fg[red]%}%n %{$fg[blue]%}%c\${vcs_info_msg_0_} %(?/%{$fg[white]%}/%{$fg[red]%})%%%{${reset_color}%} "

INSERT_PROMPT='\033[6 q'
COMMAND_PROMPT='\033[2 q'

zle-keymap-select () {
    if [ $KEYMAP = vicmd ]; then
        echo -ne $COMMAND_PROMPT
    else
        echo -ne $INSERT_PROMPT
    fi
}

zle-line-finish() {
    echo -ne $INSERT_PROMPT
}

zle-line-init () {
    zle -K viins
    echo -ne $INSERT_PROMPT
}

zle -N zle-keymap-select
zle -N zle-line-init
zle -N zle-line-finish
