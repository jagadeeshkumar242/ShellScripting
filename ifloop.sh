#!bin/bash

num1=10
num2=10

if [ "${num1}" -eq "${num2}" ] 
then
	echo "both numbers are same"

fi

echo "completed sript"

EOF

read -p "please enter your age : " Age

retriment_age=70

if [ -z $Age ]
then
	echo "You doesn't enter anything"

elif [ "${Age}" -ge "${retriment_age}" ]
then
	echo "you are retired"
else
	echo "You are stil young"
fi
