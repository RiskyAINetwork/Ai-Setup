#!/bin/bash

# Terminal Colors
red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'

# Ensure we are using sudo
if [ "$(whoami)" = "root" ];
then
	echo "This script cannot use root permissions, try: ./${0##*/} "
	exit 0
fi

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
printf "%s$(tput setaf 10)${yel}Done!${end}"

printf "%s\n${mag}Moving files to new loacaionts...${end}\n"
mkdir Installers
mv ./install.sh ./Installers/install.sh
cd Installers
mkdir MAC
mkdir LINUX
cd ../
if [ -f "mac.sh" ];
then
  mv ./mac.sh ./Installers/MAC/mac.sh
else
  printf "%s${yel}No mac install found.${end}\n"
if [ -f "linux.sh"];
then
  mv ./linux.sh ./Installers/LINUX/installer.sh
else
  printf "%s${yel}No Linux install found.${end}\n"

printf "%s$(tput setaf 10)${yel}Finished moving.!${end}"
