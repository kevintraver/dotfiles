HISTORY_IGNORE=$(cat $DOTFILES_HOME/history/ignore_patterns.txt | tr '\n' '|')
HISTORY_IGNORE=${HISTORY_IGNORE%|}
