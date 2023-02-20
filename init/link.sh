#!/usr/bin/env zsh

PWD=$(pwd)

FILES=".zshrc .zsh_alias"
set -- $FILES

for FILE in $FILES
do
    if [ ! -e ./etc/$FILE ]; then
        cp $HOME/$FILE $PWD/etc/$FILE
        rm $HOME/$FILE
        ln -s $PWD/etc/$FILE $HOME/$FILE
    fi
done
