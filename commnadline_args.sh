#!/usr/bin/bash
<< EOF
echo $0
echo $1
echo $2
echo $3
echo ${10}
EOF

echo "The number of command line arguments are: $#"
echo "The all command line arguments are: $@"
echo "The all command line arguments are: $*"
