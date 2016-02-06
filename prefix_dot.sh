#! /bin/bash
# prefix every file with a dot

#prefix_dot(){
if [[ $# -eq 0 ]]; then
    # if no argument given, change the argument to current directory
    set -- .
fi

DIR=$(basename $1)

echo rename -n 's/\//\/./' $DIR/[^.]*
#}

#prefix_dot $1

