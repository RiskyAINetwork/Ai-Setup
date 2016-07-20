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
  cd ...
  cat << "EOF"
  R.A.I.N

  01010010 00101110 01000001 00101110 01001001 00101110 01001110




  Risky Artificial Intelligence Network.

  01010010 01101001 01110011 01101011 01111001 00100000 01000001 01110010 01110100 01101001 01100110 01101001 01100011 01101001 01100001 01101100 00100000 01001001 01101110 01110100 01100101 01101100 01101100 01101001 01100111 01100101 01101110 01100011 01100101 00100000 01001110 01100101 01110100 01110111 01101111 01110010 01101011 00101110

  EOF
  if [[ -d "Samantha" && ! -L "Samantha" ]]; then
    cd Samantha
    if [ -e "INSTALL" ]; then
      #RUN THE installer
      #CHECK FOR THE PART FILES.
      printf "%sThis script will install the Samantha AI and it's dependencies.\n"
      read -r -p "Would you like to continue? [y/N] " response
      if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
          printf "%sExcellent! ${red}Please do not exit this script until it is complete.${end}\n"
      else
          exit 1
      fi
        if [ -e "PART 1" ]; then
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
          if [ -e "PART 2" ]; then
            rm -rf PART 2
            curl -L "" > PART 2
          else
            curl -L "" > PART 2
          fi
          printf "%s\n${mag}Going to install PART 2.${end}\n"
          git clone https://github.com/RiskyAINetwork/Samantha.git
          mv ./Samantha/* ./
          git clone https://github.com/RiskyAINetwork/Ai-DB.git
          printf "%s$(tput setaf 10)${cyn}Finished installing PART 2.${end}\n"
          rm -rf PART 2
          if [ -e "PART 3" ]; then
            rm -rf PART 3
            curl -L "" > PART 3
          else
            curl -L "" > PART 3
          fi
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
              curl -L "" > Update.sh
            else
              if [ -e "update.sh" ]; then
                rm -rf update.sh
                curl "" > Update.sh
              else
                curl -L "" > Update.sh
              fi
            fi
            if [ -e "Download.sh" ]; then
              rm -rf Download.sh
              curl -L "" > Download.sh
            else
              if [ -e "download.sh" ]; then
                rm -rf download.sh
                curl -L "" > Download.sh
              else
                curl -L "" > Download.sh
              fi
            fi
            if [ -e "Setup.sh" ]; then
              rm -rf Setup.sh
              curl -L "" > Setup.sh
            else
              if [ -e "setup.sh" ]; then
                rm -rf setup.sh
                curl -L "" > Setup.sh
              else
                curl -L "" > Setup.sh
              fi
            fi
            if [ -e "Start.sh" ]; then
              rm -rf Start.sh
              curl -L "" > Start.sh
            else
              if [ -e "start.sh" ]; then
                rm -rf start.sh
                curl -L "" > Start.sh
              else
                curl -L "" > Start.sh
              fi
            fi
            printf "%s$(tput setaf 10)${yel}Finished downloading files into folder.${end}\n"
          else
            printf "%s\n${mag}Could not find directory. Going to make it.${end}\n"
            mkdir install_files
            cd install_files
            curl -L "" > Update.sh
            curl -L "" > Download.sh
            curl -L "" > Setup.sh
            curl -L "" > Start.sh
            printf "%s$(tput setaf 10)${yel}Finished making Folder and downloading files.${end}\n"
          fi
          printf "%s$(tput setaf 10)${cyn}Finished installing PART 3.${end}\n"
          rm -rf PART 3
          if [ -e "PART 4" ]; then
            rm -rf PART 4
            curl -L "" > PART 4
          else
            curl -L "" > PART 4
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
          printf "%s$(tput setaf 10)${cyn}Finished installing PART 4.${end}\n"
          rm -rf PART 4
          rm -rf INSTALL
          printf "%$(tput setaf 10)${grn}Finished installing AI.${end}\n"
          sleep 3
          printf "%s\n${mag}Going to start the AI.${end}\n"
          sleep 2
          clear
          python application.py
        else
          if [ -e "PART 2" ]; then
            printf "%s\n${grn}We have found Part 2 of the installer!${end}\n"
            printf "%s\n${mag}Going to install PART 2.${end}\n"
            git clone https://github.com/RiskyAINetwork/Samantha.git
            mv ./Samantha/* ./
            git clone https://github.com/RiskyAINetwork/Ai-DB.git
            printf "%s$(tput setaf 10)${cyn}Finished installing PART 2.${end}\n"
            rm -rf PART 2
            if [ -e "PART 3" ]; then
              rm -rf PART 3
              curl -L "" > PART 3
            else
              curl -L "" > PART 3
            fi
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
                curl -L "" > Update.sh
              else
                if [ -e "update.sh" ]; then
                  rm -rf update.sh
                  curl "" > Update.sh
                else
                  curl -L "" > Update.sh
                fi
              fi
              if [ -e "Download.sh" ]; then
                rm -rf Download.sh
                curl -L "" > Download.sh
              else
                if [ -e "download.sh" ]; then
                  rm -rf download.sh
                  curl -L "" > Download.sh
                else
                  curl -L "" > Download.sh
                fi
              fi
              if [ -e "Setup.sh" ]; then
                rm -rf Setup.sh
                curl -L "" > Setup.sh
              else
                if [ -e "setup.sh" ]; then
                  rm -rf setup.sh
                  curl -L "" > Setup.sh
                else
                  curl -L "" > Setup.sh
                fi
              fi
              if [ -e "Start.sh" ]; then
                rm -rf Start.sh
                curl -L "" > Start.sh
              else
                if [ -e "start.sh" ]; then
                  rm -rf start.sh
                  curl -L "" > Start.sh
                else
                  curl -L "" > Start.sh
                fi
              fi
              printf "%s$(tput setaf 10)${yel}Finished downloading files into folder.${end}\n"
            else
              printf "%s\n${mag}Could not find directory. Going to make it.${end}\n"
              mkdir install_files
              cd install_files
              curl -L "" > Update.sh
              curl -L "" > Download.sh
              curl -L "" > Setup.sh
              curl -L "" > Start.sh
              printf "%s$(tput setaf 10)${yel}Finished making Folder and downloading files.${end}\n"
            fi
            printf "%s$(tput setaf 10)${cyn}Finished installing PART 3.${end}\n"
            rm -rf PART 3
            if [ -e "PART 4" ]; then
              rm -rf PART 4
              curl -L "" > PART 4
            else
              curl -L "" > PART 4
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
            printf "%s$(tput setaf 10)${cyn}Finished installing PART 4.${end}\n"
            rm -rf PART 4
            rm -rf INSTALL
            printf "%$(tput setaf 10)${grn}Finished installing AI.${end}\n"
            sleep 3
            printf "%s\n${mag}Going to start the AI.${end}\n"
            sleep 2
            clear
            python application.py
          else
            if [ -e "PART 3" ]; then
              printf "%s\n${grn}We have found Part 3 of the installer!${end}\n"
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
                  curl -L "" > Update.sh
                else
                  if [ -e "update.sh" ]; then
                    rm -rf update.sh
                    curl "" > Update.sh
                  else
                    curl -L "" > Update.sh
                  fi
                fi
                if [ -e "Download.sh" ]; then
                  rm -rf Download.sh
                  curl -L "" > Download.sh
                else
                  if [ -e "download.sh" ]; then
                    rm -rf download.sh
                    curl -L "" > Download.sh
                  else
                    curl -L "" > Download.sh
                  fi
                fi
                if [ -e "Setup.sh" ]; then
                  rm -rf Setup.sh
                  curl -L "" > Setup.sh
                else
                  if [ -e "setup.sh" ]; then
                    rm -rf setup.sh
                    curl -L "" > Setup.sh
                  else
                    curl -L "" > Setup.sh
                  fi
                fi
                if [ -e "Start.sh" ]; then
                  rm -rf Start.sh
                  curl -L "" > Start.sh
                else
                  if [ -e "start.sh" ]; then
                    rm -rf start.sh
                    curl -L "" > Start.sh
                  else
                    curl -L "" > Start.sh
                  fi
                fi
                printf "%s$(tput setaf 10)${yel}Finished downloading files into folder.${end}\n"
              else
                printf "%s\n${mag}Could not find directory. Going to make it.${end}\n"
                mkdir install_files
                cd install_files
                curl -L "" > Update.sh
                curl -L "" > Download.sh
                curl -L "" > Setup.sh
                curl -L "" > Start.sh
                printf "%s$(tput setaf 10)${yel}Finished making Folder and downloading files.${end}\n"
              fi
              printf "%s$(tput setaf 10)${cyn}Finished installing PART 3.${end}\n"
              rm -rf PART 3
              if [ -e "PART 4" ]; then
                rm -rf PART 4
                curl -L "" > PART 4
              else
                curl -L "" > PART 4
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
              printf "%s$(tput setaf 10)${cyn}Finished installing PART 4.${end}\n"
              rm -rf PART 4
              rm -rf INSTALL
              printf "%$(tput setaf 10)${grn}Finished installing AI.${end}\n"
              sleep 3
              printf "%s\n${mag}Going to start the AI.${end}\n"
              sleep 2
              clear
              python application.py
            else
              if [ -e "PART 4" ]; then
                printf "%s\n${grn}We have found Part 4 of the installer!${end}\n"
                printf "%s\n${mag}Going to install PART 4.${end}\n"
                pip install fuzzywuzzy
                pip install jsondb
                pip install jsondatabase
                pip install nltk
                pip install pymongo
                pip install python-twitter
                pip install textblob
                pip install python-Levenshtein
                printf "%s$(tput setaf 10)${cyn}Finished installing PART 4.${end}\n"
                rm -rf PART 4
                rm -rf INSTALL
                printf "%$(tput setaf 10)${grn}Finished installing AI.${end}\n"
                sleep 3
                printf "%s\n${mag}Going to start the AI.${end}\n"
                sleep 2
                clear
                python application.py
              else
                printf "%s\n${red}Could not find any of the install Parts!${end}\n"
              fi
            fi
          fi
        fi
      else
        if [ -e "PART 1" ]; then
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
          if [ -e "PART 2" ]; then
            rm -rf PART 2
            curl -L "" > PART 2
          else
            curl -L "" > PART 2
          fi
          printf "%s\n${mag}Going to install PART 2.${end}\n"
          git clone https://github.com/RiskyAINetwork/Samantha.git
          mv ./Samantha/* ./
          git clone https://github.com/RiskyAINetwork/Ai-DB.git
          printf "%s$(tput setaf 10)${cyn}Finished installing PART 2.${end}\n"
          rm -rf PART 2
          if [ -e "PART 3" ]; then
            rm -rf PART 3
            curl -L "" > PART 3
          else
            curl -L "" > PART 3
          fi
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
              curl -L "" > Update.sh
            else
              if [ -e "update.sh" ]; then
                rm -rf update.sh
                curl "" > Update.sh
              else
                curl -L "" > Update.sh
              fi
            fi
            if [ -e "Download.sh" ]; then
              rm -rf Download.sh
              curl -L "" > Download.sh
            else
              if [ -e "download.sh" ]; then
                rm -rf download.sh
                curl -L "" > Download.sh
              else
                curl -L "" > Download.sh
              fi
            fi
            if [ -e "Setup.sh" ]; then
              rm -rf Setup.sh
              curl -L "" > Setup.sh
            else
              if [ -e "setup.sh" ]; then
                rm -rf setup.sh
                curl -L "" > Setup.sh
              else
                curl -L "" > Setup.sh
              fi
            fi
            if [ -e "Start.sh" ]; then
              rm -rf Start.sh
              curl -L "" > Start.sh
            else
              if [ -e "start.sh" ]; then
                rm -rf start.sh
                curl -L "" > Start.sh
              else
                curl -L "" > Start.sh
              fi
            fi
            printf "%s$(tput setaf 10)${yel}Finished downloading files into folder.${end}\n"
          else
            printf "%s\n${mag}Could not find directory. Going to make it.${end}\n"
            mkdir install_files
            cd install_files
            curl -L "" > Update.sh
            curl -L "" > Download.sh
            curl -L "" > Setup.sh
            curl -L "" > Start.sh
            printf "%s$(tput setaf 10)${yel}Finished making Folder and downloading files.${end}\n"
          fi
          printf "%s$(tput setaf 10)${cyn}Finished installing PART 3.${end}\n"
          rm -rf PART 3
          if [ -e "PART 4" ]; then
            rm -rf PART 4
            curl -L "" > PART 4
          else
            curl -L "" > PART 4
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
          printf "%s$(tput setaf 10)${cyn}Finished installing PART 4.${end}\n"
          rm -rf PART 4
          rm -rf INSTALL
          printf "%$(tput setaf 10)${grn}Finished installing AI.${end}\n"
          sleep 3
          printf "%s\n${mag}Going to start the AI.${end}\n"
          sleep 2
          clear
          python application.py
        else
          if [ -e "PART 2" ]; then
            printf "%s\n${grn}We have found Part 2 of the installer!${end}\n"
            printf "%s\n${mag}Going to install PART 2.${end}\n"
            git clone https://github.com/RiskyAINetwork/Samantha.git
            mv ./Samantha/* ./
            git clone https://github.com/RiskyAINetwork/Ai-DB.git
            printf "%s$(tput setaf 10)${cyn}Finished installing PART 2.${end}\n"
            rm -rf PART 2
            if [ -e "PART 3" ]; then
              rm -rf PART 3
              curl -L "" > PART 3
            else
              curl -L "" > PART 3
            fi
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
                curl -L "" > Update.sh
              else
                if [ -e "update.sh" ]; then
                  rm -rf update.sh
                  curl "" > Update.sh
                else
                  curl -L "" > Update.sh
                fi
              fi
              if [ -e "Download.sh" ]; then
                rm -rf Download.sh
                curl -L "" > Download.sh
              else
                if [ -e "download.sh" ]; then
                  rm -rf download.sh
                  curl -L "" > Download.sh
                else
                  curl -L "" > Download.sh
                fi
              fi
              if [ -e "Setup.sh" ]; then
                rm -rf Setup.sh
                curl -L "" > Setup.sh
              else
                if [ -e "setup.sh" ]; then
                  rm -rf setup.sh
                  curl -L "" > Setup.sh
                else
                  curl -L "" > Setup.sh
                fi
              fi
              if [ -e "Start.sh" ]; then
                rm -rf Start.sh
                curl -L "" > Start.sh
              else
                if [ -e "start.sh" ]; then
                  rm -rf start.sh
                  curl -L "" > Start.sh
                else
                  curl -L "" > Start.sh
                fi
              fi
              printf "%s$(tput setaf 10)${yel}Finished downloading files into folder.${end}\n"
            else
              printf "%s\n${mag}Could not find directory. Going to make it.${end}\n"
              mkdir install_files
              cd install_files
              curl -L "" > Update.sh
              curl -L "" > Download.sh
              curl -L "" > Setup.sh
              curl -L "" > Start.sh
              printf "%s$(tput setaf 10)${yel}Finished making Folder and downloading files.${end}\n"
            fi
            printf "%s$(tput setaf 10)${cyn}Finished installing PART 3.${end}\n"
            rm -rf PART 3
            if [ -e "PART 4" ]; then
              rm -rf PART 4
              curl -L "" > PART 4
            else
              curl -L "" > PART 4
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
            printf "%s$(tput setaf 10)${cyn}Finished installing PART 4.${end}\n"
            rm -rf PART 4
            rm -rf INSTALL
            printf "%$(tput setaf 10)${grn}Finished installing AI.${end}\n"
            sleep 3
            printf "%s\n${mag}Going to start the AI.${end}\n"
            sleep 2
            clear
            python application.py
          else
            if [ -e "PART 3" ]; then
              printf "%s\n${grn}We have found Part 3 of the installer!${end}\n"
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
                  curl -L "" > Update.sh
                else
                  if [ -e "update.sh" ]; then
                    rm -rf update.sh
                    curl "" > Update.sh
                  else
                    curl -L "" > Update.sh
                  fi
                fi
                if [ -e "Download.sh" ]; then
                  rm -rf Download.sh
                  curl -L "" > Download.sh
                else
                  if [ -e "download.sh" ]; then
                    rm -rf download.sh
                    curl -L "" > Download.sh
                  else
                    curl -L "" > Download.sh
                  fi
                fi
                if [ -e "Setup.sh" ]; then
                  rm -rf Setup.sh
                  curl -L "" > Setup.sh
                else
                  if [ -e "setup.sh" ]; then
                    rm -rf setup.sh
                    curl -L "" > Setup.sh
                  else
                    curl -L "" > Setup.sh
                  fi
                fi
                if [ -e "Start.sh" ]; then
                  rm -rf Start.sh
                  curl -L "" > Start.sh
                else
                  if [ -e "start.sh" ]; then
                    rm -rf start.sh
                    curl -L "" > Start.sh
                  else
                    curl -L "" > Start.sh
                  fi
                fi
                printf "%s$(tput setaf 10)${yel}Finished downloading files into folder.${end}\n"
              else
                printf "%s\n${mag}Could not find directory. Going to make it.${end}\n"
                mkdir install_files
                cd install_files
                curl -L "" > Update.sh
                curl -L "" > Download.sh
                curl -L "" > Setup.sh
                curl -L "" > Start.sh
                printf "%s$(tput setaf 10)${yel}Finished making Folder and downloading files.${end}\n"
              fi
              printf "%s$(tput setaf 10)${cyn}Finished installing PART 3.${end}\n"
              rm -rf PART 3
              if [ -e "PART 4" ]; then
                rm -rf PART 4
                curl -L "" > PART 4
              else
                curl -L "" > PART 4
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
              printf "%s$(tput setaf 10)${cyn}Finished installing PART 4.${end}\n"
              rm -rf PART 4
              rm -rf INSTALL
              printf "%$(tput setaf 10)${grn}Finished installing AI.${end}\n"
              sleep 3
              printf "%s\n${mag}Going to start the AI.${end}\n"
              sleep 2
              clear
              python application.py
            else
              if [ -e "PART 4" ]; thenprintf "%s\n${grn}We have found Part 4 of the installer!${end}\n"
                printf "%s\n${mag}Going to install PART 4.${end}\n"
                pip install fuzzywuzzy
                pip install jsondb
                pip install jsondatabase
                pip install nltk
                pip install pymongo
                pip install python-twitter
                pip install textblob
                pip install python-Levenshtein
                printf "%s$(tput setaf 10)${cyn}Finished installing PART 4.${end}\n"
                rm -rf PART 4
                rm -rf INSTALL
                printf "%$(tput setaf 10)${grn}Finished installing AI.${end}\n"
                sleep 3
                printf "%s\n${mag}Going to start the AI.${end}\n"
                sleep 2
                clear
                python application.py
              else
                #RUN THE APPLICATION AS IT MUST BE INSTALLED
                clear
                python application.py
              fi
            fi
          fi
        fi
      fi
  else
    mkdir Samantha
    cd Samantha
    curl "" > INSTALL
    curl "" > PART 1
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
    if [ -e "PART 2" ]; then
      rm -rf PART 2
      curl -L "" > PART 2
    else
      curl -L "" > PART 2
    fi
    printf "%s\n${mag}Going to install PART 2.${end}\n"
    git clone https://github.com/RiskyAINetwork/Samantha.git
    mv ./Samantha/* ./
    git clone https://github.com/RiskyAINetwork/Ai-DB.git
    printf "%s$(tput setaf 10)${cyn}Finished installing PART 2.${end}\n"
    rm -rf PART 2
    if [ -e "PART 3" ]; then
      rm -rf PART 3
      curl -L "" > PART 3
    else
      curl -L "" > PART 3
    fi
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
        curl -L "" > Update.sh
      else
        if [ -e "update.sh" ]; then
          rm -rf update.sh
          curl "" > Update.sh
        else
          curl -L "" > Update.sh
        fi
      fi
      if [ -e "Download.sh" ]; then
        rm -rf Download.sh
        curl -L "" > Download.sh
      else
        if [ -e "download.sh" ]; then
          rm -rf download.sh
          curl -L "" > Download.sh
        else
          curl -L "" > Download.sh
        fi
      fi
      if [ -e "Setup.sh" ]; then
        rm -rf Setup.sh
        curl -L "" > Setup.sh
      else
        if [ -e "setup.sh" ]; then
          rm -rf setup.sh
          curl -L "" > Setup.sh
        else
          curl -L "" > Setup.sh
        fi
      fi
      if [ -e "Start.sh" ]; then
        rm -rf Start.sh
        curl -L "" > Start.sh
      else
        if [ -e "start.sh" ]; then
          rm -rf start.sh
          curl -L "" > Start.sh
        else
          curl -L "" > Start.sh
        fi
      fi
      printf "%s$(tput setaf 10)${yel}Finished downloading files into folder.${end}\n"
    else
      printf "%s\n${mag}Could not find directory. Going to make it.${end}\n"
      mkdir install_files
      cd install_files
      curl -L "" > Update.sh
      curl -L "" > Download.sh
      curl -L "" > Setup.sh
      curl -L "" > Start.sh
      printf "%s$(tput setaf 10)${yel}Finished making Folder and downloading files.${end}\n"
    fi
    printf "%s$(tput setaf 10)${cyn}Finished installing PART 3.${end}\n"
    rm -rf PART 3
    if [ -e "PART 4" ]; then
      rm -rf PART 4
      curl -L "" > PART 4
    else
      curl -L "" > PART 4
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
    printf "%s$(tput setaf 10)${cyn}Finished installing PART 4.${end}\n"
    rm -rf PART 4
    rm -rf INSTALL
    printf "%$(tput setaf 10)${grn}Finished installing AI.${end}\n"
    sleep 3
    printf "%s\n${mag}Going to start the AI.${end}\n"
    sleep 2
    clear
    python application.py
  if
#LINUX
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  if [ "$(whoami)" != "root" ]; then
    printf "%s\n${red}This script requires root permissions, try: sudo ./${0##*/}${end}\n "
    exit 0
  fi
  printf "%s\n${blu}User is on LINUX...${end}\n"
  cd ...
  cat << "EOF"
  R.A.I.N

  01010010 00101110 01000001 00101110 01001001 00101110 01001110




  Risky Artificial Intelligence Network.

  01010010 01101001 01110011 01101011 01111001 00100000 01000001 01110010 01110100 01101001 01100110 01101001 01100011 01101001 01100001 01101100 00100000 01001001 01101110 01110100 01100101 01101100 01101100 01101001 01100111 01100101 01101110 01100011 01100101 00100000 01001110 01100101 01110100 01110111 01101111 01110010 01101011 00101110

  EOF

fi
