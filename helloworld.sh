#!/bin/bash

s="Bash shell scripting"

echo "hello world"
echo "Welcome to $s"
echo "$s is powerfull in linux Env"
echo "Now we are working with variables concept of $s"

Docker_status=$(systemctl status docker | awk '/Active/ {print $3}' | tr -d "(" | tr -d "[()]")

Docker_version=$(docker -v | awk '{print $3}' | tr -d ",")

echo "The status of docker is: $Docker_status"
echo "The version of docker is: $Docker_version"
