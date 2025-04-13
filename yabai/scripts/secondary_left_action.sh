#!/bin/bash
#
# secondary_left_action.sh

curr=$(yabai -m query --displays --display | jq '.index')
left=$(yabai -m query --displays | jq 'min_by(.frame.x).index')
right=$(yabai -m query --displays | jq 'max_by(.frame.x).index')

if [ "$curr" -eq "$right" ]; then
    win=$(yabai -m query --windows --window | jq '.id')
    [ -n "$win" ] && yabai -m window "$win" --display "$left" && \
                    yabai -m window "$win" --raise
    yabai -m display --focus "$left"
    yabai -m window --focus "$win"
else
    yabai -m display --focus "$right"
    win=$(yabai -m query --windows --window | jq '.id')
    [ -n "$win" ] && yabai -m window "$win" --display "$left" && \
                    yabai -m window "$win" --raise
    yabai -m display --focus "$left"
fi