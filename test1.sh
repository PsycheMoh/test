#!/bin/bash



arc(){
	if [ $(uname -p) = x86_64 ]
	then
	echo "Ur system architecture is 64 bit"
	elif [ $(uname -p) = i386 ] 
	then
	echo "Ur system architecture is 32 bit"
	elif [ $(uname -p) = i486 ] 
	then
	echo "Ur system architecture is 32 bit"
	elif [ $(uname -p) = i586 ] 
	then
	echo "Ur system architecture is 32 bit"
	else
	echo -e "Ur system architecture is" $(uname -p)
	fi
}



if [ $(uname -a |awk '{print $4}' | sed 's/#/ /;s/-/ /' | awk '{print $2}') = Ubuntu ]
then
echo "Ur Os is ubuntu "
	 if [ $(whoami) != root ]
        then
        echo "run this script with ubuntu root user"
        exit
        else 
        echo "u r root in ubuntu"
	arc
        fi

else [ $(cat /etc/redhat-release | awk '{printf $1}') = Fedora ]
echo "Ur Os is Fedora"
        if [ $(whoami) != root ]
        then
        echo "run this script with fedora root user"
        exit
        else 
        echo "u r root in fedora"
	arc
        fi
fi
