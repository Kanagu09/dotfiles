#!/usr/bin/env zsh
. ./lib/echo.sh

# install
APPS="numpy matplotlib"
set -- $APPS

for APP in $APPS
do
    if `pip show $APP > /dev/null` ; then
        echo_installed $APP
    else
        echo_installing $APP
        pip install $APP
    fi
done


