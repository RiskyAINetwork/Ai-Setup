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
install_part_1_mac(){
  printf "%s\n${grn}We have found PART 1 of the installer!${end}\n"
  printf "%s\n${mag}Installing Python.${end}\n"
  brew install python
  printf "%s(tput setaf 10)${yel}Finished installing Python.${end}\n"
  printf "%s\n${mag}Installing Git.${end}\n"
  brew install git
  printf "%s$(tput setaf 10)${yel}Finished installing Git.${end}\n"
  printf "%s${mag}Installing ESPEAK.${end}\n"
  brew install espeak
  printf "%s$(tput setaf 10)${yel}Finished installing ESPEAK.${end}\n"
  printf "%s$(tput setaf 10)${cyn}Finished installing PART 1.${end}\n"
  rm -rf PART 1
}
install_part_1_linux(){
  printf "%s\n${grn}We have found PART 1 of the installer!${end}\n"
  printf "%s\n${mag}Installing Python.${end}\n"
  sudo apt-get install -y python
  sudo apt-get install -y python-pip
  printf "%s(tput setaf 10)${yel}Finished installing Python.${end}\n"
  printf "%s\n${mag}Installing Git.${end}\n"
  sudo apt-get install -y git
  printf "%s$(tput setaf 10)${yel}Finished installing Git.${end}\n"
  printf "%s${mag}Installing ESPEAK.${end}\n"
  sudo apt-get install -y espeak
  sudo apt-get install -y espeak python-espeak
  printf "%s$(tput setaf 10)${yel}Finished installing ESPEAK.${end}\n"
  printf "%s$(tput setaf 10)${cyn}Finished installing PART 1.${end}\n"
  rm -rf PART 1
}
install_part_2(){
  if [ -e "PART 2" ]; then
    rm -rf PART 2
    curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/PART%202" > PART 2
  else
    curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/PART%202" > PART 2
  fi
  printf "%s\n${mag}Going to install PART 2.${end}\n"
  git clone https://github.com/RiskyAINetwork/Samantha.git
  mv ./Samantha/* ./
  mkdir samantha
  mv ./Samantha/samantha/* ./samantha
  rm -rf ./Samantha/samantha/
  mv ./Samantha ./samantha
  git clone https://github.com/RiskyAINetwork/Ai-DB.git
  printf "%s$(tput setaf 10)${cyn}Finished installing PART 2.${end}\n"
  rm -rf PART 2
}
install_part_3(){
  printf "%s\n${mag}Going to install PART 3.${end}\n"
  printf "%s\n${mag}Going to move install files to install_files folder.${end}\n"
  curl -L "" > Update.sh
  rm -rf Download.sh
  rm -rf setup.sh
  rm -rf Start.sh
  curl "" > Start.sh
  if [[ -d "install_files" && ! -L "install_files" ]]; then
    printf "%s\n${mag}Found the folder. Going to download the files.${end}\n"
    cd install_files
    if [ -e "Update.sh" ]; then
      rm -rf Update.sh
      curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/Update.sh" > Update.sh
    else
      if [ -e "update.sh" ]; then
        rm -rf update.sh
        curl "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/Update.sh" > Update.sh
      else
        curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/Update.sh" > Update.sh
      fi
    fi
    if [ -e "Download.sh" ]; then
      rm -rf Download.sh
      curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/Download.sh" > Download.sh
    else
      if [ -e "download.sh" ]; then
        rm -rf download.sh
        curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/Download.sh" > Download.sh
      else
        curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/Download.sh" > Download.sh
      fi
    fi
    if [ -e "Setup.sh" ]; then
      rm -rf Setup.sh
      curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/Setup.sh" > Setup.sh
    else
      if [ -e "setup.sh" ]; then
        rm -rf setup.sh
        curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/Setup.sh" > Setup.sh
      else
        curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/Setup.sh" > Setup.sh
      fi
    fi
    if [ -e "Start.sh" ]; then
      rm -rf Start.sh
      curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/Setup.sh" > Start.sh
    else
      if [ -e "start.sh" ]; then
        rm -rf start.sh
        curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/Setup.sh" > Start.sh
      else
        curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/Setup.sh" > Start.sh
      fi
    fi
    printf "%s$(tput setaf 10)${yel}Finished downloading files into folder.${end}\n"
  else
    printf "%s\n${mag}Could not find directory. Going to make it.${end}\n"
    mkdir install_files
    cd install_files
    curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/Update.sh" > Update.sh
    curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/Download.sh" > Download.sh
    curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/Setup.sh" > Setup.sh
    curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/Setup.sh" > Start.sh
    printf "%s$(tput setaf 10)${yel}Finished making Folder and downloading files.${end}\n"
  fi
  printf "%s$(tput setaf 10)${cyn}Finished installing PART 3.${end}\n"
  rm -rf PART 3
}
install_part_4(){
  if [ -e "PART 4" ]; then
    rm -rf PART 4
    curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/PART%204" > PART 4
  else
    curl -L "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/PART%204" > PART 4
  fi
  printf "%s\n${mag}Going to install PART 4.${end}\n"
  pip install fuzzywuzzy
  pip install jsondb
  pip install jsondatabase
  pip install nltk
  pip install pymongo
  pip install python-twitter
  pip install textblob
  pip install python-Levenshtein
  pip install SpeechRecognition
  printf "%s$(tput setaf 10)${cyn}Finished installing PART 4.${end}\n"
  rm -rf PART 4
  rm -rf INSTALL
}
application_run(){
  sleep 3
  printf "%s\n${mag}Going to start the AI.${end}\n"
  cd
  cd Samantha
  sleep 2
  clear
  python application.py
}
request_permission(){
  printf "%sThis script will install the Samantha AI and it's dependencies.\n"
  read -r -p "Would you like to continue? [y/N] " response
  if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
    printf "%sExcellent! ${red}Please do not exit this script until it is complete.${end}\n"
  else
    exit 1
  fi
}
#MAC
if [ "$(uname)" == "Darwin" ]; then
  if [ "$(whoami)" = "root" ]; then
    printf "%s\n${red}This script cannot use root permissions, try: ./${0##*/}${end}\n "
    exit 0
  fi
  printf "%s\n${blu}User is on MAC...${end}\n"
  cd ~/
  if [[ -d "Samantha" && ! -L "Samantha" ]]; then
    cd Samantha
    if [ -e "INSTALL" ]; then
      if [ -e "PART 1" ]; then
        request_permission
        install_part_1_mac
        install_part_2
        install_part_3
        install_part_4
        application_run
      else
        if [ -e "PART 2" ]; then
          request_permission
          install_part_2
          install_part_3
          install_part_4
          application_run
        else
          if [ -e "PART 3" ]; then
            request_permission
            install_part_3
            install_part_4
            application_run
          else
            if [ -e "PART 4" ]; then
              request_permission
              install_part_4
              application_run
            else
              printf "%s\n${red}Could not find any of the install Parts!${end}\n"
              if [ -e "PART 1" ]; then
                request_permission
                install_part_1_mac
                install_part_2
                install_part_3
                install_part_4
                application_run
              else
                if [ -e "PART 2" ]; then
                  request_permission
                  install_part_2
                  install_part_3
                  install_part_4
                  application_run
                else
                  if [ -e "PART 3" ]; then
                    request_permission
                    install_part_3
                    install_part_4
                    application_run
                  else
                    if [ -e "PART 4" ]; then
                      request_permission
                      install_part_4
                      application_run
                    else
                      application_run
                    fi
                  fi
                fi
              fi
            fi
          fi
        fi
      fi
    else
      if [ -e "PART 1" ]; then
        request_permission
        install_part_1_mac
        install_part_2
        install_part_3
        install_part_4
        application_run
      else
        if [ -e "PART 2" ]; then
          request_permission
          install_part_2
          install_part_3
          install_part_4
          application_run
        else
          if [ -e "PART 3" ]; then
            request_permission
            install_part_3
            install_part_4
            application_run
          else
            if [ -e "PART 4" ]; then
              request_permission
              install_part_4
              application_run
            else
              application_run
            fi
          fi
        fi
      fi
    fi
  else
    request_permission
    mkdir Samantha
    cd Samantha
    curl "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/INSTALL" > INSTALL
    curl "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/PART%201" > PART 1
    install_part_1_mac
    install_part_2
    install_part_3
    install_part_4
    application_run
  fi
  #LINUX
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  if [ "$(whoami)" != "root" ]; then
    printf "%s\n${red}This script cannot run without root permissions, try: ./${0##*/}${end}\n "
    exit 0
  fi
  printf "%s\n${blu}User is on LINUX...${end}\n"
  cd ~/
  if [[ -d "Samantha" && ! -L "Samantha" ]]; then
    cd Samantha
    if [ -e "INSTALL" ]; then
      if [ -e "PART 1" ]; then
        request_permission
        install_part_1_linux
        install_part_2
        install_part_3
        install_part_4
        application_run
      else
        if [ -e "PART 2" ]; then
          request_permission
          install_part_2
          install_part_3
          install_part_4
          application_run
        else
          if [ -e "PART 3" ]; then
            request_permission
            install_part_3
            install_part_4
            application_run
          else
            if [ -e "PART 4" ]; then
              request_permission
              install_part_4
              application_run
            else
              printf "%s\n${red}Could not find any of the install Parts!${end}\n"
              if [ -e "PART 1" ]; then
                request_permission
                install_part_1_linux
                install_part_2
                install_part_3
                install_part_4
                application_run
              else
                if [ -e "PART 2" ]; then
                  request_permission
                  install_part_2
                  install_part_3
                  install_part_4
                  application_run
                else
                  if [ -e "PART 3" ]; then
                    request_permission
                    install_part_3
                    install_part_4
                    application_run
                  else
                    if [ -e "PART 4" ]; then
                      request_permission
                      install_part_4
                      application_run
                    else
                      application_run
                    fi
                  fi
                fi
              fi
            fi
          fi
        fi
      fi
    else
      if [ -e "PART 1" ]; then
        request_permission
        install_part_1_linux
        install_part_2
        install_part_3
        install_part_4
        application_run
      else
        if [ -e "PART 2" ]; then
          request_permission
          install_part_2
          install_part_3
          install_part_4
          application_run
        else
          if [ -e "PART 3" ]; then
            request_permission
            install_part_3
            install_part_4
            application_run
          else
            if [ -e "PART 4" ]; then
              request_permission
              install_part_4
              application_run
            else
              application_run
            fi
          fi
        fi
      fi
    fi
  else
    request_permission
    mkdir Samantha
    cd Samantha
    curl "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/INSTALL" > INSTALL
    curl "https://raw.githubusercontent.com/RsikyAINetwork/Ai-Setup/master/PART%201" > PART 1
    install_part_1_linux
    install_part_2
    install_part_3
    install_part_4
    application_run
  fi
fi
