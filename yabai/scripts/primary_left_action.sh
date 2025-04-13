#!/bin/bash
#
# primary_left_action.sh

yabai -m window --focus west || (yabai -m display --focus west && yabai -m window --focus east)