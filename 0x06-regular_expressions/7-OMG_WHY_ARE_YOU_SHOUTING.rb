#!/usr/bin/env bash
# Displays "To infinity and beyond" indefinitely,
# with a sleep 2 in between each iteration.
# Displays "I am invincible!!!" in between each iteration.

function show_message {
  echo "I am invincible!!!"
}

trap show_message SIGTERM

while true
do
  echo "To infinity and beyond"
  sleep 2
done

