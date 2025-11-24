# Helper function to get prompts from YAML files
# Usage: get_prompt KEY [FILE]
#   KEY: The prompt key to retrieve (e.g., git_commit_all)
#   FILE: Optional filename (defaults to git.yml)
# Example: get_prompt git_commit_all
# Example: get_prompt some_prompt other.yml
get_prompt() {
  local key="$1"
  local file="${2:-git.yml}"
  yq -r ".$key" ~/.dotfiles/prompts/"$file"
}

