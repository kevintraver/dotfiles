# Google Chrome Functions

# Open Google Chrome with a new temporary profile
temp-google-chrome() {
  local profile_path="/tmp/Chrome/$(date +%s)"
  open -na "/Applications/Google Chrome.app" --args \
    "--user-data-dir=$profile_path" \
    --no-default-browser-check \
    --no-first-run \
    --enable-devtools-experiments \
    --disable-notifications
}

# Open Google Chrome with a custom profile path
google-chrome-path() {
  if [[ -z "$1" ]]; then
    echo "Usage: temp-google-chrome-path <profile-path>" >&2
    return 1
  fi
  local profile_path="${~1}"
  open -na "/Applications/Google Chrome.app" --args \
    "--user-data-dir=$profile_path" \
    --no-default-browser-check \
    --no-first-run \
    --enable-devtools-experiments \
    --disable-notifications
}

# Open Google Chrome with a new temporary profile and mitmproxy
temp-google-chrome-proxy() {
  local profile_path="/tmp/Chrome/$(date +%s)"
  open -na "/Applications/Google Chrome.app" --args \
    "--user-data-dir=$profile_path" \
    --no-default-browser-check \
    --no-first-run \
    --enable-devtools-experiments \
    --disable-notifications \
    --proxy-server="http://localhost:8080"
}

# Open Google Chrome with the most recent temporary profile
temp-google-chrome-resume() {
  if [[ ! -d /tmp/Chrome ]]; then
    echo "No temporary Google Chrome profiles found in /tmp/Chrome" >&2
    return 1
  fi

  local profile_id=$(command ls /tmp/Chrome | sort -rn | head -1)

  if [[ -z "$profile_id" ]]; then
    echo "No temporary Google Chrome profiles found in /tmp/Chrome" >&2
    return 1
  fi

  local profile_path="/tmp/Chrome/$profile_id"

  open -na "/Applications/Google Chrome.app" --args \
    "--user-data-dir=$profile_path" \
    --no-default-browser-check \
    --no-first-run \
    --enable-devtools-experiments \
    --disable-notifications
}

# Reset Google Chrome (removes all user data)
reset-google-chrome() {
  /bin/rm -rf "$HOME/Library/Application Support/Google"
  /bin/rm -rf "$HOME/Library/Preferences/com.google.Chrome.plist"
  echo "Google Chrome has been reset"
}

alias tcr='temp-google-chrome-resume'
