# Add rugby-school to hosts directory if needed
HOSTNAME='wandersnap-admin.test'
HOSTNAME_API='wandersnap-api.test'

if [ -n "$(grep $HOSTNAME /etc/hosts)" ]
  then
      echo "$HOSTNAME already exists"
  else
    echo "Adding 'wandersnap-admin.test' to hosts file...your password may be required"
    sudo -- sh -c -e "echo '127.0.0.1 wandersnap-admin.test' >> /etc/hosts";
fi

if [ -n "$(grep $HOSTNAME_API /etc/hosts)" ]
  then
      echo "$HOSTNAME_API already exists"
  else
    echo "Adding 'wandersnap-api.test' to hosts file...your password may be required"
    sudo -- sh -c -e "echo '127.0.0.1 wandersnap-api.test' >> /etc/hosts";
fi
