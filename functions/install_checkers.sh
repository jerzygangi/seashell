function is_installed_default {
  if [ -e /etc/seashell/installs/$1.finished ]; then
    echo true
  else
    echo false
  fi
}

function is_installed_ruby {
  # Run command
  which ruby &> /dev/null
  # Check return status to determine installation
  if [ "$?" -eq "0" ]; then
    echo true
  else
    echo false
  fi
}
