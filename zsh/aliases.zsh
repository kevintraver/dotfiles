# temporary browsers profiles functions
alias tc='temp-google-chrome'
alias tcp='temp-google-chrome-proxy'
alias tf='temp-firefox'

# trash https://github.com/sindresorhus/trash-cli
alias rm="trash"
alias rmdir="trash"
alias del="trash"

# osx
# networking
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ip="ipconfig getifaddr en0"

# proxy
alias proxyon="networksetup -setsocksfirewallproxy Wi-Fi 127.0.0.1 8080"
alias proxyoff="networksetup -setsocksfirewallproxystate Wi-Fi off"

alias proxy="mitmproxy --mode socks5 --showhost"

# docker
alias dcu="docker compose up"
alias docker-ubuntu="docker run --name ubuntu --rm -i -t ubuntu"

# turbo dev
alias dev="npm run dev"

# ember
alias ep='ember s --proxy http://localhost:3000'

# clipboard
alias pbc='pbcopy'
alias pbp='pbpaste'

# xsv
alias csv='xsv'

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

# terminal apps

# lazygit
alias lg='lazygit'
alias gl='lazygit'

# git
alias gs="git status"
alias ghb="gh browse"
alias gca="git add -A && git commit --verbose --no-edit --amend"
alias gu="git undo"

# The aliases ensure noglob is used
alias ytdl='noglob tmux-yt-dlp'
alias ytd='noglob tmux-yt-dlp'
alias dlv='noglob tmux-yt-dlp'
alias ytda='noglob tmux-yt-dlp -x --audio-format mp3'
alias dla='noglob tmux-yt-dlp -x --audio-format mp3'

# tmux
alias t="tmux attach || tmux new"

# speed
alias speedtest="networkQuality"

# windsurf
alias ws="windsurf"

# windsurf
alias w="windsurf"

# cursor
alias c="cursor"

# cursor-agent
alias ca="cursor-agent"

# opencode
alias oc="opencode"

# claude
alias cl="claude"

# claude
alias cc="claude"

# gemini
alias gg="gemini"

# codex
alias co="codex --search"

# editor
alias e="$EDITOR"
alias n="$EDITOR"

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

# update homebrew packages
alias bu='brew update && brew upgrade'