#!/bin/bash

# Any subsequent(*) commands which fail will cause the shell script to exit immediately
set -e

# Supported versions of node: v4.x, v5.x
PYTHON_VERSION="2.*"

# Terminal Colors
red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'

# Ensure we are using sudo
if [ "$(whoami)" != "root" ];
then
	echo "This script requires root permissions, try: sudo ./${0##*/} "
	exit 0
fi

cat << "EOF"
 ________  _____ ______   ________  ________  _________
|\   ____\|\   _ \  _   \|\   __  \|\   __  \|\___   ___\
\ \  \___|\ \  \\\__\ \  \ \  \|\  \ \  \|\  \|___ \  \_|
 \ \_____  \ \  \\|__| \  \ \   __  \ \   _  _\   \ \  \
  \|____|\  \ \  \    \ \  \ \  \ \  \ \  \\  \|   \ \  \
    ____\_\  \ \__\    \ \__\ \__\ \__\ \__\\ _\    \ \__\
   |\_________\|__|     \|__|\|__|\|__|\|__|\|__|    \|__|
   \|_________|

 _____ ______   ___  ________  ________  ________  ________
|\   _ \  _   \|\  \|\   __  \|\   __  \|\   __  \|\   __  \
\ \  \\\__\ \  \ \  \ \  \|\  \ \  \|\  \ \  \|\  \ \  \|\  \
 \ \  \\|__| \  \ \  \ \   _  _\ \   _  _\ \  \\\  \ \   _  _\
  \ \  \    \ \  \ \  \ \  \\  \\ \  \\  \\ \  \\\  \ \  \\  \
   \ \__\    \ \__\ \__\ \__\\ _\\ \__\\ _\\ \_______\ \__\\ _\
    \|__|     \|__|\|__|\|__|\|__|\|__|\|__|\|_______|\|__|\|__|

EOF

printf "%sThis script will install the Samantha AI and it's dependencies.\n"

# Ensure the use would like to start the install
read -r -p "Would you like to continue? [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
    printf "%sExcellent! ${red}Please do not exit this script until it is complete.${end}\n"
else
    exit 1
fi

printf "%s\nChecking for python...\n"
python --version | grep ${PYTHON_VERSION}
if [[ $? != 0 ]] ;
then
    # Install Python
    printf "%s{blu}Downloading and Installing python${end}\n"
    #Installing it...
    apt-get install -y python
    #Finished installing
    printf "%s$(tput setaf 10)python is now installed!${end}\n"
else
    printf "%s$(tput setaf 10)node is already installed, great job!${end}\n"
fi

# Getting the code
printf "%s\n{blu}Cloning Git Repo${end}\n"
cd /home/$SUDO_USER
sudo -u $SUDO_USER git clone https://github.com/crazywolf132/Samantha.git
printf "%s\n$(tput setaf 10)Samantha is now downloaded${end}\n"

# Installing dependencies.
print "%s\n{blu}Cloning Git Python${end}\n"
cd /home/$SUDO_USER
sudo -u $SUDO_USER git clone https://github.com/gitpython-developers/GitPython.git
# Done downloading
print "%s\n$(tput setaf 10)Git python is now downloaded!${end}\n"
# Begin install
cd GitPython
python setup.py install
# Finished install
print "%s\n$(tput setaf 10)Git python is now installed!${end}\n"
# Now removing the remains
cd ../
rm -R GitPython


cd Samantha

# Download Database
printf "%s{blu}Grabbing Database${end}\n"
sudo -u $SUDO_USER git clone https://github.com/crazywolf132/Ai-DB


# Install package to make Samantha speak
printf "%s\n{blu}Installing espeak${end}\n"
sudo apt-get install espeak
sudo apt-get install espeak python-espeak


printf "%s\n{blu}Installing all updates for Samantha...${end}\n"
printf "%s${yel}This may take a while. Go grab a beer :)${end}\n"
sudo -u $SUDO_USER apt-get update
sudo -u $SUDO_USER sudo apt-get dist-upgrade

# The mirror is now installed, yay!
cat << "EOF"

        |        Samantha is now installed!
       / \
      / _ \      Once you fill out your config you can start the Ai with:
     |.o '.|     python Main.py
     |'._.'|
     |     |
   ,'|  |  |`.
  /  |  |  |  \
  |,-'--|--'-.|

EOF
# ASCII art found on http://textart.io/
exit 0












































if [ "$(uname)" == "Darwin" ]; then
    if [ "$(id -u)" = "0" ]; then
    echo "This script cannot be run as root" 1>&2
    exit 1
    fi
    echo 'System is MAC'


elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root" 1>&2
    exit 1
    fi
    echo 'System is LINUX'


elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then

    echo 'System is WINDOWS'
    echo 'User will not be able to install on this device.'


fi
