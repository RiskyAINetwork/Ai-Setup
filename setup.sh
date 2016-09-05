#!/bin/bash
# CHARS... 68
# .......................................[COMPLETE] = 49 CHARS
# When it is 18 chars, it is 40 dots.
# less = add more dots.
# more = less dots.
###
# Start this check long before everything to stop errors
###
red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'
cd ~/
old="$0"
if [ $0 == "new.sh" ]; then
  mv ./$0 ./setup.sh
  echo "${red}Please run ./setup.sh\n We had to rename the file as we need to run checks.${end}"
  exit 0
fi
check_files(){
  #Check for internet first
    #Download file, run checker
    ##else
    #Could not run, set status to false.
    ## INTERNET CHECK
  wget -q --spider http://google.com
  if [ $? -eq 0 ]; then
      internet_status=" [+] Internet: ${grn}Yes${end}"
      if [ -e "new.sh" ]; then
        rm -rf new.sh
        curl -L "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/setup.sh" > new.sh
        if [ "$old" = "$new" ]; then
          status=" [+] File Match: ${cyn}This file has not been altered.${end}"
        else
          status=" [+] File Match: ${cyn}This file has been changed. Downloading fresh one.${end}"
          rm -rf $0
          if [ -e "new.sh" ]; then
            rm -rf new.sh
            curl -L "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/setup.sh" > $0
          else
            curl -L "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/setup.sh" > $0
          fi
        fi
      else
        curl -L "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/setup.sh" > new.sh
        if [ "$old" = "$new" ]; then
          status=" [+] File Match: ${cyn}This file has not been altered.${end}"
        else
          status=" [+] File Match: ${cyn}This file has been changed. Downloading fresh one.${end}"
          rm -rf $0
          if [ -e "new.sh" ]; then
            rm -rf new.sh
            curl -L "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/setup.sh" > $0
          else
            curl -L "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/setup.sh" > $0
          fi
        fi
      fi
  else
      internet_status=" [+] OS: ${red}No${end}"
  fi
}
check_files
echo "$internet_status"
echo "$status"
