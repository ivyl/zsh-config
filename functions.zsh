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

up() {
    local name=$(uuidgen | cut -d- -f5)
    local ext="txt"
    local place="p"

    if [ -n "$1" ]; then
        ext="${1##*.}"
        local ext_length="$(expr length "$ext")"
        if [ "$ext_length" -ne 3 -a "$ext_length" -ne 4 ]; then
            echo "$ext $ext_length"
            echo "extensions should be 3 or 4!"
            return 1
        fi
        place="f"
    fi

    if [ -n "$1" ]; then
        scp "$1" verne:hiler.eu/$place/$name.$ext
    else
        ssh verne cat \> hiler.eu/$place/$name.$ext
    fi

    echo https://hiler.eu/$place/$name.$ext
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
