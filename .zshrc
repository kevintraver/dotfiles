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

zinit ice pick"async.zsh" src"pure.zsh"
zinit light sindresorhus/pure

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
zinit light Aloxaf/fzf-tab

autoload -U compinit && compinit

source ~/.dotfiles/.aliases.zshrc