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
    # Print our logo.
    cat << "EOF"
    R.A.I.N

    01010010 00101110 01000001 00101110 01001001 00101110 01001110




    Risky Artificial Intelligence Network.

    01010010 01101001 01110011 01101011 01111001 00100000 01000001 01110010 01110100 01101001 01100110 01101001 01100011 01101001 01100001 01101100 00100000 01001001 01101110 01110100 01100101 01101100 01101100 01101001 01100111 01100101 01101110 01100011 01100101 00100000 01001110 01100101 01110100 01110111 01101111 01110010 01101011 00101110

    EOF
    # Check for folder.
    if [[ -d "Samantha" && ! -L "Samantha" ]]; then
        # Check for INSTALL file in directory.
        if [ -e "INSTALL" ]; then
            # If the INSTALL file exists. Continue with the install.
            # Going to check for permission.
            printf "%sThis script will install the Samantha AI and it's dependencies.\n"
            # Ensure the use would like to start the install
            read -r -p "Would you like to continue? [y/N] " response
            # Grab the response from the user input.
            if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
                # If the user agrees with it.
                printf "%sExcellent! ${red}Please do not exit this script until it is complete.${end}\n"
            else
                # Seen the user does not agree we are going to exit.
                exit 1
            fi
            # Going forth with the install if they responded with yes.
            # Going to check if any of the install proccess files exist.
            if [ -e "PART 1" ]; then
              # Announce that we have found part 1.
              printf "%s$(tput setaf 10) ${grn}We have found Part 1 of the installer!${end}\n"
              # Announce we are starting part 1.
              printf "%s${mag}Going to start Part 1 of the installtion${end}\n"
              # Checking for python
              printf "%s\n${cyn}Checking for python...\n"
              # Install python no matter what.
              brew install python
              # Install git no matter what.
              brew install git
              # Install espeak even if they already have it.
              brew install espeak
              # Tell the user that part 1 is done.
              printf "%s$(tput setaf 10)${yel}Finished installing Part 1 of the installtion${end}\n"
              # Seen as this file exists then we will run the installer from here.
              # Run part 1 of the installer.
              # Perform a check for python and brew and any other required files.

              # Remove this file so it knows that you have gotten this far.
              rm -rf PART 1
              if [ -e "PART 2" ]; then
                rm -rf PART 2
                curl -L "" > PART 2
              else
                curl -L "" > PART 2
              fi
              # Run part 2 of the installer.
              # Announce we are starting part 2.
              printf "%s${mag}Going to start Part 2 of the installtion${end}\n"
              cd
              cd Samantha
              git clone https://github.com/RiskyAINetwork/Samantha.git
              mv ./Samantha/* ./
              git clone https://github.com/RiskyAINetwork/Ai-DB.git
              printf "%s$(tput setaf 10)${yel}Finished installing Part 2 of the installtion${end}\n"
              # Remove this file so it knows that you have gotten this far.
              rm -rf PART 2
              if [ -e "PART 3" ]; then
                rm -rf PART 3
                curl -L "" > PART 3
              else
                curl -L "" > PART 3
              fi
              # Run part 3 of the installer.
              # Announce we are starting part 3.
              printf "%s${mag}Going to start Part 3 of the installtion${end}\n"
              curl -L "" > Update.sh
              if [[ -d "install_files" && ! -L "install_files" ]]; then
                # CD to directory
                if [ -e "Update.sh" ]; then
                  # Going to remove file and download latest one.
                  rm -rf Update.sh
                  curl -L "" > Update.sh
                else
                  if [ -e "update.sh" ]; then
                    rm -rf update.sh
                  fi
                  curl -L "" > Update.sh
                fi
                if [ -e "Download.sh" ]; then
                  # Going to remove file and download latest one.
                  rm -rf Download.sh
                  curl -L "" > Download.sh
                else
                  if [ -e "download.sh" ]; then
                    # Going to delete the file if it exists.
                    rm -rf download.sh
                  fi
                  curl -L "" > Download.sh
                fi
                if [ -e "Setup.sh" ]; then
                  rm -rf Setup.sh
                  curl -L "" > Setup.sh
                else
                  if [ -e "setup.sh" ]; then
                    rm -rf setup.sh
                  fi
                  curl -L "" > Setup.sh
                fi
                if [ -e "Start.sh" ]; then
                  rm -rf Start.sh
                  curl -L "" > Start.sh
                else
                  if [ -e "start.sh" ]; then
                    rm -rf start.sh
                  fi
                fi
                rm -rf Update.sh
                rm -rf Download.sh
                rm -rf setup.sh
                rm -rf Start.sh

              else
                mkdir install_files
                cd install_files
                curl "" > Update.sh
                curl "" > Download.sh
                curl "" > Setup.sh
                curl "" > Start.sh

              fi
              printf "%s$(tput setaf 10)${yel}Finished installing Part 3 of the installtion${end}\n"
              # Remove this file so it knows that you have gotten this far.
              rm -rf PART 3
              if [ -e "PART 4" ]; then
                rm -rf PART 4
                curl -L "" > PART 4
              else
                curl -L "" > PART 4
              fi
              # Run part 4 of the installer.
              # Announce we are starting part 4.
              printf "%s${mag}Going to start Part 4 of the installtion${end}\n"
              pip install fuzzywuzzy
              pip install jsondb
              pip install jsondatabase
              pip install nltk
              pip install pymongo
              pip install python-twitter
              pip install textblob
              pip install python-Levenshtein
              printf "%s$(tput setaf 10)${yel}Finished installing Part 4 of the installtion${end}\n"
              # Remove this file so it knows that you have gotten this far.
              rm -rf PART 4
              rm -rf INSTALL
              # Tell the user that we are done with the installer.
              printf "%s$(tput setaf 10)${grn}Finished installing!${end}\n"
              sleep 3
              printf "%s$(tput setaf 10)${mag}Going to run the AI now.${end}\n"
              sleep 2
              python application.py
            else
              if [ -e "PART 2" ]; then
                # Announce we have found part 2.
                printf "%s$(tput setaf 10) ${grn}We have found Part 2 of the installer!${end}\n"
                # Announce we are starting part 2.
                printf "%s${mag}Going to start Part 2 of the installtion${end}\n"
                cd
                cd Samantha
                git clone https://github.com/RiskyAINetwork/Samantha.git
                mv ./Samantha/* ./
                git clone https://github.com/RiskyAINetwork/Ai-DB.git
                printf "%s$(tput setaf 10)${yel}Finished installing Part 2 of the installtion${end}\n"
                # The installer has gotten this far before. Just pickup from here.

                # Remove this file so it knows that you have gotten this far.
                rm -rf PART 2
                if [ -e "PART 3" ]; then
                  rm -rf PART 3
                  curl -L "" > PART 3
                else
                  curl -L "" > PART 3
                fi
                # Run part 3 of the installer.
                # Announce we are starting part 3.
                printf "%s${mag}Going to start Part 3 of the installtion${end}\n"
                curl -L "" > Update.sh
                if [[ -d "install_files" && ! -L "install_files" ]]; then
                  # CD to directory
                  if [ -e "Update.sh" ]; then
                    # Going to remove file and download latest one.
                    rm -rf Update.sh
                    curl -L "" > Update.sh
                  else
                    if [ -e "update.sh" ]; then
                      rm -rf update.sh
                    fi
                    curl -L "" > Update.sh
                  fi
                  if [ -e "Download.sh" ]; then
                    # Going to remove file and download latest one.
                    rm -rf Download.sh
                    curl -L "" > Download.sh
                  else
                    if [ -e "download.sh" ]; then
                      # Going to delete the file if it exists.
                      rm -rf download.sh
                    fi
                    curl -L "" > Download.sh
                  fi
                  if [ -e "Setup.sh" ]; then
                    rm -rf Setup.sh
                    curl -L "" > Setup.sh
                  else
                    if [ -e "setup.sh" ]; then
                      rm -rf setup.sh
                    fi
                    curl -L "" > Setup.sh
                  fi
                  if [ -e "Start.sh" ]; then
                    rm -rf Start.sh
                    curl -L "" > Start.sh
                  else
                    if [ -e "start.sh" ]; then
                      rm -rf start.sh
                    fi
                  fi
                  rm -rf Update.sh
                  rm -rf Download.sh
                  rm -rf setup.sh
                  rm -rf Start.sh

                else
                  mkdir install_files
                  cd install_files
                  curl "" > Update.sh
                  curl "" > Download.sh
                  curl "" > Setup.sh
                  curl "" > Start.sh

                fi
                printf "%s$(tput setaf 10)${yel}Finished installing Part 3 of the installtion${end}\n"
                # Remove this file so it knows that you have gotten this far.
                rm -rf PART 3
                if [ -e "Part 4" ]; then
                  rm -rf PART 4
                  curl -L "" > PART 4
                else
                  curl -L "" > PART 4
                fi
                # Run part 4 of the installer.
                # Announce we are starting part 4.
                printf "%s${mag}Going to start Part 4 of the installtion${end}\n"
                pip install fuzzywuzzy
                pip install jsondb
                pip install jsondatabase
                pip install nltk
                pip install pymongo
                pip install python-twitter
                pip install textblob
                pip install python-Levenshtein
                printf "%s$(tput setaf 10)${yel}Finished installing Part 4 of the installtion${end}\n"
                # Remove this file so it knows that you have gotten this far.
                rm -rf PART 4
                rm -rf INSTALL
                printf "%s$(tput setaf 10)${grn}Finished installing!${end}\n"
                sleep 3
                printf "%s$(tput setaf 10)${mag}Going to run the AI now.${end}\n"
                sleep 2
                python application.py
              else
                if [ -e "PART 3" ]; then
                  # Announce we have found part 3.
                  printf "%s$(tput setaf 10) ${grn}We have found Part 3 of the installer!${end}\n"
                  # Announce we are starting part 3.
                  printf "%s${mag}Going to start Part 3 of the installtion${end}\n"
                  curl -L "" > Update.sh
                  if [[ -d "install_files" && ! -L "install_files" ]]; then
                    # CD to directory
                    if [ -e "Update.sh" ]; then
                      # Going to remove file and download latest one.
                      rm -rf Update.sh
                      curl -L "" > Update.sh
                    else
                      if [ -e "update.sh" ]; then
                        rm -rf update.sh
                      fi
                      curl -L "" > Update.sh
                    fi
                    if [ -e "Download.sh" ]; then
                      # Going to remove file and download latest one.
                      rm -rf Download.sh
                      curl -L "" > Download.sh
                    else
                      if [ -e "download.sh" ]; then
                        # Going to delete the file if it exists.
                        rm -rf download.sh
                      fi
                      curl -L "" > Download.sh
                    fi
                    if [ -e "Setup.sh" ]; then
                      rm -rf Setup.sh
                      curl -L "" > Setup.sh
                    else
                      if [ -e "setup.sh" ]; then
                        rm -rf setup.sh
                      fi
                      curl -L "" > Setup.sh
                    fi
                    if [ -e "Start.sh" ]; then
                      rm -rf Start.sh
                      curl -L "" > Start.sh
                    else
                      if [ -e "start.sh" ]; then
                        rm -rf start.sh
                      fi
                    fi
                    rm -rf Update.sh
                    rm -rf Download.sh
                    rm -rf setup.sh
                    rm -rf Start.sh

                  else
                    mkdir install_files
                    cd install_files
                    curl "" > Update.sh
                    curl "" > Download.sh
                    curl "" > Setup.sh
                    curl "" > Start.sh

                  fi
                  printf "%s$(tput setaf 10)${yel}Finished installing Part 3 of the installtion${end}\n"
                  # The installer has gotten this far before. Just pick up from here.
                  # Run part 3 of the installer.

                  # Remove this file so it knows that you have gotten this far.
                  rm -rf PART 3
                  if [-e "PART 4" ]; then
                    rm -rf PART 4
                    curl -L "" > PART 4
                  else
                    curl -L "" > PART 4
                  fi
                  # Run part 4 of the installer.
                  # Tell the user that we are going to be installing part 4.
                  printf "%s${mag}Going to start Part 4 of the installtion${end}\n"
                  pip install fuzzywuzzy
                  pip install jsondb
                  pip install jsondatabase
                  pip install nltk
                  pip install pymongo
                  pip install python-twitter
                  pip install textblob
                  pip install python-Levenshtein
                  printf "%s$(tput setaf 10)${yel}Finished installing Part 3 of the installtion${end}\n"
                  # Remove this file so it knows that you have gotten this far.
                  rm -rf PART 4
                  rm -rf INSTALL
                else
                  if [ -e "PART 4" ]; then
                    # Announce we have found part 4.
                    printf "%s$(tput setaf 10) ${grn}We have found Part 4 of the installer!${end}\n"
                    # Announce we are starting part 4.
                    printf "%s${mag}Going to start Part 4 of the installtion${end}\n"
                    pip install fuzzywuzzy
                    pip install jsondb
                    pip install jsondatabase
                    pip install nltk
                    pip install pymongo
                    pip install python-twitter
                    pip install textblob
                    pip install python-Levenshtein
                    printf "%s$(tput setaf 10)${yel}Finished installing Part 3 of the installtion${end}\n"
                    # The installer has gotten this far before. Just pick up from here.
                    # Remove this file so it knows that you have gotten this far.
                    rm -rf PART 4
                    printf "%s$(tput setaf 10)${grn}Finished installing!${end}\n"
                    sleep 3
                    printf "%s$(tput setaf 10)${mag}Going to run the AI now.${end}\n"
                    sleep 2
                    python application.py
                  else
                    # Start the installtion process from scratch.
                    curl -L "" > PART 1
                    curl -L "" > PART 2
                    curl -L "" > PART 3
                    curl -L "" > PART 4
                    # Run part 1 of the installer.
                    # Announce we are starting part 1.
                    printf "%s${mag}Going to start Part 1 of the installtion${end}\n"
                    # Install python no matter what.
                    brew install python
                    # Install git no matter what.
                    brew install git
                    # Install espeak even if they already have it.
                    brew install espeak
                    printf "%s$(tput setaf 10)${yel}Finished installing Part 3 of the installtion${end}\n"
                    # Remove this file so it knows that you have gotten this far.
                    rm -rf PART 1
                    # Run part 2 of the installer.
                    # Announce we are starting part 2.
                    printf "%s${mag}Going to start Part 2 of the installtion${end}\n"
                    cd
                    cd Samantha
                    git clone https://github.com/RiskyAINetwork/Samantha.git
                    mv ./Samantha/* ./
                    git clone https://github.com/RiskyAINetwork/Ai-DB.git
                    printf "%s$(tput setaf 10)${yel}Finished installing Part 3 of the installtion${end}\n"
                    # Remove this file so it knows that you have gotten this far.
                    rm -rf PART 2
                    # Run part 3 of the installer.
                    # Announce we are starting part 3.
                    printf "%s${mag}Going to start Part 3 of the installtion${end}\n"
                    curl -L "" > Update.sh
                    if [[ -d "install_files" && ! -L "install_files" ]]; then
                      # CD to directory
                      if [ -e "Update.sh" ]; then
                        # Going to remove file and download latest one.
                        rm -rf Update.sh
                        curl -L "" > Update.sh
                      else
                        if [ -e "update.sh" ]; then
                          rm -rf update.sh
                        fi
                        curl -L "" > Update.sh
                      fi
                      if [ -e "Download.sh" ]; then
                        # Going to remove file and download latest one.
                        rm -rf Download.sh
                        curl -L "" > Download.sh
                      else
                        if [ -e "download.sh" ]; then
                          # Going to delete the file if it exists.
                          rm -rf download.sh
                        fi
                        curl -L "" > Download.sh
                      fi
                      if [ -e "Setup.sh" ]; then
                        rm -rf Setup.sh
                        curl -L "" > Setup.sh
                      else
                        if [ -e "setup.sh" ]; then
                          rm -rf setup.sh
                        fi
                        curl -L "" > Setup.sh
                      fi
                      if [ -e "Start.sh" ]; then
                        rm -rf Start.sh
                        curl -L "" > Start.sh
                      else
                        if [ -e "start.sh" ]; then
                          rm -rf start.sh
                        fi
                      fi
                      rm -rf Update.sh
                      rm -rf Download.sh
                      rm -rf setup.sh
                      rm -rf Start.sh

                    else
                      mkdir install_files
                      cd install_files
                      curl "" > Update.sh
                      curl "" > Download.sh
                      curl "" > Setup.sh
                      curl "" > Start.sh

                    fi
                    printf "%s$(tput setaf 10)${yel}Finished installing Part 3 of the installtion${end}\n"
                    # Remove this file so it knows that you have gotten this far.
                    rm -rf PART 3
                    # Run part 4 of the installer.
                    # Announce we are starting part 4.
                    printf "%s${mag}Going to start Part 4 of the installtion${end}\n"
                    pip install fuzzywuzzy
                    pip install jsondb
                    pip install jsondatabase
                    pip install nltk
                    pip install pymongo
                    pip install python-twitter
                    pip install textblob
                    pip install python-Levenshtein
                    printf "%s$(tput setaf 10)${yel}Finished installing Part 3 of the installtion${end}\n"
                    # Remove this file so it knows that you have gotten this far.
                    rm -rf PART 4
                    rm -rf INSTALL
                    # Announce we are finished.
                    printf "%s$(tput setaf 10)${grn}Finished installing!${end}\n"
                    sleep 3
                    printf "%s$(tput setaf 10)${mag}Going to start the AI now${end}\n"
                    sleep 2
                  fi
                fi
              fi
            fi







        else
            # Clearly the user already has the AI installed.
            printf "%s$(tput setaf 10)${grn}System already installed.${end}\n"
            sleep 3
            printf "%s$(tput setaf 10)${mag}Going to run the AI now.${end}\n"
            sleep 2
            python application.py
        fi
    else
        # Make a directory to contain the AI seen as it does not exist.
        mkdir Samantha
        # Continue with the install.
        # Going to tell the user that the install might take a while.
        printf ""
        # Download part 1.
        curl -L "" > PART 1
        # Install part 1
        printf "%s${mag}Going to start Part 1 of the installtion${end}\n"
        # Install python no matter what.
        brew install python
        # Install git no matter what.
        brew install git
        # Install espeak even if they already have it.
        brew install espeak
        printf "%s$(tput setaf 10)${yel}Finished installing Part 3 of the installtion${end}\n"
        # Remove part 1
        rm -rf PART 1
        # Download part 2.
        curl -L "" > PART 2
        # Install part 2.
        printf "%s${mag}Going to start Part 2 of the installtion${end}\n"
        cd
        cd Samantha
        git clone https://github.com/RiskyAINetwork/Samantha.git
        mv ./Samantha/* ./
        git clone https://github.com/RiskyAINetwork/Ai-DB.git
        printf "%s$(tput setaf 10)${yel}Finished installing Part 3 of the installtion${end}\n"
        # Remove part 2
        rm -rf PART 2
        # Download part 3.
        curl -L "" > PART 3
        # Install part 3.
        printf "%s${mag}Going to start Part 3 of the installtion${end}\n"
        curl -L "" > Update.sh
        if [[ -d "install_files" && ! -L "install_files" ]]; then
          # CD to directory
          if [ -e "Update.sh" ]; then
            # Going to remove file and download latest one.
            rm -rf Update.sh
            curl -L "" > Update.sh
          else
            if [ -e "update.sh" ]; then
              rm -rf update.sh
            fi
            curl -L "" > Update.sh
          fi
          if [ -e "Download.sh" ]; then
            # Going to remove file and download latest one.
            rm -rf Download.sh
            curl -L "" > Download.sh
          else
            if [ -e "download.sh" ]; then
              # Going to delete the file if it exists.
              rm -rf download.sh
            fi
            curl -L "" > Download.sh
          fi
          if [ -e "Setup.sh" ]; then
            rm -rf Setup.sh
            curl -L "" > Setup.sh
          else
            if [ -e "setup.sh" ]; then
              rm -rf setup.sh
            fi
            curl -L "" > Setup.sh
          fi
          if [ -e "Start.sh" ]; then
            rm -rf Start.sh
            curl -L "" > Start.sh
          else
            if [ -e "start.sh" ]; then
              rm -rf start.sh
            fi
          fi
          rm -rf Update.sh
          rm -rf Download.sh
          rm -rf setup.sh
          rm -rf Start.sh

        else
          mkdir install_files
          cd install_files
          curl "" > Update.sh
          curl "" > Download.sh
          curl "" > Setup.sh
          curl "" > Start.sh

        fi
        printf "%s$(tput setaf 10)${yel}Finished installing Part 3 of the installtion${end}\n"
        # Remove part 3.
        rm -rf PART 3
        # Download part 4.
        curl -L "" > PART 4
        # Install part 4.
        printf "%s${mag}Going to start Part 4 of the installtion${end}\n"
        pip install fuzzywuzzy
        pip install jsondb
        pip install jsondatabase
        pip install nltk
        pip install pymongo
        pip install python-twitter
        pip install textblob
        pip install python-Levenshtein
        printf "%s$(tput setaf 10)${yel}Finished installing Part 3 of the installtion${end}\n"
        # Remove part 4.
        rm -rf PART 4
        printf "%s$(tput setaf 10)${grn}Finished installing!${end}\n"
        sleep 3
        printf "%s$(tput setaf 10)${mag}Going to run the AI now.${end}\n"
        sleep 2
        python application.py
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
      # Print our logo.
      cat << "EOF"
      R.A.I.N

      01010010 00101110 01000001 00101110 01001001 00101110 01001110




      Risky Artificial Intelligence Network.

      01010010 01101001 01110011 01101011 01111001 00100000 01000001 01110010 01110100 01101001 01100110 01101001 01100011 01101001 01100001 01101100 00100000 01001001 01101110 01110100 01100101 01101100 01101100 01101001 01100111 01100101 01101110 01100011 01100101 00100000 01001110 01100101 01110100 01110111 01101111 01110010 01101011 00101110

      EOF
      # Check for folder.
      if [[ -d "Samantha" && ! -L "Samantha" ]]; then
        # Check for INSTALL file in directory.
        if [ -e "INSTALL" ]; then
          # If the INSTALL file exists. Contintue with the install.
          # Going to check for permission.
          printf "%sThis script will install the Samantha AI and it's dependencies.\n"
          # Ensure the use would like to start the install
          read -r -p "Would you like to continue? [y/N] " response
          # Grab the response from the user input.
          if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
              # If the user agrees with it.
              printf "%sExcellent! ${red}Please do not exit this script until it is complete.${end}\n"
          else
              # Seen the user does not agree we are going to exit.
              exit 1
          fi
          # Going forth with the install if they responded with yes.

        else
          # Clearly the user already has the AI installed.
        fi
      else
        # Make a directory to contain the AI seen as it does not exist.
        mkdir Samantha
      fi

elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
      # Letting windows users know what we think.
      printf "%s\n${blu}System is WINDOWS... clearly the USER wants to kill themself.${end}\n"
fi
