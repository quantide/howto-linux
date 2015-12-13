#!/bin/bash

echo Insert a number between 0 and 10
read number

case $number in
    1 )
	echo "your number is 1"
	;;
    2 )
	echo "your number is 2"
	;;
    3 )
	echo "your number is 3"
	;;
    4 | 5 )
	echo "your number is 4 or 5"
	;;
    3 | 6 ) 
	echo "your number is 3 or 6"
	;;
    * )
	echo "your number is not included in the [1,6] interval"
	;;
esac

exit 0

