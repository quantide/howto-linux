#!/bin/bash


#AIM: echo a environment variable
hello ()
{
    echo "Hello $USER. How are you?"
}

# AIM: if check
# NB: the variable is set in this function but it's visible outside
set_filename ()
{
    filename=$1
    if [ ! -f $filename ]; then
	echo "There is no such file"
	exit 1
    fi
}

# AIM: echo multiple lines
usage ()
{
    echo -e "
Usage: 
\t ${0} [-f|--file FILENAME] [-h|--help] [--hello] [-l|--remaining-argument-list]
\t -f : Print file to the standard output
\t -h : Print this help
\t --hello : Say Hello!
\t --remaining-argument-list : print the full argument list
"
}

# AIM: parse-arguments, while, case
parse_arguments ()
{
    while [ "$1" != "" ]; do
	case $1 in
            -f | --file ) 
		shift
		set_filename $1
		echo ${filename}
                ;;
            --hello )
                hello
		;;
	    -l | --remaining-argument-list )
		echo "$@"
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
}


parse_arguments "$@"
