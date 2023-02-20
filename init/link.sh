#!/usr/bin/env zsh

PWD=$(pwd)

FILES=".zshrc .zsh_alias"
set -- $FILES

for FILE in $FILES
do
    if [ -e $PWD/etc/$FILE ]; then
        echo "make link of $FILE"
        rm $HOME/$FILE
        ln -s $PWD/etc/$FILE $HOME/$FILE
    else
        echo "copy and make link of $FILE"
        cp $HOME/$FILE $PWD/etc/$FILE
        rm $HOME/$FILE
        ln -s $PWD/etc/$FILE $HOME/$FILE
    fi
done
