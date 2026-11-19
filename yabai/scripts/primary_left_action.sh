#!/bin/bash
#
# primary_left_action.sh
# Focus the window to the west; at the edge, jump to the west display.

yabai -m window --focus west 2>/dev/null || "$(dirname "$0")/focus_display.sh" west >/dev/null
