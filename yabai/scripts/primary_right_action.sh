#!/bin/bash
#
# primary_right_action.sh
# Focus the window to the east; at the edge, jump to the east display.

yabai -m window --focus east 2>/dev/null || "$(dirname "$0")/focus_display.sh" east >/dev/null
