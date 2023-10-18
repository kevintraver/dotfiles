# osx apps

# Tower
function gt {
  gittower $(git rev-parse --show-toplevel)
}
zle -N gt

# brave
alias brave='open -na /Applications/Brave\ Browser.app --args "--user-data-dir=/tmp/Brave/`date +%s`" --no-default-browser-check --no-first-run --enable-devtools-experiments'

# chromium
alias tmpchromium='open -na /Applications/Chromium.app --args "--user-data-dir=/tmp/Chromium/`date +%s`"'

# firefox
alias tf='DATE=$(date +%s) && /Applications/Firefox.app/Contents/MacOS/firefox -CreateProfile "tmp-$DATE /tmp/Firefox/$DATE" && /Applications/Firefox.app/Contents/MacOS/firefox --new-instance -P "tmp-$DATE" &!'

# chrome
alias tc='open -na /Applications/Google\ Chrome.app --args "--user-data-dir=/tmp/Chrome/`date +%s`" --no-default-browser-check --no-first-run --enable-devtools-experiments --disable-notifications'
alias tcp='open -na /Applications/Google\ Chrome.app --args "--user-data-dir=/tmp/Chrome/`date +%s`" --no-default-browser-check --no-first-run --enable-devtools-experiments --disable-notifications --proxy-server="socks5://127.0.0.1:8080" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1"'

alias reset-chrome="rm -rf /Users/kevin/Library/Application\ Support/Google && rm -rf /Users/kevin/Library/Preferences/com.google.Chrome.plist"

alias reset-firefox='\
  rm -rf /Users/kevin/Library/Application\ Support/Firefox; \
  rm -rf /Users/kevin/Library/Preferences/org.mozilla.firefox.plist; \
  echo -e "lockPref(\"browser.aboutwelcome.enabled\", false);\
  \nlockPref(\"browser.tabs.warnOnClose\", false);\
  \nlockPref(\"browser.showQuitWarning\", false);\
  \nlockPref(\"browser.startup.blankWindow\", true);\
  \nlockPref(\"browser.startup.firstrunSkipsHomepage\", true);\
  \nlockPref(\"browser.warnOnQuitShortcut\", false);\
  \nlockPref(\"browser.shell.checkDefaultBrowser\", false);\
  \nlockPref(\"browser.newtabpage.enabled\", false);\
  \nlockPref(\"startup.homepage_welcome_url\", \"\");\
  \nlockPref(\"browser.startup.page\", 0);\
  \nlockPref(\"browser.toolbars.bookmarks.visibility\", \"never\");\
  \nlockPref(\"datareporting.policy.dataSubmissionPolicyBypassNotification\", true);\
  \nlockPref(\"browser.startup.couldRestoreSession.count\", 0);\
  \nlockPref(\"extensions.pocket.enabled\", false);" \
  > "/Applications/Firefox.app/Contents/Resources/mozilla.cfg"; \
  echo -e "pref(\"general.config.filename\", \"mozilla.cfg\");\
  \npref(\"general.config.obscure_value\", 0);" \
  > "/Applications/Firefox.app/Contents/Resources/defaults/pref/autoconfig.js"'

# trash https://github.com/sindresorhus/trash-cli
alias rm="trash"
alias rmdir="trash"
alias del="trash"

# osx
# networking
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ip="ipconfig getifaddr en0"

# proxy
alias proxyon="networksetup -setsocksfirewallproxy Wi-Fi 127.0.0.1 8080"
alias proxyoff="networksetup -setsocksfirewallproxystate Wi-Fi off"

alias proxy="mitmproxy --mode socks5 --showhost"

# docker
alias docker-ubuntu="docker run --name ubuntu --rm -i -t ubuntu"

# ember
alias ep='ember s --proxy http://localhost:3000'

# clipboard
alias pbc='pbcopy'
alias pbp='pbpaste'

# xsv
alias csv='xsv'

alias pwd="pwd | tr -d '\n'"

# eza
alias l='eza -lbF --git'
alias ls='eza'
alias ll='eza -lbGF --git'
alias llm='eza -lbGd --git --sort=modified'
alias la='eza -lbhHigUmuSa --time-style=long-iso --git --color-scale'
alias lx='eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale'
alias lS='eza -1'
alias lt='eza --tree --level=2'

# terminal apps

# lazygit
alias lg='lazygit'
alias gl='lazygit'

# git
alias gs="git status"
