#!/bin/bash
#
# secondary_action.sh <left|right>
# On the opposite display: send the focused window to the <direction> display and follow it.
# Otherwise: pull the opposite display's focused window onto the <direction> display.

here=$(dirname "$0")

read -r curr left right < <(yabai -m query --displays | jq -r \
  '"\(map(select(.["has-focus"]))[0].index) \(min_by(.frame.x).index) \(max_by(.frame.x).index)"')

case "$1" in
  left)  target=$left  other=$right ;;
  right) target=$right other=$left ;;
  *) echo "Usage: $0 <left|right>" >&2; exit 1 ;;
esac

# Only move real windows, never overlays or panels.
focused_window() {
  yabai -m query --windows --window 2>/dev/null |
    jq -r 'select(.subrole == "AXStandardWindow") | .id // empty'
}

# macOS hands focus to another app right after a window changes display,
# so focus the moved window, then check and retry once.
move_and_follow() {
  yabai -m window "$1" --display "$target" || return
  for _ in 1 2; do
    yabai -m window --focus "$1"
    sleep 0.15
    [ "$(yabai -m query --windows --window 2>/dev/null | jq -r '.id')" = "$1" ] && return
  done
}

if [ "$curr" -eq "$other" ]; then
    win=$(focused_window)
    if [ -n "$win" ]; then move_and_follow "$win"; else "$here/focus_display.sh" "$target" >/dev/null; fi
else
    win=$("$here/focus_display.sh" "$other")
    [ -n "$win" ] && move_and_follow "$win"
fi
