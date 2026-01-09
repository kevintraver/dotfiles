# Unalias oh-my-zsh git plugin aliases
unalias g 2>/dev/null
unalias gca 2>/dev/null
unalias gcb 2>/dev/null
unalias gcc 2>/dev/null
unalias gcd 2>/dev/null
unalias gcs 2>/dev/null

# git
alias g="lazygit"
alias gs="git status"
alias ghb="gh browse"
alias gu="git undo"

# use gca to git commit all changes with opencode and claude
alias gca='opencode run "$(get_prompt gca)" -m "anthropic/claude-opus-4-5"'

# use gcb to review changes, create branch, and commit with opencode and claude
alias gcb='opencode run "$(get_prompt gcb)" -m "anthropic/claude-opus-4-5"'

# use gcc to git commit with short description with opencode and claude
alias gcc='opencode run "$(get_prompt gcc)" -m "anthropic/claude-opus-4-5"'

# use gcd to git commit with detailed description with opencode and claude
alias gcd='opencode run "$(get_prompt gcd)" -m "anthropic/claude-opus-4-5"'

# use gcs to git commit staged changes with opencode and claude
alias gcs='opencode run "$(get_prompt gcs)" -m "anthropic/claude-opus-4-5"'

