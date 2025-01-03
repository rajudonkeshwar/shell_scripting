#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 ... IS FAILURE"
        exit 1
    else
        echo "$2 ... IS SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "ERROR:: You must have sudo access to execute this script"
    exit 1 #other than 0
fi

java -v

if [ $? -eq 0 ]
then # java installed
    dnf remove java -y
    VALIDATE $? "removing java"
else
    echo "MySQL is already ... INSTALLED"
fi
