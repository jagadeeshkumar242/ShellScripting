#!/bin?bash
<< EOF
read -p "Enter the name that convert into upper case: " my_name
my_name_up=${my_name^^}
echo "your name in upper-case is: $my_name_up"
EOF
<< EOF
read -p "Enter your name: " 
echo "$REPLY"
EOF

read -p "Enter your name: " my_name

my_name_up=$(echo $my_name | tr [a-z] [A-z])

echo "Your name in upper-case is: $my_name_up"
