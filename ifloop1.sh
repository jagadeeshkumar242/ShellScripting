#!/bin/bash

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

