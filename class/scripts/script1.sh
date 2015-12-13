#!/bin/bash

if [ -f .bash_profile ]; then
    echo "Loading your .bash_profile"
else
    echo "You have no .bash_profile!"
    exit 1
fi

echo 'Please, insert a character:'

read character

case $character in
    1 ) echo "You entered one."
        ;;
    2 ) echo "You entered two."
        ;;
    3 ) echo "You entered three."
        ;;
    * ) echo "You did not enter a number between 1 and 3."
esac

if [ "$character" == "1" ]; then
    echo "You entered one."
elif [ "$character" == "2" ]; then
    echo "2"
else 
    echo "You did not enter a number between 1 and 3."
fi    

echo Your charater is $character

exit 0
