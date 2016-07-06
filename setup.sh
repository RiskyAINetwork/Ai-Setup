#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
    echo 'System is MAC'
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install python
    brew install git
    echo 'Now going to install the required python packets.'
    git clone https://github.com/gitpython-developers/GitPython.git
    cd GitPython
    python setup.py install
    cd ../
    rm -rf GitPython
    echo 'Should be done.'
    clear
    echo 'Grabbing AI.'
    git clone https://github.com/crazywolf132/AI
    echo 'Grabbing Samantha'
    git clone https://github.com/crazywolf132/Samantha
    echo 'Grabbing Database'
    git clone https://github.com/crazywolf132/Ai-DB
    echo 'Finishing Install!'
    print 'Now going to install what is needed.'
    python start.py

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo 'System is LINUX'
    apt-get install -y python
    echo 'Python installed.'
    echo 'Installing git.'
    apt-get install -y git
    echo 'Git is now installed.'
    echo 'Now going to install the required python packets.'
    git clone https://github.com/gitpython-developers/GitPython.git
    cd GitPython
    python setup.py install
    cd ../
    rm -rf GitPython
    echo 'Should be done.'
    clear
    echo 'Cloning AI.'
    git clone https://github.com/crazywolf132/AI
    echo 'Grabbing Samantha'
    git clone https://github.com/crazywolf132/Samantha
    echo 'Grabbing Database'
    git clone https://github.com/crazywolf132/Ai-DB
    echo 'Finishing Install!'
    print 'Now going to install what is needed.'
    python start.py
    
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    echo 'System is WINDOWS'
fi
