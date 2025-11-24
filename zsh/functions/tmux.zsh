# yt-dlp with tmux
tmux-yt-dlp() {
  # Quote each argument individually for the command to be run by tmux
  local quoted_args=()
  for arg in "$@"; do
    # (q) quotes the argument safely for shell interpretation by the inner shell
    quoted_args+=(${(q)arg})
  done

  # Command to run: yt-dlp, then start a new shell in the same pane to keep it open
  local cmd="yt-dlp -P ~/YouTube ${quoted_args[*]}; exec \$SHELL"

  if tmux has-session -t ytdl 2>/dev/null; then
    # If session 'ytdl' exists, create a new window in it.
    # tmux should automatically switch focus to the new window.
    tmux new-window -t ytdl -- "$cmd"
  else
    # If session 'ytdl' does not exist, create a new session.
    # By removing the '-d' flag, tmux will create AND attach to this new session.
    tmux new-session -s ytdl -- "$cmd"
  fi
}

