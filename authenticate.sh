
authenticate() {
  local correct_username="admin"
  local correct_password="password"

  read -p "Username: " username
  read -s -p "Password: " password
  echo

  if [[ $username != $correct_username || $password != $correct_password ]]; then
    echo "L'authentification a échoué."
    exit 1
  fi
}
