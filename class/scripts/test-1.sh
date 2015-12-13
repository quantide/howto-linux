#!/bin/bash

print_message ()
{
    echo "$message"
}

message=$(ls -l)

file2="testooo.sh"

echo Insert the file you want to check.
read file

if [ -f $file ]; then
    echo As you can see the file $file exists.
elif [ -x $file2 ]; then
    echo As you can see the file $file2 exists.
else
    echo As you can see neither the file $file nor $file2 exist"!!!!"
    exit 2
fi
    
print_message

exit 0

