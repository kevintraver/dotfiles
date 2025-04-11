# neovim-remote
if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
  alias nvim="nvr -s --remote-wait"
  export VISUAL="nvr -s --remote-wait"
  export EDITOR="nvr -s --remote-wait"
else
  export VISUAL="nvim"
  export EDITOR="nvim"
fi
