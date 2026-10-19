# Copy absolute path of a file to clipboard
copypath() {
  local filepath=$(realpath "$1" 2>/dev/null)
  if [[ -e "$filepath" ]]; then
    printf '%s' "$filepath" | pbcopy
    echo "Copied: $filepath"
  else
    echo "File not found: $1" >&2
    return 1
  fi
}

# List files and folders by most recently modified, with relative times
lr() {
  zmodload zsh/datetime
  zmodload -F zsh/stat b:zstat
  local dir=${1:-.} name mtime age n unit width=0
  local -a names=( $dir/*(Nom:t) )
  for name in $names; (( ${#name} > width )) && width=${#name}
  for name in $names; do
    zstat -L -A mtime +mtime -- $dir/$name
    age=$(( EPOCHSECONDS - mtime ))
    if (( age < 60 )); then n=$age unit=second
    elif (( age < 3600 )); then n=$(( age / 60 )) unit=minute
    elif (( age < 86400 )); then n=$(( age / 3600 )) unit=hour
    elif (( age < 604800 )); then n=$(( age / 86400 )) unit=day
    elif (( age < 2629800 )); then n=$(( age / 604800 )) unit=week
    elif (( age < 31557600 )); then n=$(( age / 2629800 )) unit=month
    else n=$(( age / 31557600 )) unit=year
    fi
    (( n != 1 )) && unit+=s
    if [[ -d $dir/$name ]]; then
      printf '\e[34m%-*s\e[0m  %s\n' $width $name "$n $unit"
    else
      printf '%-*s  %s\n' $width $name "$n $unit"
    fi
  done
}
