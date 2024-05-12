# neovim-remote
if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
  alias nvim="nvr -s -l --remote-wait"
  export VISUAL="nvr -s -l --remote-wait"
  export EDITOR="nvr -s -l --remote-wait"
else
  export VISUAL="nvim"
  export EDITOR="nvim"
fi

# editor
alias e="$EDITOR"
alias n="$EDITOR"

alias code="$EDITOR"
