. ~/.zsh/colors.zsh

autoload -Uz vcs_info
zstyle ':vcs_info:*' stagedstr "${fg_blue}?"
zstyle ':vcs_info:*' unstagedstr "${fg_brown}?"
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn
precmd () {
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
        zstyle ':vcs_info:*' formats "${at_normal} ${fg_dgray}%b%c%u${at_normal}"
    } else {
        zstyle ':vcs_info:*' formats "${at_normal} ${fg_dgray}%b%c%u${fg_red}!${at_normal}"
    }
 
    vcs_info
}
 
setopt prompt_subst

#PROMPT="${at_bold}${fg_dgray}[ ${fg_red}%n ${fg_white}%~ ${fg_dgray}] ${fg_white}\$${at_normal} "

#prompt with hostname (old, simple)
#PROMPT="${at_bold}${fg_dgray}[ ${fg_red}%n${fg_white}@%m %~\${vcs_info_msg_0_} ${fg_dgray}] ${fg_white}\$${at_normal} "

#new testing prompt version
PROMPT="${at_bold}%m ${fg_red}%n ${fg_blue}%c\${vcs_info_msg_0_} %(?/${at_normal}/${fg_red})%%${at_normal} "
