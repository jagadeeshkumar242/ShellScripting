#!/bin/bash
<< EOF
for each in 1 2 3 4 5
do	
   echo "This is the first shellscripting"
   echo "I am trying to familiar with scripting"
   echo "Scripting takes time to expert"
done
EOF

#[[ -x comments.sh ]] && echo "This file has executing permissions" || echo "THis file doesn't have execute permissions"
<< EOF
if [[ -x comments.sh ]]
then
	echo "This file has executing permissions"
else
	echo "This file doesn't have execute permissions"
fi
EOF

<< EOF
#for each in comments.sh IF.sh
for each in $(ls)
do
	if [[ -x $each ]]
	then
		echo "$each this file has executing permissions"
	else
		echo "$each this file doesn't have execute permissions"
	fi
done
EOF


for each_value in 1 2 3
do
	echo "This is the first loop"
done
