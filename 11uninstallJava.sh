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

java -version

if [ $? -eq 0 ]
then # java installed
    dnf remove java -y
    VALIDATE $? "removing java"
else
    echo "MySQL is already ... INSTALLED"
fi


dnf list installed git

if [ $? -ne 0 ]
then
    dnf install git -y
    VALIDATE $? "Installing Git"
else
    echo "Git is already ... INSTALLED"
fi