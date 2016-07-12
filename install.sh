#!/bin/bash
if [ "$(uname)" == "Darwin" ]; then
  # Making sure the user is not root or the script wont work.
    if [ "$(whoami)" = "root" ];
    then
       # Telling them what the problem is what the problem is and how to fix it.
    	echo "This script cannot use root permissions, try: ./${0##*/} "
    	exit 0
    fi

    clear
    # Echo for the logs.
    echo 'User is on MAC'
    # Download installer
    curl -L "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/mac.sh" > mac.sh
    # Download Start.sh
    curl -L "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/Start.sh" > Start.sh

    # Clear terminal after download    
    clear
    # Run installer
    bash mac.sh

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  # Making sure root is used for this script.
    if [ "$(whoami)" != "root" ];
    then
      # Telling them what the problem is what the problem is and how to fix it.
  	 echo "This script requires root permissions, try: sudo ./${0##*/} "
  	 exit 0
    fi

    clear
    # Echo for the logs.
    echo 'User is on a LINUX.'
    # Download installer
    curl -L "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/linux.sh" > linux.sh
    # Download Start.sh
    curl -L "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/Start.sh" > Start.sh
    
    # Clear terminal after download
    clear
    # Run installer
    sudo bash linux.sh

elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
  # Letting windows users know what we think.
    echo 'System is WINDOWS... clearly the USER wants to kill themself.'
fi
