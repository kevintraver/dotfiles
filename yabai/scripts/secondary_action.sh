#!/bin/bash
#
# secondary_action.sh <left|right>
# On the opposite display: send the focused window to the <direction> display and follow it.
# Otherwise: pull the opposite display's focused window onto the <direction> display.

read -r curr left right < <(yabai -m query --displays | jq -r \
  '"\(map(select(.["has-focus"]))[0].index) \(min_by(.frame.x).index) \(max_by(.frame.x).index)"')

case "$1" in
  left)  target=$left  other=$right ;;
  right) target=$right other=$left ;;
  *) echo "Usage: $0 <left|right>" >&2; exit 1 ;;
esac

focused_window() { yabai -m query --windows --window | jq -r '.id // empty'; }

if [ "$curr" -eq "$other" ]; then
    win=$(focused_window)
    [ -n "$win" ] && yabai -m window "$win" --display "$target" && \
                    yabai -m window "$win" --raise
    yabai -m display --focus "$target"
    [ -n "$win" ] && yabai -m window --focus "$win"
else
    yabai -m display --focus "$other"
    win=$(focused_window)
    [ -n "$win" ] && yabai -m window "$win" --display "$target" && \
                    yabai -m window "$win" --raise
    yabai -m display --focus "$target"
fi
