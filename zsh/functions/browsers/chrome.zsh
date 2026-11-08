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

# Reset Google Chrome (removes all user data except installed extensions)
# Usage: reset-google-chrome [--all]   (--all removes extensions too)
reset-google-chrome() {
  local chrome="$HOME/Library/Application Support/Google/Chrome"
  local profiles=("$chrome"/*/"Secure Preferences"(N:h))
  case "$1" in
    "") ;;
    --all) profiles=() ;;
    *)
      echo "Usage: reset-google-chrome [--all]" >&2
      return 1
      ;;
  esac
  local keep=(
    "DNR Extension Rules"
    Extensions
    "Extension Rules"
    "Extension Scripts"
    "Extension State"
    "Local Extension Settings"
    "Managed Extension Settings"
    "Sync Extension Settings"
    Storage/ext
  )

  if /usr/bin/pgrep -xq "Google Chrome"; then
    /usr/bin/pkill -x "Google Chrome"
    local i
    for i in {1..50}; do
      /usr/bin/pgrep -xq "Google Chrome" || break
      sleep 0.2
    done
    if /usr/bin/pgrep -xq "Google Chrome"; then
      echo "Google Chrome is still running; reset aborted" >&2
      return 1
    fi
  fi

  local stash=$(/usr/bin/mktemp -d)
  local profile_dir item
  for profile_dir in $profiles; do
    local saved="$stash/${profile_dir:t}"
    mkdir -p "$saved"
    local idb=("$profile_dir"/IndexedDB/chrome-extension_*(N))
    for item in $keep IndexedDB/${^idb:t}; do
      [[ -e "$profile_dir/$item" ]] || continue
      mkdir -p "$saved/${item:h}"
      mv "$profile_dir/$item" "$saved/$item"
    done
    # Extensions are registered in extensions.settings, whose HMACs live in
    # protection.macs. Keeping both lets Chrome trust them; every other
    # protected pref fails its MAC and falls back to its default.
    /usr/bin/python3 - "$profile_dir" "$saved" <<'EOF'
import json, os, sys
src, dst = sys.argv[1:]
for name, keys in (("Secure Preferences", ("extensions", "protection")), ("Preferences", ("extensions",))):
    try:
        with open(os.path.join(src, name)) as f:
            prefs = json.load(f)
    except FileNotFoundError:
        continue
    with open(os.path.join(dst, name), "w") as f:
        json.dump({k: prefs[k] for k in keys if k in prefs}, f)
EOF
  done

  /bin/rm -rf "$HOME/Library/Application Support/Google"
  /bin/rm -rf "$HOME/Library/Preferences/com.google.Chrome.plist"
  /bin/rm -rf "$HOME/Library/Caches/Google"

  local saved_profiles=("$stash"/*(N))
  if (( $#saved_profiles )); then
    mkdir -p "$chrome"
    mv $saved_profiles "$chrome"/
  fi
  /bin/rm -rf "$stash"
  echo "Google Chrome has been reset"
}

alias tcr='temp-google-chrome-resume'
