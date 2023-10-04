export MCFLY_RESULTS_SORT=LAST_RUN

zinit ice lucid wait"0a" from"gh-r" as"program" atload'eval "$(mcfly init zsh)"'
zinit light cantino/mcfly
