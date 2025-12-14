if [[ -r "$DOTFILES_HOME/zsh/history/ignore_patterns.txt" ]]; then
  # Build a single '|' separated pattern list without spawning subprocesses.
  typeset -a _history_ignore_lines
  _history_ignore_lines=(${(f)"$(<"$DOTFILES_HOME/zsh/history/ignore_patterns.txt")"})
  HISTORY_IGNORE="${(j:|:)${_history_ignore_lines:#}}"
  unset _history_ignore_lines
fi

export HISTFILESIZE=100000
export HISTSIZE=100000
