#!/bin/bash

source authenticate.sh
source commands.sh

# Fonction principale du prompt
main() {
  authenticate
  local lineCount=1
  while true; do
    local date=$(date +%H:%M)
    echo -ne "${date} - [\033[31m${lineCount}\033[m] - \033[33mXzen\033[m ~ ☠️ ~ "
    read string
    process_command $string
    ((lineCount++))
  done
}

main
