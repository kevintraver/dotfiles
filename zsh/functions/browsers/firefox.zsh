# Firefox Functions

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
