alias y=yaourt
alias rn="ssh ivyl@stallman2.rootnode.net"
alias vpn="/home/l1/Documents/vpn/vpn"
alias tlp="sudo tlp"
alias argify="ruby -e 'ARGF.each{|x|puts \"\\\"#{x.chomp}\\\"\"}'"

alias poe="ssh ivyl@poe.sigillum.cc -p 443"
alias poedb="ssh -L 3306:localhost:3306 ivyl@poe.sigillum.cc -p 443 -N"

alias rc.d="nocorrect sudo rc.d"

export JAVA_HOME=/usr/lib/jvm/java-7-openjdk

PATH="$PATH:~/.bin"
