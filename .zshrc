source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

chruby ruby-2.7.2

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit light-mode for \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

zinit for \
  light-mode pick"history/history.plugin.zsh" belak/zsh-utils

zinit ice pick"async.zsh" src"pure.zsh"
zinit light sindresorhus/pure

zinit load zdharma/history-search-multi-word
zinit load junegunn/fzf-bin
zinit load laggardkernel/zsh-iterm2
zinit load DarrinTisdale/zsh-aliases-exa
zinit load momo-lab/zsh-abbrev-alias
zinit load MichaelAquilina/zsh-you-should-use
zinit load momo-lab/zsh-abbrev-alias
zinit load tj/git-extras
zinit load gretzky/n.zsh
zinit load laggardkernel/zsh-thefuck
zinit load peterhurford/up.zsh
zinit load agkozak/zsh-z
zinit load b4b4r07/enhancd
zinit load Aloxaf/fzf-tab
zinit load lincheney/fzf-tab-completion

zinit wait lucid light-mode for \
  atinit"zicompinit; zicdreplay" \
      zdharma/fast-syntax-highlighting \
  blockf atpull'zinit creinstall -q .' \
      zsh-users/zsh-completions

autoload -U compinit && compinit

source ~/.dotfiles/.aliases.zshrc

zstyle ':completion:*' matcher-list \
  'M:{a-zA-Z}={a-zA-Z}' \
  'm:{a-zA-Z}={A-Za-z}' \
  'm:{a-zA-Z}={A-Za-z} l:|=*' \
  'r:|[._-]=* r:|=*' 'l:|=* r:|=*'


source ~/.zshrc.local