#!/bin/zsh
#
# focus_slack_workspace.sh
# Focus a specific Slack workspace/URL
# Usage: ./focus_slack_workspace.sh <slack_url>

url="$1"

if [[ -z "$url" ]]; then
  echo "Usage: $0 <slack_url>"
  exit 1
fi

# Open the URL which should switch workspace and focus Slack
open "$url"
