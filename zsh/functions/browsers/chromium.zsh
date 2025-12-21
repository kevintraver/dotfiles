# Chromium Functions

# Open Chromium with a new temporary profile
temp-chromium() {
  local profile_path="/tmp/Chromium/$(date +%s)"
  open -na /Applications/Chromium.app --args \
    "--user-data-dir=$profile_path"
}
