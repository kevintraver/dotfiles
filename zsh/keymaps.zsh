# edit-command-line
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey '\x1b[101;9u' edit-command-line

#exit
exit_zsh() { exit 0 }
zle -N exit_zsh
bindkey '^w' exit_zsh
bindkey '\x1b[119;9u' exit_zsh
