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

mkday()
{
    DIRNAME="$(date +'%Y%m%d')_$1"
    echo $DIRNAME
    mkdir $DIRNAME
    cd $DIRNAME
    cp /run/media/$USER/disk/DCIM/*/*(.) .
}


# HOOKS, INTERNALS, ETC
autoload -U add-zsh-hook

etime_preexec() {
    _LAUNCH_TIME=$SECONDS
}
add-zsh-hook preexec etime_preexec

etime_precmd() {
    ETIME=$((SECONDS-_LAUNCH_TIME))
}
add-zsh-hook precmd etime_precmd

bell_precmd() {
    echo -ne "\a"
}
add-zsh-hook precmd bell_precmd
