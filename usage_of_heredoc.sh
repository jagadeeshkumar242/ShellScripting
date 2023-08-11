#!/bin/bash

cat << EOF | grep -E "user"
the user is: $USER
the home for this user is: $HOME
EOF
