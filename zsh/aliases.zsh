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

# yt-dlp with tmux
function tmux-yt-dlp() {
  # Quote each argument individually for the command to be run by tmux
  local quoted_args=()
  for arg in "$@"; do
    # (q) quotes the argument safely for shell interpretation by the inner shell
    quoted_args+=(${(q)arg})
  done

  # Command to run: yt-dlp, then start a new shell in the same pane to keep it open
  local cmd="yt-dlp -P ~/YouTube ${quoted_args[*]}; exec \$SHELL"

  if tmux has-session -t ytdl 2>/dev/null; then
    # If session 'ytdl' exists, create a new window in it.
    # tmux should automatically switch focus to the new window.
    tmux new-window -t ytdl -- "$cmd"
  else
    # If session 'ytdl' does not exist, create a new session.
    # By removing the '-d' flag, tmux will create AND attach to this new session.
    tmux new-session -s ytdl -- "$cmd"
  fi
}

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

# opencode
alias oc="opencode"

# claude
alias cl="claude"

# codex
alias co="codex --search"

# Copy absolute path of a file to clipboard
copypath() {
  local filepath=$(realpath "$1" 2>/dev/null)
  if [[ -e "$filepath" ]]; then
    echo "$filepath" | pbcopy
    echo "Copied: $filepath"
  else
    echo "File not found: $1" >&2
    return 1
  fi
}

# editor
alias e="$EDITOR"
alias n="$EDITOR"

# use aic to git commit with opencode
alias aic='opencode run "Commit all the current changes with detailed messages using git commit conventional syntax" -m "opencode/grok-code"'

# use aics to git commit staged changes with opencode
alias aics='opencode run "Commit all the staged changes with detailed messages using git commit conventional syntax" -m "opencode/grok-code"'

# use aib to review changes, create branch, and commit with opencode
alias aib='opencode run "Review all the uncommitted changes. Then create a new branch with a name based on theses features. Then commit the changes with detailed messages using git commit conventional syntax" -m "opencode/grok-code"'