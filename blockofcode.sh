#!/usr/bin/bash

#{ ls; pwd ; date ; }

which docker && { echo "Docker is installed in the host" ; echo "The docker version is: $(docker -v)" ; } || echo "Docker is not installed"

which apache2 2>&1 1>/dev/null && { echo "Apache2 is installed" ; echo "The version of apache2 is: $(apache2 -v)" ; } || echo "Apache2 is not installed"
