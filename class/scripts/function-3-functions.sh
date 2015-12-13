#!/bin/bash

set_filename ()
{
# ..
}

hello ()
{
# ..
} ()

usage ()
{
# ..
}

while [ "$1" != "" ]; do
    case $1 in
        -f | --file )
	    shift
	    set_filename $1
            ;;
        --hello )
            hello
	    ;;
	-l | --remaining-argument-list )
	    echo "$*"
	    ;;
        -h | --help )
	    usage
            exit
            ;;
        * )
	    echo "WRONG ARGUMENTS!"
	    echo
            usage
            exit 1
    esac
    shift
done
