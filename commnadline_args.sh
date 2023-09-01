#!/usr/bin/bash
<< EOF
echo $0
echo $1
echo $2
echo $3
echo ${10}


echo "The number of command line arguments are: $#"
echo "The all command line arguments are: $@"
echo "The all command line arguments are: $*"
EOF

if [[ $# -ne 2 ]]
then
	echo "Hey admin, please run this script as follows"
	echo "usage: $0 <serviceName> <ActionToExecuteService>"
	exit 1
fi
#read -p "Enter your service to execute your action: " serviceName
#read -p "Enter your action to execute on your service: $serviceName " action
serviceName=$1
action=$2
systemctl $action $serviceName
