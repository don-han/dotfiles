#! /bin/bash

#prefix_dot(){
if [[ $# -eq 0 ]]; then
    # if no argument given, change the argument to current directory
    set -- .
fi

DIR=$(basename $1)

rename -n 's/\//\/./' $DIR/[^.]*
#}

#prefix_dot $1

