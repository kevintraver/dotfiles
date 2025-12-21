# Zen Browser Functions

# Open URL in Zen browser, or focus existing tab if already open
zen-focus-tab() {
  if [[ -z "$1" ]]; then
    echo "Usage: zen-focus-tab <url>" >&2
    echo "Example: zen-focus-tab https://meet.google.com" >&2
    return 1
  fi

  local url="$1"

  # Search for existing tab with this URL
  local tab_line=$(/Users/kevin/.local/bin/bt list | grep -F "$url" | head -1)

  if [[ -n "$tab_line" ]]; then
    # Tab exists - extract tab ID and activate it
    local tab_id=$(echo "$tab_line" | awk '{print $1}')
    echo "Focusing existing tab: $tab_id"
    /Users/kevin/.local/bin/bt activate "$tab_id"
    # Bring Zen Browser to the foreground
    open -a "Zen Browser"
  else
    # Tab doesn't exist - open in Zen
    # Add https:// if not already present
    if [[ ! "$url" =~ ^https?:// ]]; then
      url="https://$url"
    fi
    echo "Opening new tab: $url"
    open -a "Zen Browser" "$url"
  fi
}
