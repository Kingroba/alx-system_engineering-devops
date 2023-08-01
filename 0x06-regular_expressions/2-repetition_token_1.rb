#!/usr/bin/env bash
# This script displays a list of currently running processes containing the "bash" keyword.

# Execute the 'ps' command with the specified options and use 'grep' to filter processes containing "bash"
ps -aux | grep bash

