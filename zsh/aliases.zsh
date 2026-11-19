# Files
alias del="trash"
alias cwd='print -rn -- $PWD | pbcopy'
alias pbc='pbcopy'
alias pbp='pbpaste'

# eza
alias ls='eza'
alias ll='eza -lbGF --git'
alias llm='eza -lbGd --git --sort=modified'
alias la='eza -lbhHigUmuSa --time-style=long-iso --git --color-scale'
alias lx='eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale'
alias lS='eza -1'
alias lt='eza --tree --level=2'

# git
alias gl='lazygit'
alias gs="git status"
alias gup="git pull --rebase"
alias ghb="gh browse"
alias gu="git undo"

# Editors and agents
alias e="$EDITOR"
alias c="claude"
alias cr="claude --resume"
alias cco="claude --continue"
alias co="codex"
alias oc="opencode"

# Tools
alias t="tmux attach || tmux new"
alias y="yazi"
alias le="lumen explain"
alias lmd="lumen draft"
alias lh="lumen list"
alias d="lumen diff"
alias dev="dev3000 --no-agent"
alias mastra="npm run mastra"

# yt-dlp in a tmux queue (functions/tmux.zsh); noglob keeps URLs intact
alias ytdl='noglob tmux-yt-dlp'
alias ytda='noglob tmux-yt-dlp -x --audio-format mp3'

# Temporary browser profiles (functions/browsers)
alias tc='temp-google-chrome'
alias tcp='temp-google-chrome-proxy'
alias tcr='temp-google-chrome-resume'
alias tf='temp-firefox'

# Docker
alias dcu="docker compose up"
alias docker-ubuntu="docker run --name ubuntu --rm -i -t ubuntu"

# Updates (brew, mise, Rust, Neovim)
alias ua='update-packages'

# Networking
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ip="ipconfig getifaddr en0"
alias proxyon="networksetup -setsocksfirewallproxy Wi-Fi 127.0.0.1 8080"
alias proxyoff="networksetup -setsocksfirewallproxystate Wi-Fi off"
alias proxy="mitmproxy --mode socks5 --showhost"
alias speedtest="networkQuality"
