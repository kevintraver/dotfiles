autoload -U promptinit; promptinit
prompt pure

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

chruby 2.6.0

alias tc='open -na /Applications/Google\ Chrome.app --args "--user-data-dir=/tmp/Chrome/`date +%s`" --remote-debugging-port --no-default-browser-check --no-first-run --enable-devtools-experiments'
alias tmpchrome='open -na /Applications/Google\ Chrome.app --args "--user-data-dir=/tmp/Chrome/`date +%s`" --no-default-browser-check --no-first-run --enable-devtools-experiments'
alias tmpchromium='open -na /Applications/Chromium.app --args "--user-data-dir=/tmp/Chromium/`date +%s`"'
alias tmpfirefox='DATE=$(date +%s) && /Applications/Firefox.app/Contents/MacOS/firefox -CreateProfile "tmp-$DATE /tmp/Firefox/$DATE" && /Applications/Firefox.app/Contents/MacOS/firefox --new-instance -P "tmp-$DATE"'

alias chromereset="rm -rf /Users/kevin/Library/Application\ Support/Google && rm -rf /Users/kevin/Library/Preferences/com.google.Chrome.plist"

alias ep='ember s --proxy http://localhost:3000'

PATH=$PATH:/Users/kevin/Library/Python/3.7/bin

autoload -Uz compinit && compinit

zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:|?=** m:{a-z\-}={A-Z\_}'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export EDITOR=subl
export VISUAL=subl
export ENHANCD_FILTER=fzf
export ENHANCD_COMPLETION_BEHAVIOR=list

alias docker-ubuntu="docker run --name ubuntu --rm -i -t ubuntu /bin/bash"

alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ip="ipconfig getifaddr en0"

# trash https://github.com/sindresorhus/trash-cli
alias rm="trash"
alias rmdir="trash"
alias del="trash"

export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk

zplugin load b4b4r07/enhancd
zplugin load Tarrasch/zsh-bd
zplugin load changyuheng/fz
zplugin load rupa/z
zplugin load zsh-users/zsh-completions
zplugin load DarrinTisdale/zsh-aliases-exa
zplugin load momo-lab/zsh-abbrev-alias
zplugin load djui/alias-tips
