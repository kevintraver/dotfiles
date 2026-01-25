# edit-command-line
autoload -U edit-command-line
zle -N edit-command-line

# wrapper to move cursor to end after editing
edit-command-line-end() {
  zle edit-command-line
  CURSOR=$#BUFFER
}
zle -N edit-command-line-end
bindkey '^[e' edit-command-line-end
bindkey '^g' edit-command-line-end

#exit
exit_zsh() { exit 0 }
zle -N exit_zsh
bindkey '^[w' exit_zsh

# copy current line to clipboard
copy-line-to-clipboard() { echo -n "$BUFFER" | pbcopy }
zle -N copy-line-to-clipboard
bindkey '^y' copy-line-to-clipboard
