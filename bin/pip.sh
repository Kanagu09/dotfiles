#!/usr/bin/env zsh
. ./lib/echo.sh

# install
APPS="numpy matplotlib panda"
set -- $APPS

for APP in $APPS
do
    if `pip3 show $APP > /dev/null` ; then
        echo_installed $APP
    else
        echo_installing $APP
        pip3 install $APP
    fi
done


