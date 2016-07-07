if [ "$(uname)" == "Darwin" ]; then
    clear
    echo 'User is on a mac.'
    echo ''
    echo 'Going to download all 3 folders.'
    echo ''
    echo ''
    echo 'Part 1...'
    echo ''
    git clone https://github.com/crazywolf132/Ai-DB
    echo ''
    echo 'Part 1 is done. Now for Part 2'
    echo ''
    git clone https://github.com/crazywolf132/Samantha
    echo ''
    echo 'Part 2 is done. Now for Part 3.'
    echo ''
    git clone https://github.com/crazywolf132/AI
    echo ''
    echo 'Part 3 is done. Now to finish setting it all up.'
    echo ''
    

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    clear
    echo 'User is on a linux.'

elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    echo 'System is WINDOWS'
fi
