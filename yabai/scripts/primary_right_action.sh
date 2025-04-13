#!/bin/bash
#
# primary_right_action.sh
 
yabai -m window --focus east || (yabai -m display --focus east && yabai -m window --focus west)