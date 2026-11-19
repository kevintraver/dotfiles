#!/bin/bash
#
# swap_displays.sh
# Swap the frontmost window on the left display with the frontmost window on
# the right display. Focus and the cursor follow your window to the other
# display.

read -r curr left right < <(yabai -m query --displays | jq -r \
  '"\(map(select(.["has-focus"]))[0].index) \(min_by(.frame.x).index) \(max_by(.frame.x).index)"')

[ "$left" = "$right" ] && exit 0

# Frontmost real window on a display; same filter as focus_display.sh.
front_window() {
  yabai -m query --windows --display "$1" 2>/dev/null | jq -r '
    map(select(.["is-visible"] and (.["is-minimized"] | not)
               and .["has-ax-reference"] and .subrole == "AXStandardWindow"))
    [0].id // empty'
}

# On the focused display, prefer the focused window itself.
focused=$(yabai -m query --windows --window 2>/dev/null |
  jq -r 'select(.subrole == "AXStandardWindow") | .id // empty')

if [ "$curr" -eq "$left" ]; then
  l=${focused:-$(front_window "$left")}  r=$(front_window "$right")
else
  r=${focused:-$(front_window "$right")} l=$(front_window "$left")
fi

[ -n "$l" ] && yabai -m window "$l" --display "$right"
[ -n "$r" ] && yabai -m window "$r" --display "$left"

[ "$curr" -eq "$left" ] && mine=$l theirs=$r || mine=$r theirs=$l

# A window moved onto a stacked display lands behind the others, so the swap
# looks like a cycle. Focusing it raises it to the front of its stack.
[ -n "$theirs" ] && yabai -m window --focus "$theirs"

# Follow your window. macOS hands focus to another app after a display
# change, so focus it, then check and retry once. mouse_follows_focus is
# switched on just for this, so the cursor lands on the window too.
[ -z "$mine" ] && exit 0
mff=$(yabai -m config mouse_follows_focus)
yabai -m config mouse_follows_focus on
for _ in 1 2; do
  yabai -m window --focus "$mine"
  sleep 0.15
  [ "$(yabai -m query --windows --window 2>/dev/null | jq -r '.id')" = "$mine" ] && break
done
yabai -m config mouse_follows_focus "$mff"
