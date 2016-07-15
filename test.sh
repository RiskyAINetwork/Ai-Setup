#!/bin/bash

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

# Detect the OS

if [ "$(uname)" == "Darwin" ]; then
    # Detect if they are in root mode.
    if [ "$(whoami)" = "root" ];
    then
        # Telling them how to fix said problem with their permissions.
        printf "%s\n${red}This script cannot use root permissions, try: ./${0##*/}${end}\n "
        exit 0
    fi

    # Confirm with the user what OS they are on... incase they forgot.
    printf "%s\n${blu}User is on MAC...${end}\n"


    # Start the check for installtion
    cd
    printf "%s\n${blu}Searching for the files incase it is already installed.${end}\n"
    # Command to check for directory.
    if [[ -d "Samantha" && ! -L "Samantha" ]];
    then
        printf "%s\n${yel}Found the folder. Cool!${end}\n"
        cd Samantha
        # Check if the INSTALL file exists.
        printf "%s\n${mag}Checking if the INSTALL file exists.${end}\n"


elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Detect if they are in root mode.
    if [ "$(whoami)" != "root" ];
    then
        # Tell them what the problem is and how they can fix it.
        printf "%s\n${red}This script requires root permissions, try: sudo ./${0##*/}${end}\n "
        exit 0
    fi

    # Confirm with the user what OS they are on... incase they forgot.
    prinf "%s\n${blu}User is on LINUX...${end}\n"

    # Start the check for installtion
    cd
    printf "%s\n${mag}Searching for the files incase it is already installed.${end}\n"
    # Command to check for directory.
    if [[ -d "Samantha" && ! -L "Samantha" ]];
    then
        printf "%s\n${yel}Found the folder. Cool!${end}\n"
        cd Samantha
        # Check if INSTALL file exists.
        printf "%s\n${mag}Checking if INSTALL file exists.${end}\n"
        if [ -e "INSTALL" ];
        then
            printf "%S$(tput setaf 10)${yel}File is here. Will begin install now.${end}\n"
            # Deleteing file so it doesnt re-install next time.
            rm -rf INSTALL
            # Ensure the user is willing to install
            read -r -p "${red}Would you like to continue with the install? [y/N] ${end}" response
            if [[ $reponse =~ ^([yY][eE][sS]|[yY])$ ]]
            then
                printf "%s\nExcellent! ${red}Please do not exit this script until it is complete.${end}\n"
            else
                exit 1
            fi

            # Begin install.
            printf "%s\n${mag}Going to install Git even if you already have it...${end}\n"
            sudo apt-get install -y git
            printf "%s\n${mag}Checking for python...${end}\n"
            if which python > /dev/null 2>&1;
            then
                sudo apt0get install -y python-pip
                pip install --upgrade pip
                printf "%s$(tput setaf 10)${grn}Python is already installed, great job!${end}\n"
            else
                # Installing python
                printf "%s\n${mag}Downloading and installing python.${end}\n"
                # Installing it.
                sudo apt-get install -y python
                sudo apt-get install -y python-pip
                # Finished install it.
                printf "%s$(tput setaf 10)${yel}Python is now install!${end}\n"
            fi
            # Now going to download all the requirements for it first.
            printf "%s\n${mag}Going to download all the dependancies then the Ai.${end}\n"
            pip install fuzzywuzzy
            pip install jsondb
            pip install jsondatabase
            pip install nltk
            pip install pymongo
            pip install python-twitter
            pip install textblob
            pip install python-Levensthein
            printf "%s$(tput setaf 10)${yel}Done with part 1.${end}\n"
            printf "%s\n${mag}Downloading part 2.${end}\n"
            sudo apt-get install -y espeak
            sudo apt-get install -y espeak python-espeak
            printf "%s$(tput setaf 10)${yel}Done with part 2.${end}\n"
            printf "%s\n${mag}Last part starting.${end}\n"
            git clone https://github.com/RiskyAINetwork/Ai-DB.git
            printf "%s$(tput setaf 10)${yel}Done.${end}\n"
            printf "s\n${mag}Going to now download the AI.${end}\n"
            git clone https://github.com/RiskyAINetwork/Samantha.git
            printf "%s$(tput setaf 10)${yel}Finished downloading the AI.${end}\n"
            printf "%s\n${mag}Now going to move the Ai files to where they need to be.${end}\n"
            mv ./Samantha/* ./
            curl -L "https://raw.githubusercontent.com/RiskyAINetwork/Ai-Setup/master/Update.sh" > Update.sh
            printf "%s$(tput setaf 10)${yel}Finished.${end}\n"
            # Should probably add the script to then make it start the Ai on @reboot
            printf "%s\n${mag}Now going to run the Ai.${end}\n"
            sleep 20
            clear
            python application.py

        else
            printf "%s$(tput setaf 10)${yel}File does not exist. AI is already installed.${end}\n"
            sleep 10
            clear
            printf "%s\n${mag}Will now begin the application.${end}\n"
        fi
    else
        printf "%s$(tput setaf 10)${yel}Could not find the folder. Going to create it.${end}\n"
        mkdir Samantha
        printf "%s$(tput setaf 10)${yel}Made the folder. Going to install the required.${end}\n"
        cd Samantha
        curl -L "https://raw.githubusercontent.com/RiskyAINetwork/AI-Setup/master/INSTALL" > INSTALL
        #Going to now run the installer.
        printf "%s\n${mag}Going to now install it."
        if [-e "INSTALL" ];
        then    
            # Ensure the user would like to install.
            read -r -p "${red}Would you like to continue with the install? [y/N] ${end}" response
            if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
            then
                printf "%s\nExcellent! ${red}Please do not exit this script until it is complete.${end}\n"
            else
                exit 1
            fi

            # Begin install.
            printf "%s\n${mag}Going to install Git even if you already have it...${end}\n"
            sudo apt-get install -y git
            printf "%s\n${mag}Checking for python...${end}\n"
            if which python > /dev/null 2>&1;
            then
                sudo apt-get install -y python-pip
                pip install --upgrade pip
                printf "%s$(tput setaf 10)${grn}Python is already installed, great job!${end}\n"
            else
                # Install python
                printf "%s\n${mag}Downloading and installing python.${end}\n"
                # Installing it.
                sudo apt-get install -y python
                sudo apt-get install -y python-pip
                pip install --upgrade pip
                # Finished installing it.
                printf "%s$(tput setaf 10)${yel}Python is now installed!${end}\n"
            fi
            # Now going to download all the requirements for it first.
            printf "%s\n${mag}Going to download all dependancies then the AI.${end}\n"
            pip install fuzzywuzzy
            pip install jsondb
            pip install jsondatabase
            pip install nltk
            pip install pymongo
            pip install python-twitter
            pip install textblob
            pip install python-Levensthein
            printf "%s$(tput setaf 10)${yel}Done with part 1.${end}\n"
            printf "%s\n${mag}Downloading part 2.${end}\n"
            sudo apt-get install -y espeak
            sudp apt-get install -y espeak python-espeak
            printf "%s$(tput setaf 10)${yel}Done with part 2.${end}\n"
            printf "%s\n${mag}Last part starting.${end}\n"
            git clone https://github.com/RiskyAINetwork/Ai-DB.git
            printf "%s$(tput setaf 10)${yel}Done.${end}\n"
            printf "%s\n${mag}Going to now download the Ai.${end}\n"
            git clone https://github.com/RiskyAINetwork/Samantha.git
            printf "%s$(tput setaf 10)${yel}Finished downloading AI.${end}\n"
            printf "%s\n${mag}Now going to move the Ai files to where they need to be.${end}\n"
            mv ./Samantha/* ./
            curl -L "https://raw.githubusercontent.com/RiskyAINetwork/AI-Setup/master/Update.sh" > Update.sh
            printf "%s$(tput setaf 10)${yel}Finished.${end}\n"
            # Should probably add the script to then make it s the Ai starts on @reboot
            printf "%s\n${mag}Now going to run the Ai.${end}\n"
            sleep 20
            clear
            python application.py
        else

        fi
    fi
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Letting windows users know what we think.
    printf "%s\n${blu}System is WINDOWS... clearly the USER wants to kill themself.${end}\n"
fi





printf "%s\n${mag}Removing any folders that shouldnt be here...${end}\n"
printf "%s$(tput setaf 10)${yel}Done!${end}"
