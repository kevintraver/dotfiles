# Zen Browser

## Extensions

To list all installed extensions:

```bash
jq '.addons[] | select(.type == "extension") | .defaultLocale.name' ~/Library/Application\ Support/zen/Profiles/*.Default\ \(release\)/extensions.json
```

Save to file:

```bash
jq '.addons[] | select(.type == "extension") | .defaultLocale.name' ~/Library/Application\ Support/zen/Profiles/*.Default\ \(release\)/extensions.json > zen/extensions.txt
```

## Keyboard Shortcuts

Stored in `zen-keyboard-shortcuts.json` in the profile directory:

```
~/Library/Application Support/zen/Profiles/<profile-id>/zen-keyboard-shortcuts.json
```

Note: In the modifiers object, `accel` means Cmd on macOS (Ctrl on Windows/Linux).
