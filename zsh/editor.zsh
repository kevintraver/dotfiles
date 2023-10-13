if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
  alias nvim="nvr -l --remote-wait +'set bufhidden=wipe'"
fi

if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
  export VISUAL="nvr -l --remote-wait +'set bufhidden=wipe'"
  export EDITOR="nvr -l --remote-wait +'set bufhidden=wipe'"
else
  export VISUAL="nvim"
  export EDITOR="nvim"
fi

# editor
alias e="$EDITOR"
alias n="$EDITOR"

alias code="$EDITOR"
