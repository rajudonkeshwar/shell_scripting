#!/bin/bash

echo "Please enter your username::" # text entered here will be added as value to variable

read -s USERNAME # Here USERNAME is the variable name

echo "username entered: $USERNAME"

echo "Please enter your password::"

read -s PASSWORD

echo " your user name is :: $USERNAME "
echo " Your password is :: $PASSWORD "