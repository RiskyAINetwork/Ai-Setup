#!/bin/bash

# Terminal Colors
red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'


printf "%sThis script will remove all the uneeded files and clean up the code to make it nice.\n"

# Ensure the use would like to start the install
read -r -p "Would you like to continue? [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
    printf "%sExcellent! ${red}Please do not exit this script until it is complete.${end}\n"
else
    exit 1
fi

printf "%s\n${mag}Removing any folders that shouldnt be here...${end}\n"
rm -rf ./Ai-Setup
rm -rf ./GitPython
rm -rf ./Installers
rm -rf ./mac.sh
rm -rf ./linux.sh
printf "%s$(tput setaf 10)${yel}Done!${end}"

printf "%s\n${mag}Moving files to new loacaionts...${end}\n"
# Make installer directory
mkdir Installers
cd Installers
# Download different installer
curl -L "https://raw.githubusercontent.com/RiskyAINetwork/Ai-Setup/master/done.sh" > done.sh
# Rename the installer so it seems normal
mv ./done.sh ./install.sh
# Make other direcotries based on the OS
if [ "$(uname)" == "Darwin" ]; then
mkdir MAC
cd MAC
# Download mac installer
curl -L "https://raw.githubusercontent.com/RiskyAINetwork/Ai-Setup/master/mac.sh" > mac.sh
cd ../
else
mkdir LINUX
cd LINUX
# Download linux installer
curl -L "https://raw.githubusercontent.com/RiskyAINetwork/Ai-Setup/master/linux.sh" > linux.sh
# CD out when done.
fi
cd /Samantha
curl -L "https://raw.githubusercontent.com/RiskyAINetwok/Ai-Setup/master/Start.sh" > Start.sh
printf "%s$(tput setaf 10)${yel}Finished moving.!${end}\n"

printf "%s${red}Next time please use Start.sh...${end}\n"
sleep 10
printf "%s${grn}Going to start application now.${end}\n"
sleep 4
bash Start.sh
