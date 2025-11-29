# trash https://github.com/sindresorhus/trash-cli
alias rm="trash"
alias rmdir="trash"
alias del="trash"

# pwd
alias pwd="pwd | tr -d '\n'"

# Copy current working directory to clipboard
alias cwd="pwd | tr -d '\n' | pbcopy"

# eza
alias l='eza -lbF --git'
alias ls='eza'
alias ll='eza -lbGF --git'
alias llm='eza -lbGd --git --sort=modified'
alias la='eza -lbhHigUmuSa --time-style=long-iso --git --color-scale'
alias lx='eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale'
alias lS='eza -1'
alias lt='eza --tree --level=2'

