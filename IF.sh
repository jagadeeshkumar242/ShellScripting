#!/usr/bin/bash
<< EOF
if which docker
then
	echo "Docker is installed on this host"
	echo "The docker verison is: $(docker -v)"

fi
EOF

<< EOF
if which docker > sample.txt
then
	echo "Docker is installed"
else
	echo "Docker is not installed"
fi
rm sample.txt
EOF
<< EOF
which docker
if [[ $? -eq 0 ]]
then
        echo "Docker is installed on this host"
        echo "The docker verison is: $(docker -v)"

fi
EOF


#userId=$(id -u)

#[[ $userId -eq 0 ]] && echo "you are a root user" || echo "You are not a root user"
<< EOF
if [[ $(id -u) -eq 0 ]]
then
	echo "You are a root user"

else
	echo "You are not an root user"
fi
EOF
<< EOF
sudo -v 1>/dev/null 2>/dev/null && echo "The user $(id -un) is having sudo priviliges" || echo "The user $(id -un) doesn't have sudo priviliges"
EOF
<< EOF
sudo -v
if [[ $? -eq 0 ]]
then
	echo "The user $(id -un) is having sudo priviliges"
else
	echo  "The user $(id -un) doesn't have sudo priviliges"
fi
EOF

<< EOF
read -p "Enter you num: " num
if [[ $num -ge 50 ]] && [[ $num -le 100 ]]
then
	echo "The $num is in the range of 50 to 100"
else
	echo "The $num is not in the range of 50 to 100"
fi
EOF

<< EOF
read -p "Enter your confirmation to start the docker service: (yes or no)" cnf
if [[ $cnf == "yes" ]] || [[ $cnf == "y" ]]
then
	echo "Starting docker service...."
	systemtck start docker 
else
	echo "Skipping....."
fi
EOF
<< EOF
read -p "Do you want me to start docker?? yes or no: " usrcnf
if [[ -z $usrcnf ]]
then
	echo "not entering anthing"

elif [[ $usrcnf == "yes" ]]
then
	echo "Starting docker..."
	systemctl start docker
else
	echo "Docker is not installed...."
fi
EOF

if [[ $(id -u) -ne 0 ]]
then
	echo "You are not the allowed to run this script"
	exit 1
fi

read -p "Enter your option: " option

if [[ $option == start ]]
then
	echo "Starting docker..."
	systemctl start docker
elif [[ $option == stop ]]
then
	echo "stopping docker...."
	systemctl stop docker 
elif [[ $option == restart ]]
then
	echo "Restarting docker..."
	systemctl restart docker
elif [[ $option == version ]]
then
	version=$(docker -v | cut -d " " -f 3 | tr -d ",")
	echo "The version of docker is: $version"
else
	echo "Your option is invalid"
	echo "valid options are: start stop restart version"
fi
