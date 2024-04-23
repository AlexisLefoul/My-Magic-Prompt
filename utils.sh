#!/bin/bash

show_help() {
  echo "Commandes disponibles: "
  echo "help, ls, rm, rmd, about, version, age, quit, profil, passw, cd, pwd, hour, httpget, smtp, open"
}

get_age() {
  read -p "Entrez votre âge: " age
  if (( age < 18 )); then
    echo "Vous êtes mineur."
  else
    echo "Vous êtes un adulte."
  fi
}

show_profile() {
  echo "Prénom: Alexis"
  echo "Nom de famille: Lefoul"
  echo "Âge : 23ans"
  echo "Email: alexis-lefoul@my-digital-school.org"
}

change_password() {
  read -sp "Saisir le mot de passe actuel: " current_pass
  echo
  read -sp "Entrez le nouveau mot de passe: " new_pass
  echo
  read -sp "Confirmer le nouveau mot de passe: " confirm_pass
  echo
  if [ "$new_pass" == "$confirm_pass" ]; then
    echo "Le mot de passe a été modifié avec succès."
  else
    echo "Les mots de passe ne correspondent pas. Le changement de mot de passe a échoué."
  fi
}

download_html() {
  local url=$1
  local filename=$2
  curl -o "$filename" "$url"
}

send_email() {
  local to=$1
  local subject=$2
  local body=$3
  read -p "Saisir l'adresse e-mail du destinataire: " to
  read -p "Saisir l'objet du courriel: " subject
  read -p "Saisir le corps du message: " body
  echo "$body" | mail -s "$subject" "$to"
}


vim() {
  file="$1"
  vim "$file"
}
