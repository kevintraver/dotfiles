# Browser functions for temporary profiles and resets

# ============================================================================
# Google Chrome
# ============================================================================

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
temp-google-chrome-path() {
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

# ============================================================================
# Firefox
# ============================================================================

# Open Firefox with a new temporary profile (with Google DNS and clean startup)
temp-firefox() {
  local timestamp=$(date +%s)
  local profile_path="/tmp/Firefox/$timestamp"
  local profile_name="tmp-$timestamp"

  # Create the Firefox profile
  /Applications/Firefox.app/Contents/MacOS/firefox -CreateProfile "$profile_name $profile_path" > /dev/null 2>&1

  # Create user.js with Google DNS and startup settings
  cat <<'EOF' > "$profile_path/user.js"
// --- Google DNS Settings ---
user_pref("network.trr.mode", 3);
user_pref("network.trr.uri", "https://dns.google/dns-query");
user_pref("network.trr.bootstrapAddress", "8.8.8.8");

// --- Skip ALL first-run / welcome / ToS / privacy modals ---
user_pref("toolkit.telemetry.reportingpolicy.firstRun", false);
user_pref("datareporting.policy.dataSubmissionPolicyAcceptedVersion", 2);
user_pref("datareporting.policy.dataSubmissionPolicyBypassNotification", true);

// This is the one that kills the 2025+ ToS/Privacy acceptance modal
user_pref("browser.rights.3.accepted", true);
user_pref("browser.rights.override", true);

// --- Clean Startup Settings ---
user_pref("browser.startup.didSeeFirstRunPage", true);
user_pref("trailhead.firstrun.didSee", true);
user_pref("browser.onboarding.enabled", false);
user_pref("browser.aboutwelcome.enabled", false);
user_pref("browser.startup.homepage_override.mstone", "ignore");
user_pref("browser.shell.checkDefaultBrowser", false);
user_pref("browser.migrate.content-modal.show-on-startup", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false);
user_pref("browser.tabs.firefox-view", false);
user_pref("browser.newtabpage.enabled", false);
user_pref("browser.startup.page", 0);

// Disable quit confirmation dialog
user_pref("browser.warnOnQuitShortcut", false);
EOF

  # Open Firefox with the temporary profile
  open -na /Applications/Firefox.app --args --new-instance -P "$profile_name"
}

# Open Firefox with a simple temporary profile (no custom settings)
temp-firefox-simple() {
  local timestamp=$(date +%s)
  local profile_path="/tmp/Firefox/$timestamp"
  local profile_name="tmp-$timestamp"

  /Applications/Firefox.app/Contents/MacOS/firefox -CreateProfile "$profile_name $profile_path"
  /Applications/Firefox.app/Contents/MacOS/firefox --new-instance -P "$profile_name" &!
}

# Reset Firefox (removes all user data)
reset-firefox() {
  /bin/rm -rf "$HOME/Library/Application Support/Firefox"
  /bin/rm -rf "$HOME/Library/Preferences/org.mozilla.firefox.plist"
  echo "Firefox has been reset"
}

# ============================================================================
# Other Browsers
# ============================================================================

# Open Brave with a new temporary profile
temp-brave() {
  local profile_path="/tmp/Brave/$(date +%s)"
  open -na "/Applications/Brave Browser.app" --args \
    "--user-data-dir=$profile_path" \
    --no-default-browser-check \
    --no-first-run \
    --enable-devtools-experiments
}

# Open Chromium with a new temporary profile
temp-chromium() {
  local profile_path="/tmp/Chromium/$(date +%s)"
  open -na /Applications/Chromium.app --args \
    "--user-data-dir=$profile_path"
}

# ============================================================================
# Aliases for backwards compatibility
# ============================================================================

alias tcr='temp-google-chrome-resume'
