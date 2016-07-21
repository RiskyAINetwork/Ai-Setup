#!/bin/bash
##################################################################
## IF YOU ARE GOING TO EDIT THIS FILE... NO WHITE SPACE PLEASE! ##
##                AND COMMENT EVERYTHING YOU DO!                ##
## ALSO... DONT BE A DICK. USE YOUR TABS.                       ##
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

#MAC
if [ "$(uname)" == "Darwin" ]; then
  if [ "$(whoami)" = "root" ]; then
    printf "%s\n${red}This script cannot use root permissions, try: ./${0##*/}${end}\n "
    exit 0
  fi
  printf "%s\n${blu}User is on MAC...${end}\n"
  cd
  
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  clear
fi
