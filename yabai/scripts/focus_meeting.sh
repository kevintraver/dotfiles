#!/bin/zsh
#
# focus_meeting.sh
# Focuses the most relevant meeting app window.
# Priority: Slack Huddle > Google Meet > Zoom
# Prefers visible windows (on current space) over hidden ones.

# Get all windows
windows=$(/opt/homebrew/bin/yabai -m query --windows)

# Function to find window ID
# usage: find_window_id <app_regex> <title_regex>
find_window_id() {
  local app_pattern=$1
  local title_pattern=$2
  
  # Yabai returns windows in an order that roughly corresponds to their window server order.
  # We filter by app and title, then prefer visible windows.
  local id=$(echo "$windows" | jq -r --arg app "$app_pattern" --arg title "$title_pattern" '
    map(select(.app | test($app; "i"))) | 
    map(select(.title | test($title; "i"))) | 
    sort_by(.["is-visible"] | not) | 
    .[0].id
  ')
  
  echo "$id"
}

# 1. Slack Huddle
# Matches the standalone Huddle window
huddle_id=$(find_window_id "Slack" "Huddle")

# 2. Google Meet
# Matches standard browser tabs AND Chrome App mode (--app="https://meet.google.com")
# Chrome App mode usually has title "Google Meet" or specific meeting name
meet_id=$(find_window_id "^(Google Chrome|Brave Browser|Zen Browser|Arc|Firefox|Chromium)$" "(Meet|Google Meet)")

# 3. Zoom Meeting
# First try to find an actual meeting window
zoom_id=$(find_window_id "zoom.us" "Zoom Meeting")

# If no active meeting window, fall back to ANY Zoom window (like Login, Home, etc.)
if [[ "$zoom_id" == "null" || -z "$zoom_id" ]]; then
    zoom_id=$(find_window_id "zoom.us" ".*")
fi

# Helper to check if ID is valid and visible
is_visible() {
    local id=$1
    if [[ "$id" == "null" || -z "$id" ]]; then echo "false"; return; fi
    echo "$windows" | jq -r --arg id "$id" '.[] | select(.id == ($id|tonumber)) | .["is-visible"]'
}

# Collect candidates
declare -A candidates
candidates[huddle]=$huddle_id
candidates[meet]=$meet_id
candidates[zoom]=$zoom_id

# Priority Order
# If multiple meeting apps are running, this defines which one takes precedence
# if both are visible (or both hidden).
priority=("huddle" "meet" "zoom")

target_id=""

# First pass: Check for VISIBLE meeting windows
# This helps picking the one you are likely looking at or just switched away from on the current space
for app in $priority; do
    id=${candidates[$app]}
    if [[ -n "$id" && "$id" != "null" ]]; then
        visible=$(is_visible "$id")
        if [[ "$visible" == "true" ]]; then
            target_id=$id
            break
        fi
    fi
done

# Second pass: If no visible meeting window, pick the first existing one
if [[ -z "$target_id" ]]; then
    for app in $priority; do
        id=${candidates[$app]}
        if [[ -n "$id" && "$id" != "null" ]]; then
            target_id=$id
            break
        fi
    done
fi

# Execute Focus
if [[ -n "$target_id" ]]; then
    /opt/homebrew/bin/yabai -m window --focus "$target_id" 2>/dev/null
else
    # Silent exit if no meeting window found
    exit 0
fi
