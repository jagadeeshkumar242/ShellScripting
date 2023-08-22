#!/usr/bin/bash
<<EOF
clear

read -p "Enter num1: " a
read -p "Enter num2: " b
read -p "Enter your option(1.add 2.sub 3.div 4.mul): " opt

case $opt in
	1) 
		echo "you selected addition"
		echo "The addition of $a and $b is: $((a+b))"
		;;

	2) 
	 
	         echo "you selected subtraction"
		 echo "The subtraction of $a and $b is: $((a-b))"
		 ;;
         3)

		 echo "You selected division"
		 echo "The division of $a and $b is: $((a/b))"
		 ;;

         4)
		 echo "you selected multiplication"
		 echo "The multiplication of $a and $b is: $((a*b))"
		 ;;

	 *)
		 echo "You entered the wroung input"
		 ;;
esac
EOF

read -p "Enter any number: " num
case $num in 
	[0-9])
		echo "you entered number"
		;;
	[a-z])
		echo "you entered lower case alphabets"
		;;
	[A-Z])
		echo "you entered upper case alphabets"
		;;
	*)
		echo "unable to find the input"
		;;
esac
