# Zen Browser Extensions

## List All Extensions

To list all installed extensions in Zen Browser:

```bash
jq '.addons[] | select(.type == "extension") | .defaultLocale.name' ~/Library/Application\ Support/zen/Profiles/*.Default\ \(release\)/extensions.json
```

This command:
- Reads the `extensions.json` file from your Zen Browser profile
- Filters for items where type is "extension"
- Extracts just the extension name

## Save Extensions to File

```bash
jq '.addons[] | select(.type == "extension") | .defaultLocale.name' ~/Library/Application\ Support/zen/Profiles/*.Default\ \(release\)/extensions.json > zen/extensions.txt
```
