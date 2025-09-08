#!/bin/bash

# @raycast.schemaVersion 1
# @raycast.title Download from YouTube
# @raycast.mode fullOutput

# @raycast.icon ⬇️

# Documentation:
# @raycast.description Download video or audio from a YouTube URL into Downloads
# @raycast.author kevintraver
# @raycast.authorURL https://raycast.com/kevintraver

# @raycast.argument1 { "type": "text", "placeholder": "YouTube URL" }
# @raycast.argument2 { "type": "dropdown", "placeholder": "Format", "data": [ { "title": "Video (MP4)", "value": "video_mp4" }, { "title": "Audio (MP3)", "value": "audio_mp3" }, { "title": "Audio (M4A)", "value": "audio_m4a" } ], "optional": true }

URL="$1"
FORMAT="${2:-video_mp4}"

YTDLP="/opt/homebrew/bin/yt-dlp"
FFMPEG="/opt/homebrew/bin/ffmpeg"

if [ -z "$URL" ]; then
  echo "Missing URL. Provide a YouTube URL as the first argument." >&2
  exit 1
fi

OUTPUT_DIR="$HOME/YouTube"
TEMPLATE="%(title)s [%(id)s].%(ext)s"

mkdir -p "$OUTPUT_DIR"

args=( )
case "$FORMAT" in
  video_mp4)
    echo "Queueing best MP4 video download to $OUTPUT_DIR..."
    args=(
      "$YTDLP"
      -f "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]/b"
      --merge-output-format mp4
      --embed-thumbnail
      --add-metadata
      -o "$OUTPUT_DIR/$TEMPLATE"
      "$URL"
    )
    ;;
  audio_mp3)
    echo "Queueing best audio as MP3 to $OUTPUT_DIR..."
    args=(
      "$YTDLP"
      -f "ba/b"
      --extract-audio
      --audio-format mp3
      --audio-quality 0
      --embed-thumbnail
      --add-metadata
      -o "$OUTPUT_DIR/$TEMPLATE"
      "$URL"
    )
    ;;
  audio_m4a)
    echo "Queueing best audio as M4A to $OUTPUT_DIR..."
    args=(
      "$YTDLP"
      -f "ba/b"
      --extract-audio
      --audio-format m4a
      --audio-quality 0
      --embed-thumbnail
      --add-metadata
      -o "$OUTPUT_DIR/$TEMPLATE"
      "$URL"
    )
    ;;
  *)
    echo "Unknown format: $FORMAT" >&2
    exit 2
    ;;
esac

# Safely quote args for execution inside tmux shell
escaped=( )
for a in "${args[@]}"; do
  escaped+=("$(printf %q "$a")")
done
cmd="${escaped[*]}"

session="ytdl"

if tmux has-session -t "$session" 2>/dev/null; then
  tmux new-window -t "$session" -- "$SHELL" -lc "$cmd; exec \$SHELL"
  echo "Added download to tmux session '$session' (new window)."
else
  tmux new-session -ds "$session" -- "$SHELL" -lc "$cmd; exec \$SHELL"
  echo "Started tmux session '$session' with a new download."
fi

echo "Attach with: tmux attach -t $session"

