#!/bin/bash

# GOAL: List all arguments, one per line, using the shift function and a while statement
# ADVICE: shift perform this substitution
#+     1=$2
#+     2=$3
#+     3=$4
#+     ...
#+     
#+     while sintax : while CONDITION
#+                    do
#+                           ...
#+                    done

while [ "$1" != "" ]
do
    echo $1
    # here you can perform some operations on this argument
    shift
done

exit 0

