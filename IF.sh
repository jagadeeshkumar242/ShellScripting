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

sudo -v
if [[ $? -eq 0 ]]
then
	echo "The user $(id -un) is having sudo priviliges"
else
	echo  "The user $(id -un) doesn't have sudo priviliges"
fi
