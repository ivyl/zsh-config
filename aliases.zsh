#LS
alias ls='ls --color=auto'
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias ll='ls -lh'

#EDITORS
alias e='vim'
alias vi='vim'
alias v="gvim --remote-silent"

#COLORFULNESS
alias grep="grep --colour"

#no vim to .vim corretion and expandig of aliases after sudo (tailing space)
alias sudo='nocorrect sudo '

#NO CORRECTION for those
alias mv='nocorrect mv'
alias cp='nocorrect cp'
alias mkdir='nocorrect mkdir'
alias man='nocorrect man'
alias mysql='nocorrect mysql'

#DIRS
alias -g ...='../../'           #cd ...
alias -g ....='../../../'       #cd ....
alias -g .....='../../../../'   #cd .....

#reload configuration
alias refresh='source ~/.zshrc'
alias treload="xrdb -merge ~/.Xresources"

#launch another rxvt
alias t="nohup urxvt 2&> /dev/null > /dev/null &"

#sprunge paste service
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"

#opening
alias o="xdg-open"

#common arch aliases
alias y=yaourt
alias yn="y --noconfirm"
alias rc.d="sudo rc.d"

