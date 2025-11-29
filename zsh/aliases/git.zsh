# git
alias gs="git status"
alias ghb="gh browse"
alias gu="git undo"

# Unalias oh-my-zsh git plugin aliases to use for AI commits
unalias gca 2>/dev/null
unalias gcb 2>/dev/null
unalias gcc 2>/dev/null
unalias gcd 2>/dev/null
unalias gcs 2>/dev/null

# use gca to git commit all changes with cursor composer-1
alias gca='cursor-agent -p "$(get_prompt gca)" --model composer-1'

# use gcb to review changes, create branch, and commit with cursor composer-1
alias gcb='cursor-agent -p "$(get_prompt gcb)" --model composer-1'

# use gcc to git commit with short description with cursor composer-1
alias gcc='cursor-agent -p "$(get_prompt gcc)" --model composer-1'

# use gcd to git commit with detailed description with cursor composer-1
alias gcd='cursor-agent -p "$(get_prompt gcd)" --model composer-1'

# use gcs to git commit staged changes with cursor composer-1
alias gcs='cursor-agent -p "$(get_prompt gcs)" --model composer-1'

