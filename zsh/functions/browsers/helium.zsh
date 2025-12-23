# Helium Browser Functions

# Reset Helium Browser (removes all user data)
reset-helium() {
  /bin/rm -rf "$HOME/Library/Application Support/net.imput.helium"
  /bin/rm -rf "$HOME/Library/Preferences/net.imput.helium.plist"
  /bin/rm -rf "$HOME/Library/Caches/net.imput.helium"
  /bin/rm -rf "$HOME/Library/HTTPStorages/net.imput.helium"
  echo "Helium has been reset"
}