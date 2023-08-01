#!/usr/bin/env bash
# Kills the 4-to_infinity_and_beyond process.

# Use 'pgrep' to find the process ID (PID) of the script "4-to_infinity_and_beyond"
# and then use 'kill' to terminate the process with that PID
kill "$(pgrep -f 4-to_infinity_and_beyond)"

