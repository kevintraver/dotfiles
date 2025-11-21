# simple script for generating commit messages ai using different tools and models

# Unalias gc if it exists
unalias gc 2>/dev/null

_ai_tools=("opencode" "cursor" "claude" "codex" "gemini")

_ai_models=(
  "anthropic/claude-sonnet-4-5"
  "openrouter/openai/gpt-5.1-codex-mini"
  "openrouter/x-ai/grok-code-fast-1"
  "openrouter/google/gemini-2.5-flash"
  "opencode/gpt-5-nano"
  "opencode/big-pickle"
)

_pick_tool() {
  printf '%s\n' "${_ai_tools[@]}" | fzf --prompt="AI tool: " --height=8
}

_pick_model() {
  printf '%s\n' "${_ai_models[@]}" | fzf --prompt="provider/model: " --height=10
}

_ai_command_labels=(
  "Commit all changes"
  "Create branch, commit"
  "Commit staged"
)

_get_full_command() {
  case "$1" in
    "Commit all changes")
      echo "Commit all the current changes with detailed messages using git commit conventional syntax"
      ;;
    "Commit staged")
      echo "Commit only staged changes with detailed messages using git commit conventional syntax"
      ;;
    "Review, branch, commit")
      echo "Review all the uncommitted changes. Then create a new branch with a name based on these features. Then commit the changes with detailed messages using git commit conventional syntax"
      ;;
  esac
}

_pick_command() {
  local choice
  choice=$(printf '%s\n' "${_ai_command_labels[@]}" | fzf --prompt="AI task: " --height=10) || return
  _get_full_command "$choice"
}

# use gc to git commit with AI tool and command picker
gc() {
  local command tool model
  command=$(_pick_command) || return
  tool=$(_pick_tool) || return

  case "$tool" in
    claude)
      claude -p --verbose "$command"
      ;;
    gemini)
      gemini --debug "$command"
      ;;
    codex)
      codex exec --json "$command"
      ;;
    cursor)
      cursor-agent -p "$command" --model composer-1
      ;;
    opencode)
      model=$(_pick_model) || return
      opencode run "$command" -m "$model"
      ;;
  esac
}