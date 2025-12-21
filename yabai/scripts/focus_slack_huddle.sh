#!/bin/zsh
#
# focus_slack_huddle.sh
# Focus Slack Huddle window if visible. Do nothing if not found.

# Query all windows and filter for Slack
slack_windows=$(/opt/homebrew/bin/yabai -m query --windows | jq '[.[] | select(.app == "Slack")]')

# Look for Huddle window
huddle_id=$(echo "$slack_windows" | jq -r '
  .[] | select(.title | test("Huddle"; "i")) | .id
' | head -n1)

if [[ -n "$huddle_id" && "$huddle_id" != "null" ]]; then
  # Focus huddle window
  /opt/homebrew/bin/yabai -m window --focus "$huddle_id" 2>/dev/null
else
  # Do nothing
  exit 0
fi
