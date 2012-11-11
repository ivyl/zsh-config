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


PROMPT="${at_bold}%m ${fg_red}%n ${fg_blue}%c\${vcs_info_msg_0_} %(?/${at_normal}/${fg_red})%%${at_normal} "


# change cursor color basing on vi mode
zle-keymap-select () {
  if [ $KEYMAP = vicmd ]; then
    if [[ $TMUX = '' ]]; then
      echo -ne "\033]12;Red\007"
    else
      printf '\033Ptmux;\033\033]12;red\007\033\\'
    fi
  else
    if [[ $TMUX = '' ]]; then
      echo -ne "\033]12;Grey\007"
    else
      printf '\033Ptmux;\033\033]12;grey\007\033\\'
    fi
  fi
}
zle-line-finish() {
  if [[ $TMUX = '' ]]; then
    echo -ne "\033]12;Grey\007"
  else
    printf '\033Ptmux;\033\033]12;grey\007\033\\'
  fi
}
zle-line-init () {
  zle -K viins
  echo -ne "\033]12;Grey\007"
}
zle -N zle-keymap-select
zle -N zle-line-init
zle -N zle-line-finish
