#!/usr/bin/bash
<< EOF
x=5
y=89
((sum=x+y))
echo "The addition of $x and $y is: $sum"
EOF

read -p "enter your first number : " x
read -p "enter your second number: " y

((sum=$x+$y))

echo "The addition of $x and $y is: $sum"
