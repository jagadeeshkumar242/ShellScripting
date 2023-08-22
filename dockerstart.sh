
#!/usr/bin/bash

if [[ $(id -u) -eq 0 ]]
then
     if systemctl status docker 2>&1 1>/dev/null
     then
        echo "Already docker is running"

      else
        echo "Starting Docker service"
        systemctl start docker
        echo "Successfully started Docker service"
     fi
else
      echo "You are not the root user, so we are unable to start the docker"
fi
