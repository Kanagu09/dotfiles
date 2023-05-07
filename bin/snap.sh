#!/usr/bin/env zsh
. ./lib/echo.sh

# install
APPS="discord"
set -- $APPS

for APP in $APPS
do
    if `which $APP` ; then
        echo_installed $APP
    else
        echo_installing $APP
        sudo snap install $APP
    fi
done

APP="slack"
if [ `which $APP` ] ; then
    echo_installed $APP
else
    echo_installing $APP
    sudo snap install slack --classic
fi
