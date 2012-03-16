#display ls -ld for each directory leading to file we given, from someone's .zshrc
lspath () {
        if [ "$1" = "${1##/}" ]
        then
	    pathlist=(/ ${(s:/:)PWD} ${(s:/:)1})
	else
	    pathlist=(/ ${(s:/:)1})
	fi
        allpaths=()
        filepath=$pathlist[0]
        shift pathlist
        for i in $pathlist[@]
        do
                allpaths=($allpaths[@] $filepath) 
                filepath="${filepath%/}/$i" 
        done
        allpaths=($allpaths[@] $filepath) 
        ls -ld "$allpaths[@]"
}
