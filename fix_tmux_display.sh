#! /bin/sh
# Yubin totally wrote this one herself
# (And I copied it here shamelessly! :) )
# Run this script outside of tmux!
for name in `tmux ls -F '#{session_name}'`; do
  /home/userName/bin/tmux setenv -g -t $name DISPLAY $DISPLAY #set display for all sessions
done
