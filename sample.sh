#!/bin/bash

DockerVersion=$(docker -v | cut -d " " -f 3 | tr "," " ")
NginxVersion=$(nginx -v 2>&1 | cut -d " " -f 3 | cut -d "/" -f 2)
OsName=$(uname)

cat <<EOF | /usr/bin/mail -s "$(date '+%d_%m_%y'): Report on $(hostname)" "Jagadeeshkumar242@gmail.con"
Docker Version: $DockerVersion
Nginx Version: $NginxVersion
Os Uname: $OsUname

Thanks,
DevOps team
EOF
