#!/bin/bash
# This script creates symlinks of the files in dotfiles/ to the home directory

########## Variables ########## 

DIR=`pwd`/dotfiles          # location of dotfiles
if [ ! -d "$DIR" ]; then
    echo "$DIR does not exist. Exiting..."
    exit
fi

olddir=old_dotfiles         # old dotfiles backup directory
FILES=`ls $DIR`
#FILES=`ls $DIR | grep -v '.sh$' | grep -v $olddir` # Do not display files that end in .sh or $olddir

###############################

if [ ! -d $olddir ]; then
    echo "[*] Creating a directory '$olddir' for backup of any existing dotfiles"
    mkdir -p $olddir
fi

for FILE in $FILES; do
    echo "[*] Processing '$FILE' ... "
    if  [ -L ~/."$FILE" ] && diff -rq $DIR/$FILE ~/.$FILE > /dev/null ; then
        echo "[-] Symlink '$FILE' has not been changed. Skipping ..."
        continue
    fi
    echo "[-] Syncing $FILE"

    # if symlink
    if [ -L ~/.$FILE ]; then
        echo "[-] Removing old symlink of '$FILE'"
        unlink ~/.$FILE
        # if file or directory
    elif [ -e ~/.$FILE ]; then
        echo "[-] Backing up '$FILE' to the '$olddir'"

        # weird behavior for mv when moving directory (tries to rename instead of moving)
        # if directory
        if [ -d ~/.$FILE ]; then
            cp -R ~/.$FILE $olddir
            rm -rf -- ~/.$FILE
        # if file
        else 
            mv ~/.$FILE $olddir
        fi
    fi

    echo "[-] Creating symlink to $FILE in home directory."
    ln -s $DIR/$FILE ~/.$FILE
done 

# setup vimrc
mkdir -p ~/.vim/{backup,swap,undo} 

# activate new dotiles
source ~/.bashrc

echo "[*] DONE"
exit

# this removes the dot from dotfiles in $olddir; to re-add dot, use prefix_dot.sh file
rename -f 's/\.//' $olddir/.[^.]*

