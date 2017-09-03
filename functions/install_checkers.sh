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

function is_installed_add_centos_user_to_root_group {
  # Run command
  groups `whoami` | grep "root"
  # Check return status to determine installation
  if [ "$?" -eq "0" ]; then
    echo true
  else
    echo false
  fi
}

function is_installed_disable_selinux {
  # Run command
  getenforce | grep "Enforcing"
  # Check return status to determine installation
  if [ "$?" -eq "0" ]; then
    echo true
  else
    echo false
  fi
}
