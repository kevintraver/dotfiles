#!/bin/zsh
#
# focus_slack_main.sh
# Focus the main Slack window (not the Huddle window)

# Query all windows and filter for Slack
slack_windows=$(/opt/homebrew/bin/yabai -m query --windows | jq '[.[] | select(.app == "Slack")]')

# Look for the main window - prioritize window with [Main] in title
main_id=$(echo "$slack_windows" | jq -r '
  [.[] | select(.title | test("\\[Main\\]"))] | first | .id // empty
')

# Fallback: find window with " - Slack" pattern (channel/DM view) but not Huddle
if [[ -z "$main_id" || "$main_id" == "null" ]]; then
  main_id=$(echo "$slack_windows" | jq -r '
    [.[] | select(.title | test(" - Slack$")) | select(.title | test("Huddle"; "i") | not)] | first | .id // empty
  ')
fi

if [[ -n "$main_id" && "$main_id" != "null" ]]; then
  # Main window exists, focus it
  # If focus fails, fallback to activating the app
  /opt/homebrew/bin/yabai -m window --focus "$main_id" 2>/dev/null || open -a "Slack"
else
  # No main window found, just activate Slack app (will show main window or create it)
  open -a "Slack"
fi
