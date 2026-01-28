#!/usr/bin/env bash

# Get current window info
current_window=$(yabai -m query --windows --window)
current_id=$(echo "$current_window" | jq -r '.id')
current_app=$(echo "$current_window" | jq -r '.app')
current_space=$(echo "$current_window" | jq -r '.space')
current_display=$(echo "$current_window" | jq -r '.display')

# Get all windows of the same app on the current space and display
same_app_windows=$(yabai -m query --windows | jq -r --arg app "$current_app" --argjson space "$current_space" --argjson display "$current_display" \
  '[.[] | select(.app == $app and .space == $space and .display == $display)] | sort_by(.id) | .[].id')

# Convert to array
window_ids=($same_app_windows)
count=${#window_ids[@]}

# If only one window, nothing to do
[ "$count" -le 1 ] && exit 0

# Find current index and calculate next
for i in "${!window_ids[@]}"; do
  if [ "${window_ids[$i]}" == "$current_id" ]; then
    next_index=$(( (i + 1) % count ))
    yabai -m window --focus "${window_ids[$next_index]}"
    exit 0
  fi
done
