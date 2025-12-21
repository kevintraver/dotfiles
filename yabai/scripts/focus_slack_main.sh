#!/bin/zsh
#
# focus_slack_main.sh
# Focus the main Slack window (not the Huddle window)

# Query all windows and filter for Slack
slack_windows=$(/opt/homebrew/bin/yabai -m query --windows | jq '[.[] | select(.app == "Slack")]')

# Look for main (non-Huddle) window
main_id=$(echo "$slack_windows" | jq -r '
  .[] | select(.title | test("Huddle"; "i") | not) | .id
' | head -n1)

if [[ -n "$main_id" && "$main_id" != "null" ]]; then
  # Main window exists, focus it
  # If focus fails, fallback to activating the app
  /opt/homebrew/bin/yabai -m window --focus "$main_id" 2>/dev/null || open -a "Slack"
else
  # No main window found, just activate Slack app (will show main window or create it)
  open -a "Slack"
fi
