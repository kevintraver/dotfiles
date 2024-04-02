# edit-command-line
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^[e' edit-command-line

#exit
exit_zsh() { exit 0 }
zle -N exit_zsh
bindkey '^[w' exit_zsh
