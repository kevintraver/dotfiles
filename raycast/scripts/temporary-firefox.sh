#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Firefox (Temporary Profile)
# @raycast.mode silent

# Documentation:
# @raycast.description Open Firefox with a temporary profile (Google DNS + clean startup)
# @raycast.author Kevin Traver
# @raycast.authorURL https://raycast.com/kevintraver
# @raycast.iconDark /Applications/Firefox.app/Contents/Resources/firefox.icns

DATE=$(date +%s)
PROFILE_PATH="/tmp/Firefox/$DATE"
PROFILE_NAME="tmp-$DATE"

# Create the Firefox profile
/Applications/Firefox.app/Contents/MacOS/firefox -CreateProfile "$PROFILE_NAME $PROFILE_PATH" > /dev/null 2>&1

# Create user.js with custom DNS and startup settings
cat <<EOF > "$PROFILE_PATH/user.js"
// --- Custom DNS Settings ---
user_pref("network.trr.mode", 3);
user_pref("network.trr.uri", "https://dns.google/dns-query");
user_pref("network.trr.bootstrapAddress", "8.8.8.8");

// --- Skip ALL first-run / welcome / ToS / privacy modals ---
user_pref("toolkit.telemetry.reportingpolicy.firstRun", false);
user_pref("datareporting.policy.dataSubmissionPolicyAcceptedVersion", 2);
user_pref("datareporting.policy.dataSubmissionPolicyBypassNotification", true);  // extra safety

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

# Open Firefox with the temporary profile in a new instance
open -na /Applications/Firefox.app --args --new-instance -P "$PROFILE_NAME"