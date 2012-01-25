#LS
alias ls='ls --color=auto'
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias ll='ls -lh'

#EDITORS
alias e='vim'
alias vi='vim'

#COLORFULNESS
alias grep="grep --colour"

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
