#!/bin/bash
if [ "$(uname)" == "Darwin" ]; then
    clear
    echo 'User is on MAC'
    bash mac.sh

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    clear
    echo 'User is on a LINUX.'
    sudo bash linux.sh

elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    echo 'System is WINDOWS... clearly the USER wants to kill themself.'
fi
