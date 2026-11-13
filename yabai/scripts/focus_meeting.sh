#!/bin/zsh
#
# focus_meeting.sh
# Focuses the most relevant meeting app window.
# Priority: Slack Huddle > Google Meet > Zoom
# Prefers visible windows (on current space) over hidden ones.
# Falls back to an open Google Meet app or Discord window when no call window is found.

YABAI="/opt/homebrew/bin/yabai"
JQ="/opt/homebrew/bin/jq"

# Get all windows
windows=$($YABAI -m query --windows)

# Function to find window ID
# usage: find_window_id <app_regex> <title_regex>
find_window_id() {
  local app_pattern=$1
  local title_pattern=$2
  
  # Yabai returns windows in an order that roughly corresponds to their window server order.
  # We filter by app and title, then prefer visible windows.
  # print -r, not echo: zsh's echo rewrites the backslash escapes in the JSON and breaks jq.
  local id=$(print -r -- "$windows" | $JQ -r --arg app "$app_pattern" --arg title "$title_pattern" '
    map(select(.app | test($app; "i"))) | 
    map(select(.title | test($title; "i"))) | 
    sort_by(.["is-visible"] | not) | 
    .[0].id
  ')
  
  echo "$id"
}

# 1. Slack Huddle
# Newer Huddles use ordinary Slack titles, paired with a separate [Main] window.
# Without that companion window, a normal channel or DM must not match.
# The legacy "Huddle" title is matched as a capitalized whole word, so a channel
# or person whose name merely contains "huddle" does not count.
huddle_title='(?-i:\bHuddles?\b)'
if print -r -- "$windows" | $JQ -e 'any(.[]; .app == "Slack" and (.title | test("\\[Main\\]"; "i")))' > /dev/null; then
  huddle_title+='|^(?!.*\[Main\]).* - Slack$'
fi
huddle_id=$(find_window_id "^Slack$" "$huddle_title")

# 2. Google Meet
# Meet app (Chrome PWA): a window titled with more than the bare app name.
# A bare "Google Meet" title does not show a call, so that window is only a fallback.
meet_id=$(find_window_id '^Google Meet$' '^(?!Google Meet$)')
meet_idle_id=$(find_window_id '^Google Meet$' '^Google Meet$')
# Browser tab: yabai only sees the active tab, titled "Meet - <code or meeting name>".
browsers='^(Zen|Zen Browser|Google Chrome|Chromium|Firefox|Safari|Arc|Brave Browser|Microsoft Edge)$'
meet_tab_id=$(find_window_id "$browsers" '^Meet [-–] ')

# 3. Zoom Meeting
# First try to find an actual meeting window
zoom_id=$(find_window_id "zoom.us" "Zoom Meeting")

# 4. Discord
# Match any open Discord window. Its title does not show whether a call is
# running, so it is only a fallback.
discord_id=$(find_window_id "^Discord$" "")

# Helper to check if ID is valid and visible
is_visible() {
    local id=$1
    if [[ "$id" == "null" || -z "$id" ]]; then echo "false"; return; fi
    print -r -- "$windows" | $JQ -r --arg id "$id" '.[] | select(.id == ($id|tonumber)) | .["is-visible"]'
}

# Collect candidates
declare -A candidates
candidates[huddle]=$huddle_id
candidates[meet]=$meet_id
candidates[meet_tab]=$meet_tab_id
candidates[zoom]=$zoom_id
candidates[meet_idle]=$meet_idle_id
candidates[discord]=$discord_id

# Priority Order
# Windows whose title shows a call. If multiple meeting apps are running, this
# defines which one takes precedence if both are visible (or both hidden).
priority=("huddle" "meet" "meet_tab" "zoom")

# Apps that are open but whose title cannot show a call. Used only when nothing
# in the priority list matched, so they never outrank a real call window.
fallback=("meet_idle" "discord")

# usage: pick_window <candidate>...
# Prints the first VISIBLE candidate, the one you are likely looking at or just
# switched away from on the current space. Otherwise the first existing one.
pick_window() {
    local app id
    for app in "$@"; do
        id=${candidates[$app]}
        if [[ "$(is_visible "$id")" == "true" ]]; then
            echo "$id"
            return
        fi
    done
    for app in "$@"; do
        id=${candidates[$app]}
        if [[ -n "$id" && "$id" != "null" ]]; then
            echo "$id"
            return
        fi
    done
}

target_id=$(pick_window $priority)
if [[ -z "$target_id" ]]; then
    target_id=$(pick_window $fallback)
fi

# Execute Focus
if [[ -n "$target_id" ]]; then
    $YABAI -m window --focus "$target_id" 2>/dev/null
else
    # Silent exit if no meeting window found
    exit 0
fi
