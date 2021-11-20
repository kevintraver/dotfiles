source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

chruby ruby-2.7.2

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit light-mode for \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl

zinit for \
  light-mode pick"history/history.plugin.zsh" belak/zsh-utils

zinit ice pick"async.zsh" src"pure.zsh"
zinit light sindresorhus/pure

zinit snippet 'https://github.com/robbyrussell/oh-my-zsh/raw/master/plugins/git/git.plugin.zsh'

zinit load zdharma-continuum/history-search-multi-word
zinit load junegunn/fzf-bin
zinit load laggardkernel/zsh-iterm2
zinit load DarrinTisdale/zsh-aliases-exa
zinit load momo-lab/zsh-abbrev-alias
zinit load MichaelAquilina/zsh-you-should-use
zinit load momo-lab/zsh-abbrev-alias
zinit load tj/git-extras
zinit load laggardkernel/zsh-thefuck
zinit load peterhurford/up.zsh
zinit load b4b4r07/enhancd
zinit load Aloxaf/fzf-tab
zinit load lincheney/fzf-tab-completion
zinit load reegnz/jq-zsh-plugin
zinit load wfxr/forgit

zinit wait lucid light-mode for \
  atinit"zicompinit; zicdreplay" \
      zdharma-continuum/fast-syntax-highlighting \
  blockf atpull'zinit creinstall -q .' \
      zsh-users/zsh-completions

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

# rails
alias rc="rails console"
alias rs="rails server"

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

bindkey -s "^[|" "fc^M"

bindkey '^p' up-line-or-search
bindkey '^n' down-line-or-search

autoload -z edit-command-line
zle -N edit-command-line
bindkey "^[\\" edit-command-line

export VISUAL="nvim +'setlocal bufhidden=wipe' +'set ft=editcommand'"
export EDITOR="nvim +'setlocal bufhidden=wipe' +'set ft=editcommand'"
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
