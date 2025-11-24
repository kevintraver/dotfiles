# osx apps

# brave
alias brave='open -na /Applications/Brave\ Browser.app --args "--user-data-dir=/tmp/Brave/`date +%s`" --no-default-browser-check --no-first-run --enable-devtools-experiments'

# chromium
alias tmpchromium='open -na /Applications/Chromium.app --args "--user-data-dir=/tmp/Chromium/`date +%s`"'

# firefox
alias tf='DATE=$(date +%s) && /Applications/Firefox.app/Contents/MacOS/firefox -CreateProfile "tmp-$DATE /tmp/Firefox/$DATE" && /Applications/Firefox.app/Contents/MacOS/firefox --new-instance -P "tmp-$DATE" &!'

# chrome
alias tc='open -na /Applications/Google\ Chrome.app --args "--user-data-dir=/tmp/Chrome/`date +%s`" --no-default-browser-check --no-first-run --enable-devtools-experiments --disable-notifications'
alias tcp='open -na /Applications/Google\ Chrome.app --args "--user-data-dir=/tmp/Chrome/`date +%s`" --no-default-browser-check --no-first-run --enable-devtools-experiments --disable-notifications --proxy-server="http://localhost:8080"'

alias reset-chrome="/bin/rm -rf /Users/kevin/Library/Application\ Support/Google && /bin/rm -rf /Users/kevin/Library/Preferences/com.google.Chrome.plist"
alias reset-firefox='/bin/rm -rf /Users/kevin/Library/Application\ Support/Firefox && /bin/rm -rf /Users/kevin/Library/Preferences/org.mozilla.firefox.plist'

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
alias gca='cursor-agent -p "$(get_prompt git_commit_all)" --model composer-1'

# use gcb to review changes, create branch, and commit with cursor composer-1
alias gcb='cursor-agent -p "$(get_prompt git_commit_branch)" --model composer-1'

# use gcc to git commit with short description with cursor composer-1
alias gcc='cursor-agent -p "$(get_prompt git_commit_short)" --model composer-1'

# use gcd to git commit with detailed description with cursor composer-1
alias gcd='cursor-agent -p "$(get_prompt git_commit_detailed)" --model composer-1'

# use gcs to git commit staged changes with cursor composer-1
alias gcs='cursor-agent -p "$(get_prompt git_commit_staged)" --model composer-1'

# update homebrew packages
alias bu='brew update && brew upgrade'