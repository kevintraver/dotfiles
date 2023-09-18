autoload -U edit-command-line
zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey "\x1b[101;9u" edit-command-line
