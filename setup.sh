#!/bin/bash

##################################################################
## IF YOU ARE GOING TO EDIT THIS FILE... NO WHITE SPACE PLEASE! ##
##                AND COMMENT EVERYTHING YOU DO!                ##
##################################################################

# Terminal Colors
red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'

# Clean console incase it is dirty with other commands.
clear

if [ "$(uname)" == "Darwin" ]; then
    # Detect if they are in root mode.
    if [ "$(whoami)" = "root" ]; then
        # Telling them how to fix said problem with their permissions.
        printf "%s\n${red}This script cannot use root permissions, try: ./${0##*/}${end}\n "
        exit 0
    fi
    # Confirm with the user what OS they are on... incase they forgot.
    printf "%s\n${blu}User is on MAC...${end}\n"
    # CD to root directory where the AI will be installed.
    cd
    # Check for folder.
    if [[ -d "Samantha" && ! -L "Samantha" ]]; then
        # Check for INSTALL file in directory.
        if [ -e "INSTALL" ]; then
            # If the INSTALL file exists. Continue with the install.
        else
            # Download the INSTALL file incase the installer does not finish.
        fi
    else
        # Make a directory to contain the AI seen as it does not exist.
        mkdir Samantha
    fi

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
      # Detect if they are in root mode.
      if [ "$(whoami)" != "root" ]; then
        # Tell them what the issuse is and how they can fix it.
        printf "%s\n${red}This script requires root permissions, try: sudo ./${0##*/}${end}\n "
        exit 0
      fi
      # Confirm with the user what OS they are on... incase they forgot.
      printf "%s\n${blu}User is on LINUX...${end}\n"
      # CD to root directory where the AI will be installed
      cd
      # Check for folder.
      if [[ -d "Samantha" && ! -L "Samantha" ]]; then
        # Check for INSTALL file in directory.
        if [ -e "INSTALL" ]; then
          # If the INSTALL file exists. Contintue with the install.
        else
          # Download the INSTALL file incase the installer does not finish.
        fi
      else
        # Make a directory to contain the AI seen as it does not exist.
        mkdir Samantha
      fi

elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
      # Letting windows users know what we think.
      printf "%s\n${blu}System is WINDOWS... clearly the USER wants to kill themself.${end}\n"
fi
