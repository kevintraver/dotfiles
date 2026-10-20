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
    # By removing the '-d' flag, tmux will create AND attach to this new session.
    tmux -L ytdl new-session -s ytdl -- "$cmd"
  fi
}
