# yt-dlp with tmux, on the same dedicated tmux server as the Raycast script.
# Output location, playlist handling, and metadata embedding come from ~/.config/yt-dlp/config
tmux-yt-dlp() {
  # Command to run: yt-dlp with each argument quoted for the inner shell, then start a new shell in the same pane to keep it open
  local cmd="yt-dlp ${(q)@}; exec \$SHELL"

  if tmux -L ytdl has-session -t ytdl 2>/dev/null; then
    # If session 'ytdl' exists, create a new window in it.
    tmux -L ytdl new-window -t ytdl -- "$cmd"
  else
    # If session 'ytdl' does not exist, create a new session.
    tmux -L ytdl new-session -d -s ytdl -- "$cmd"
  fi

  # Attach either way: the session is often left detached by Raycast or a closed terminal,
  # and a download added to it would otherwise run out of sight
  tmux -L ytdl attach -t ytdl
}
