#!/usr/bin/env zsh

PWD=$(pwd)

# make link
for FILE in $(find ./etc/ -type f); do
    FILE=$(echo $FILE | sed "s/.\/etc\///")
    echo "make link of $FILE"
    ln -sf $PWD/etc/$FILE $HOME/$FILE
done
