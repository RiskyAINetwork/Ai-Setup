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
old="$0"
if [ $0 == "new.sh" ]; then
  mv $0 ./setup.sh
  echo "${red}Please run ./setup.sh\n We had to rename the file as we need to run checks.${end}"
  exit 0
fi
file_checker(){
  if [ -e "new.sh" ]; then
    rm -rf new.sh
    echo "${grn}Found new.sh, deleted it, downloading new one.${end}"
    curl -L "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/setup.sh" > new.sh
    file_check
  else
    echo "${grn}Could not find new.sh, downloading new one.${end}"
    curl -L "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/setup.sh" > new.sh
    file_check
  fi
}
file_check(){
  if [ "$old" = "$new" ]; then
    status=" [+] File Match: ${cyn}This file has not been altered.${end}"
    echo "$status"
  else
    status=" [+] File Match: ${cyn}This file has been changed. Downloading fresh one.${end}"
    echo "$status"
    if [ -e "new.sh" ]; then
      rm -rf new.sh
      echo "${grn}Deleted new.sh, delete $0, download new $0${end}"
      rm -rf $0
      echo "${mag}current file: $0, deleted $0${end}"
      curl -L curl -L "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/setup.sh" > $0
      echo "${yel}new file is $0${end}"
    else
      echo "${red}did not set this up${end}"
    fi
  fi
}
check_files(){
  #Check for internet first
    #Download file, run checker
    ##else
    #Could not run, set status to false.
    ## INTERNET CHECK
  wget -q --spider http://google.com
  if [ $? -eq 0 ]; then
      internet_status=" [+] Internet: ${grn}Yes${end}"
      file_checker
  else
      internet_status=" [+] OS: ${red}No${end}"
  fi
}
check_files
echo "$internet_status"
echo "$status"
