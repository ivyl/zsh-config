#LS
alias ls='ls --color=auto'
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable

#EDITORS
alias e='vim'
alias vi='vim'

#COLORFULNESS
alias grep="grep --colour"

#no vim to .vim corretion and expandig of aliases after sudo (tailing space)
alias sudo='nocorrect sudo '

#DIRS
alias -g ...='../../'           #cd ...
alias -g ....='../../../'       #cd ....
alias -g .....='../../../../'   #cd .....

#sprunge paste service
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"

#common arch aliases
alias y="yaourt"
alias yn="y --noconfirm"
alias rfkill="sudo rfkill"
alias sc="systemctl"
alias uu="udiskie-umount"

