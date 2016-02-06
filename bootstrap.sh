#! /bin/bash
# TODO: find out why VIM/ gets nested 
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles

########## Variables ########## 

DIR=`pwd`
olddir=old_dotfiles         # old dotfiles backup directory
FILES=`ls | grep -v '.sh$' | grep -v $olddir` # Do not display files that end in .sh or $olddir

###############################

for FILE in $FILES; do
    if [ -e ~/.$FILE ] ; then
        if [ ! -d $olddir ]; then
            echo "[*] Creating a directory '$olddir' for backup of any existing dotfiles"
            mkdir -p $olddir
        fi
        echo "[*] Moving already existing dotfile '$FILE' to the '$olddir'"
        mv ~/.$FILE $olddir
    fi
    echo "[*] Creating symlink to $FILE in home directory."
    ln -s $DIR/$FILE ~/.$FILE
done

# this removes the dot from dotfiles in $olddir; to re-add dot, use prefix_dot.sh file
#rename -f 's/\.//' $olddir/.[^.]*

#mkdir -p ~/.vim/{backup,swap,undo} # setup vimrc

source ~/.bashrc

echo "[*] DONE"
