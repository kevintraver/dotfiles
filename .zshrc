source /usr/local/opt/zinit/zinit.zsh

zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure

zinit load IngoMeyer441/zsh-easy-motion
bindkey -M vicmd 's' vi-easy-motion
bindkey -rpM viins '\e'

zinit ice compile'zsh-vim-mode.plugin.zsh' pick'zsh-vim-mode.plugin.zsh'
zinit light softmoth/zsh-vim-mode

zinit wait lucid light-mode for \
  zdharma-continuum/fast-syntax-highlighting \
  pick"history/history.plugin.zsh" \
    belak/zsh-utils \
  pick"zsh-aliases-exa.plugin.zsh" \
    DarrinTisdale/zsh-aliases-exa \
  momo-lab/zsh-abbrev-alias \
  MichaelAquilina/zsh-you-should-use \
  laggardkernel/zsh-thefuck \
  peterhurford/up.zsh \
  b4b4r07/enhancd \
  Aloxaf/fzf-tab \
  reegnz/jq-zsh-plugin \
  wfxr/forgit \
  OMZP::globalias

zinit snippet OMZP::git
zinit snippet OMZP::rails

autoload -U compinit && compinit

zstyle ':completion:*' matcher-list \
  'M:{a-zA-Z}={a-zA-Z}' \
  'm:{a-zA-Z}={A-Za-z}' \
  'm:{a-zA-Z}={A-Za-z} l:|=*' \
  'r:|[._-]=* r:|=*' 'l:|=* r:|=*'


zstyle ':completion:*:approximate:*' max-errors 2 numeric

source ~/.zshrc.local


# osx apps
alias gt="gittower"
alias gt.="gittower ."

# brave
alias brave='open -na /Applications/Brave\ Browser.app --args "--user-data-dir=/tmp/Brave/`date +%s`" --no-default-browser-check --no-first-run --enable-devtools-experiments'

# chromium
alias tmpchromium='open -na /Applications/Chromium.app --args "--user-data-dir=/tmp/Chromium/`date +%s`"'

# firefox
alias tf='DATE=$(date +%s) && /Applications/Firefox.app/Contents/MacOS/firefox -CreateProfile "tmp-$DATE /tmp/Firefox/$DATE" && /Applications/Firefox.app/Contents/MacOS/firefox --new-instance -P "tmp-$DATE" &!'
alias tmpfirefox='DATE=$(date +%s) && /Applications/Firefox.app/Contents/MacOS/firefox -CreateProfile "tmp-$DATE /tmp/Firefox/$DATE" && /Applications/Firefox.app/Contents/MacOS/firefox --new-instance -P "tmp-$DATE" &!'

# chrome
alias tmpchrome='open -na /Applications/Google\ Chrome.app --args "--user-data-dir=/tmp/Chrome/`date +%s`" --no-default-browser-check --no-first-run --enable-devtools-experiments --disable-notifications'
alias tc='open -na /Applications/Google\ Chrome.app --args "--user-data-dir=/tmp/Chrome/`date +%s`" --no-default-browser-check --no-first-run --enable-devtools-experiments --disable-notifications'
alias tcp='open -na /Applications/Google\ Chrome.app --args "--user-data-dir=/tmp/Chrome/`date +%s`" --no-default-browser-check --no-first-run --enable-devtools-experiments --disable-notifications --proxy-server="socks5://127.0.0.1:8080" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1"'

alias chromereset="rm -rf /Users/kevin/Library/Application\ Support/Google && rm -rf /Users/kevin/Library/Preferences/com.google.Chrome.plist"

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
alias docker-ubuntu="docker run --name ubuntu --rm -i -t ubuntu /bin/bash"

# ember
alias ep='ember s --proxy http://localhost:3000'

# clipboard
alias pbc='pbcopy'
alias pbp='pbpaste'

# xsv
alias csv='xsv'

alias pwdc="pwd | tr -d '\n' | tee >(pbcopy)"

# git
alias gs='git status'
alias dc='cd'

export JAVA_HOME=$(/usr/libexec/java_home)

exit_zsh() { exit }
zle -N exit_zsh
bindkey '\ew' exit_zsh
bindkey -M vicmd '\ew' exit_zsh

bindkey '^p' up-line-or-search
bindkey '^n' down-line-or-search

autoload -z edit-command-line
nvim-edit-command-line () {
  local VISUAL="nvim -c 'set ft=editcommand.zsh'"
  local EDITOR="nvim -c 'set ft=editcommand.zsh'"
  edit-command-line
}
zle -N nvim-edit-command-line
bindkey -M vicmd '\ee' nvim-edit-command-line
bindkey -M vicmd '\e^M' nvim-edit-command-line
bindkey '\ee' nvim-edit-command-line
bindkey '\e^M' nvim-edit-command-line

nvim-edit-command-line-last () {
  local VISUAL="nvim -c 'set ft=editcommand.zsh'"
  local EDITOR="nvim -c 'set ft=editcommand.zsh'"
  zle up-history
  edit-command-line
}
zle -N nvim-edit-command-line-last
bindkey -M vicmd '\e^e' nvim-edit-command-line-last
bindkey '\e^e' nvim-edit-command-line-last


export VISUAL="nvr -s"
export EDITOR="nvr -s"
# PURE_PROMPT_SYMBOL=\>

unsetopt BEEP

export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
eval "$(zoxide init zsh)"

if [ -n "$TMUX" ]; then
    eval "$(tmux show-environment -s NVIM_LISTEN_ADDRESS)"
else
    export NVIM_LISTEN_ADDRESS=/tmp/nvimsocket
fi

alias n="nnn -e"
alias l="nnn -de"
alias nnn="nnn -e"

alias nnode='/usr/local/bin/n'
export NNN_OPTS="H"
export FORGIT_COPY_CMD="tmux loadb -"

export NNN_FIFO=/tmp/nnn.fifo
export NNN_PLUG='p:preview-tui'

export FCEDIT="nvim -c 'set ft=editcommand.zsh'"

alias gu=gitui

export GLOBALIAS_FILTER_VALUES=(cd fd ls la n l)

zle -N jq-complete
bindkey '\eJ' jq-complete

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PATH="/usr/local/opt/python/libexec/bin:$PATH"

export MODE_CURSOR_VIINS="bar"

export MODE_INDICATOR_VICMD=""

zinit ice atload'chruby ruby-2.7.2' lucid
zinit snippet /usr/local/opt/chruby/share/chruby/chruby.sh

zinit snippet /usr/local/opt/chruby/share/chruby/auto.sh

export RIPGREP_CONFIG_PATH=~/.ripgreprc

alias fd="fd --case-sensitive --hidden --exclude .git"

eval "$(mcfly init zsh)"
mcfly-history-widget-insert-mode() {
  mcfly-history-widget
}
zle -N mcfly-history-widget-insert-mode
bindkey -M vicmd '^R' mcfly-history-widget-insert-mode

export MCFLY_FUZZY=true
export MCFLY_INTERFACE_VIEW=BOTTOM
export MCFLY_RESULTS_SORT=LAST_RUN

alias gl='git log --abbrev-commit -20 --pretty=oneline'
alias gll='git show HEAD'

unalias sd

# Yank to the tmux clipboard
function vi-yank-tmux {
   zle vi-yank
   echo "$CUTBUFFER" | tr -d '\n' | tmux load-buffer -
}

zle -N vi-yank-tmux
bindkey -M vicmd 'y' vi-yank-tmux

# Yank to the system clipboard
function vi-yank-system {
   zle vi-yank
   echo "$CUTBUFFER" | tr -d '\n' | pbcopy
}

zle -N vi-yank-system
bindkey -M vicmd 'Y' vi-yank-system

function vi-paste-tmux {
  CUTBUFFER=$(tmux show-buffer)
  zle vi-put-after
}
zle -N vi-paste-tmux

bindkey -a 'p' vi-paste-tmux

source $HOME/.cargo/env
