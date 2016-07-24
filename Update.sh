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
cd ../
import urllib
try :
    stri = "http://74.125.228.100"
    data = urllib.urlopen(stri)
    printf "%s\n${grn}User is connected to internet! Going to start update.${end}\n"

except e:
    printf "%s\n${red}User is not connected to the internet. Please try again later.${end}\n" ,e 
