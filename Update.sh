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
cd ~/Samantha
if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
    printf "%s\n${grn}User is connected to internet! Going to start update.${end}\n"
    # Move the current database folder to a different name.
    mv ./Ai-DB/ ./Ai-DB-OLD/
    cd ~/
    curl -L "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/Update.sh" > Update.sh
    mv ./Samantha ./Samantha-OLD
    git clone https://github.com/crazywolf132/Samantha.git
    cd Samantha
    git clone https://github.com/crazywolf132/Ai-DB.git
    cd samantha
    curl -L "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/Download.sh" > download.sh
    bash download.sh

else
    printf "%s\n${red}User is not connected to the internet. Please try again later.${end}\n" ,e
    exit 1
fi
