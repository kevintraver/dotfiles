# https://github.com/jingweno/ccat
alias cat=ccat

# https://github.com/nicolargo/glances
alias top=glances
alias htop=glances

# https://github.com/ogham/exa
alias ls='exa -l'

alias l='ls'
alias ll='ls'
alias la='ls -a'
alias lr='ls -R'
alias lm='ls -m'
alias lx='ls -x'
alias lk='ls --sort=size -r'
alias lt='ls -T'
alias ltr='ls -T'
alias lc='lt -c'
alias lu='lt -u'

# https://github.com/mfaerevaag/wd
alias j=wd

# git
alias gs='git status'
alias gl='git-foresta -10 --reverse'
alias gds='git diff --staged'

# time
alias utime="date +%s"

# rg
alias ag='rg'

# trash ://github.com/sindresorhus/trash-cli
alias rm="trash"
alias rmdir="trash"
alias del="trash"

alias cdr='cd $(git rev-parse --show-cdup)'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ipwifi="ipconfig getifaddr en0"

# folders
alias dot="cd ~/.dotfiles"
alias code="cd ~/code"

# http
alias h=http
alias sniff="sudo ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# docker
alias docker-ubuntu="docker run --name ubuntu --rm -i -t ubuntu /bin/bash"

# copy without newline
alias cpwd="pwd | tr -d '\n' | pbcopy"

# Rails
alias swagger="bundle exec rake rswag:specs:swaggerize"

# Gittower
alias gt="gittower"

# SourceTree
alias st="stree"