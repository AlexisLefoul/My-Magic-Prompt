#!/bin/bash

source utils.sh

process_command() {
  local cmd=$1
  shift
  local argv=("$@")
  
  case "$cmd" in
    help)
      show_help
      ;;
    ls)
      ls -lah
      ;;
    rm)
      rm -i "${argv[0]}"
      ;;
    rmd | rmdir)
      rmdir "${argv[0]}"
      ;;
    about)
      echo "Prompt magique développé par Xzen"
      ;;
    version | --v | vers)
      echo "Version 1.0"
      ;;
    age)
      get_age
      ;;
    quit | exit)
      exit 0
      ;;
    profil)
      show_profile
      ;;
    passw)
      change_password
      ;;
    cd)
      cd "${argv[0]}"
      ;;
    pwd)
      pwd
      ;;
    hour)
      date +%H:%M
      ;;
    httpget)
      download_html "${argv[@]}"
      ;;
    smtp)
      send_email "${argv[@]}"
      ;;
    open)
      vim "${argv[0]}"
      ;;
    *)
      echo "Unknown command: $cmd"
      ;;
  esac
}
