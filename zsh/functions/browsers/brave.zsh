# Brave Browser Functions

# Open Brave with a new temporary profile
temp-brave() {
  local profile_path="/tmp/Brave/$(date +%s)"
  open -na "/Applications/Brave Browser.app" --args \
    "--user-data-dir=$profile_path" \
    --no-default-browser-check \
    --no-first-run \
    --enable-devtools-experiments
}
