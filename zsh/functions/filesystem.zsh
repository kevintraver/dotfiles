# Copy absolute path of a file to clipboard
copypath() {
  local filepath=$(realpath "$1" 2>/dev/null)
  if [[ -e "$filepath" ]]; then
    echo "$filepath" | pbcopy
    echo "Copied: $filepath"
  else
    echo "File not found: $1" >&2
    return 1
  fi
}

