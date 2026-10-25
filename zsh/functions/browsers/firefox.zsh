# Firefox Functions

# Open Firefox with a temporary profile (with DNS over HTTPS and clean startup).
# Reuses the newest running temp instance if it uses the same DoH server,
# otherwise creates a new profile. The DoH server defaults to Google DNS.
# Usage: temp-firefox [--doh URL] [url]
temp-firefox() {
  local doh_url="https://8.8.8.8/dns-query"
  if [[ "$1" == --doh ]]; then
    doh_url="$2"
    shift 2
  fi
  local trr_uri_pref="user_pref(\"network.trr.uri\", \"$doh_url\");"

  local running_pid=$(pgrep -fn 'Firefox.app/Contents/MacOS/firefox .*--profile /tmp/Firefox/')
  if [[ -n "$running_pid" ]]; then
    local running_args=$(ps -o args= -p "$running_pid")
    local running_profile="${${running_args##*--profile }%% *}"
    if grep -qxF "$trr_uri_pref" "$running_profile/user.js"; then
      open -na /Applications/Firefox.app --args --profile "$running_profile" "$@"
      return
    fi
  fi

  local timestamp=$(date +%s)
  local profile_path="/tmp/Firefox/$timestamp"

  # Use a bare profile directory instead of registering it in profiles.ini
  mkdir -p "$profile_path"

  # Create user.js with DNS over HTTPS and startup settings
  cat <<EOF > "$profile_path/user.js"
// --- DNS over HTTPS only ---
user_pref("network.trr.mode", 3);
$trr_uri_pref
EOF
  cat <<'EOF' >> "$profile_path/user.js"

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
  open -na /Applications/Firefox.app --args --new-instance --profile "$profile_path" "$@"
}

# Open Firefox with a simple temporary profile (no custom settings)
temp-firefox-simple() {
  local timestamp=$(date +%s)
  local profile_path="/tmp/Firefox/$timestamp"

  mkdir -p "$profile_path"
  /Applications/Firefox.app/Contents/MacOS/firefox --new-instance --profile "$profile_path" &!
}

# Reset Firefox (removes all user data)
reset-firefox() {
  /bin/rm -rf "$HOME/Library/Application Support/Firefox"
  /bin/rm -rf "$HOME/Library/Preferences/org.mozilla.firefox.plist"
  /bin/rm -rf "$HOME/Library/Caches/Firefox"
  /bin/rm -rf "$HOME/Library/Caches/Mozilla"
  echo "Firefox has been reset"
}
