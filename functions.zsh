# USABLE FUNCTIONS
#display ls -ld for each directory leading to file we given, from someone's .zshrc
lspath () {
    if [ "$1" = "${1##/}" ]; then
        pathlist=(/ ${(s:/:)PWD} ${(s:/:)1})
    else
        pathlist=(/ ${(s:/:)1})
    fi
        allpaths=()
        filepath=$pathlist[0]
        shift pathlist

        for i in $pathlist[@]; do
                allpaths=($allpaths[@] $filepath) 
                filepath="${filepath%/}/$i" 
        done
        allpaths=($allpaths[@] $filepath) 
        ls -ld "$allpaths[@]"
}


# HOOKS, INTERNALS, ETC
etime_preexec() {
    _LAUNCH_TIME=$SECONDS
}

etime_precmd() {
    ETIME=$((SECONDS-_LAUNCH_TIME))
}

pacwrap() {
    case "$1" in
        -S|-Syu|-Su|-Ss|-Ssq|-Si|-G) packer $@ ;;
        -R*|-U*) sudo pacman $@ ;;
        *)   pacman $@ ;;
    esac
}

autoload -U add-zsh-hook
add-zsh-hook preexec etime_preexec
add-zsh-hook precmd etime_precmd
