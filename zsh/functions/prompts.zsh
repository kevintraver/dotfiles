# Helper function to get prompts from Espanso match files
# Usage: get_prompt TRIGGER [FILE]
#   TRIGGER: The trigger suffix (e.g., gca for ;gca)
#   FILE: Optional Espanso match file (defaults to git.yml)
# Example: get_prompt gca
# Example: get_prompt gca git.yml
get_prompt() {
  local trigger=";$1"
  local file="${2:-git.yml}"
  yq -r ".matches[] | select(.trigger == \"$trigger\") | .replace" ~/.dotfiles/espanso/match/"$file"
}
