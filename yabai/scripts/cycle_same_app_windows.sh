#!/usr/bin/env bash

# Focus the next window (by id) of the focused app on the current space and display
next_id=$(yabai -m query --windows | jq -r '
  (first(.[] | select(.["has-focus"])) // empty) as $cur
  | [.[] | select(.app == $cur.app and .space == $cur.space and .display == $cur.display) | .id]
  | sort
  | select(length > 1)
  | .[((index($cur.id) + 1) % length)]')

[ -n "$next_id" ] && yabai -m window --focus "$next_id"
