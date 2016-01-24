#!/bin/bash

if [ $(uname -a |awk '{print $4}' | sed 's/#/ /;s/-/ /' | awk '{print $2}') = Ubuntu]
then
echo "Ur Os is ubuntu "
	if [ $(whoami) != root]
	then
	echo "run this script with ubuntu root user"
	exit
	else 
	echo "u r root in ubuntu"
	fi
else [ $(cat /etc/redhat-release | awk '{printf $1}') = Fedora]
then
echo "Ur os is Fedora"
	if [ $(whoami) != root]
        then
        echo "run this script with fedora root user"
        exit
        else 
        echo "u r root in fedora"
        fi
fi








copy()

cp -r /home/nc/Desktop/eclipse /home
echo "done"
Chat Conversation End

