autoload -Uz compinit
compinit

# Get completion above command line
setopt noalwayslastprompt
setopt noauto_remove_slash
setopt list_types
setopt complete_in_word
unlimit

pids4kill() {
    local -a ps

    if [[ $oldcontext = *:sudo:* ]]
    then
        local u=$opt_args[-u]
        if [[ -n $u ]]
        then
            ps=(ps -u $u)
        else
            ps=(ps -A)
        fi
    else
        ps=(ps -u $USER)
    fi
    $ps -o pid,%cpu,tty,cputime,cmd
}

man_glob () {
    local a
    read -cA a
    if [[ $a[2] = [0-9]* ]] then  # BSD section number
        reply=( $^manpath/man$a[2]/$1*$2(N:t:r) )
    elif [[ $a[2] = -s ]] then    # SysV section number
        reply=( $^manpath/man$a[3]/$1*$2(N:t:r) )
    else
        reply=( $^manpath/man*/$1*$2(N:t:r) )
    fi
}
compctl -K man_glob man
compctl -k hostnames ping telnet ftp nslookup ssh traceroute mtr scp ncftp

# Complete commmands after .
compctl -c .

ZSHCAHCEDIR=/tmp/$USER-zsh-cache

zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort access
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' '+m:{a-z}={A-Z}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path $ZSHCAHCEDIR
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command pids4kill
zstyle ':completion:::::' completer _complete _approximate
zstyle ':completion:*:approximate:*' max-errors 2
zstyle ':completion:*' completer _complete _prefix
zstyle ':completion::prefix-1:*' completer _complete
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:predict:*' completer _complete # Completion caching
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSHCAHCEDIR/$HOST # Expand partial paths
zstyle ':completion:*:functions' ignored-patterns '_*'
zstyle ':completion:*' squeeze-slashes 'yes' # Include non-hidden directories in globbed file completions
zstyle ':completion:*:complete:-command-::commands' ignored-patterns '*\~' # Separate matches into groups
zstyle ':completion:*:matches' group 'yes' # Describe each match group.
zstyle ':completion:*:descriptions' format "%B---- %d%b" # Messages/warnings format
zstyle ':completion:*:messages' format '%B%U---- %d%u%b'
zstyle ':completion:*:warnings' format '%B%U---- no match for: %d%u%b' # Describe options in full
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'

