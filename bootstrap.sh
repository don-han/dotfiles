#! /bin/bash
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles

########## Variables ########## 

DIR=`pwd`
olddir=old_dotfiles
#olddir_path=$DIR/$olddir		 # old dotfiles backup directory
FILES=`ls | grep -v '.sh$' | grep -v $olddir` # Do not display files that end in .sh or $olddir

###############################

for FILE in $FILES; do
    #FILE=$(basename $FILE)
    if [ -f ~/.$FILE ] || [ -d ~/.$FLIE ] ; then
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
rename 's/\.//' $olddir/.[^.]*

source ~/.bashrc

echo "[*] DONE"
