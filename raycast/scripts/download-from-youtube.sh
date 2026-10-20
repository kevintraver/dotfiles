#!/bin/bash

# @raycast.schemaVersion 1
# @raycast.title Download from YouTube
# @raycast.mode fullOutput

# @raycast.icon ⬇️

# Documentation:
# @raycast.description Download video or audio from a YouTube URL into channel folders in ~/YouTube
# @raycast.author kevintraver
# @raycast.authorURL https://raycast.com/kevintraver

# @raycast.argument1 { "type": "text", "placeholder": "YouTube URL" }
# @raycast.argument2 { "type": "dropdown", "placeholder": "Format", "data": [ { "title": "Video (MP4)", "value": "video_mp4" }, { "title": "Audio (MP3)", "value": "audio_mp3" }, { "title": "Audio (M4A)", "value": "audio_m4a" } ], "optional": true }

export PATH="/opt/homebrew/bin:$PATH"

URL="$1"
FORMAT="${2:-video_mp4}"

if [ -z "$URL" ]; then
  echo "Missing URL. Provide a YouTube URL as the first argument." >&2
  exit 1
fi

# Output location, playlist handling, and metadata embedding come from ~/.config/yt-dlp/config
case "$FORMAT" in
  video_mp4)
    echo "Queueing best MP4 video download..."
    format_args=(-f "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]/b" --merge-output-format mp4)
    ;;
  audio_mp3)
    echo "Queueing best audio as MP3..."
    format_args=(-f "ba/b" --extract-audio --audio-format mp3 --audio-quality 0)
    ;;
  audio_m4a)
    echo "Queueing best audio as M4A..."
    # Prefer YouTube's native AAC stream so it's copied instead of re-encoded from Opus
    format_args=(-f "ba[ext=m4a]/ba/b" --extract-audio --audio-format m4a)
    ;;
  *)
    echo "Unknown format: $FORMAT" >&2
    exit 2
    ;;
esac

args=(yt-dlp "${format_args[@]}" "$URL")

# Safely quote args for execution inside tmux shell
escaped=( )
for a in "${args[@]}"; do
  escaped+=("$(printf %q "$a")")
done
cmd="${escaped[*]}"

session="ytdl"

# Dedicated tmux server, so one started from Raycast doesn't hand its bare environment to other sessions
if tmux -L "$session" has-session -t "$session" 2>/dev/null; then
  tmux -L "$session" new-window -t "$session" -- "$SHELL" -lc "$cmd; exec \$SHELL"
  echo "Added download to tmux session '$session' (new window)."
else
  tmux -L "$session" new-session -ds "$session" -- "$SHELL" -lc "$cmd; exec \$SHELL"
  echo "Started tmux session '$session' with a new download."
fi

echo "Attach with: tmux -L $session attach -t $session"
