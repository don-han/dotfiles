#! /bin/bash

#prefix_dot(){
if [[ $# -eq 0 ]]; then
    # if no argument given, change the argument to current directory
    set -- .
fi

rename -n 's/\//\/./' $1/[^.]*
#}

#prefix_dot $1

