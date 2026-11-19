#!/bin/bash
#
# focus_display.sh <west|east|index>
# Focus the frontmost real window on a display. Skips overlays and panels
# (Superwhisper, Raycast, CleanShot, ghost windows...): only visible,
# non-minimized standard windows count. Prints the focused window id.
# Falls back to plain `display --focus` when the display has no such window.

win=$(yabai -m query --windows --display "$1" 2>/dev/null | jq -r '
  map(select(.["is-visible"] and (.["is-minimized"] | not)
             and .["has-ax-reference"] and .subrole == "AXStandardWindow"))
  [0].id // empty')

if [ -n "$win" ]; then
  yabai -m window --focus "$win" && echo "$win"
else
  yabai -m display --focus "$1"
fi
