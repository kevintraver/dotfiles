# Delete to the start of the line
bindkey '^u' backward-kill-line

# Edit the command in $EDITOR, then leave the cursor at the end
autoload -Uz edit-command-line
zle -N edit-command-line
edit-command-line-end() {
  zle edit-command-line
  CURSOR=$#BUFFER
}
zle -N edit-command-line-end
bindkey '^[e' edit-command-line-end
bindkey '^g' edit-command-line-end

# Exit the shell
exit-zsh() { exit 0 }
zle -N exit-zsh
bindkey '^[w' exit-zsh

# Copy the current line to the clipboard
copy-line-to-clipboard() { print -rn -- "$BUFFER" | pbcopy }
zle -N copy-line-to-clipboard
bindkey '^y' copy-line-to-clipboard
