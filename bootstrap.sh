#! /bin/bash
# TODO: find out why VIM/ gets nested 
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles

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
for FILE in $FILES; do
    if [ ! -d $olddir ]; then
        echo "[*] Creating a directory '$olddir' for backup of any existing dotfiles"
        mkdir -p $olddir
    fi

    # if symlink
    if [ -L ~/.$FILE ]; then
        echo "[*] Removing old symlink of '$FILE'"
        unlink ~/.$FILE
    # if file or directory
    elif [ -e ~/.$FILE ]; then
        echo "[*] Backing up '$FILE' to the '$olddir'"

        # weird behavior for mv when moving directory
        # if directory
        if [ -d ~/.$FILE ]; then
            rm -rf $olddir/.$FILE
        fi
        mv ~/.$FILE $olddir
    fi

    echo "[*] Creating symlink to $FILE in home directory."
    ln -s $DIR/$FILE ~/.$FILE
done

# this removes the dot from dotfiles in $olddir; to re-add dot, use prefix_dot.sh file
rename -f 's/\.//' $olddir/.[^.]*

mkdir -p ~/.vim/{backup,swap,undo} # setup vimrc

source ~/.bashrc

echo "[*] DONE"
