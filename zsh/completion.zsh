# Completion matching strategy (in order):
# - '' tries exact matching first.
# - Then fall back to case-insensitive matching and treat '-' and '_' as equivalent.
# - Then allow matching across common separators ('.', '_', '-') such as
#   `foo-bar` -> `foo_bar` / `foo.bar`.
zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:|[._-]=* r:|=*' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:|?=** m:{a-z\-}={A-Z\_}' \
  'm:{a-zA-Z}={A-Za-z}'
