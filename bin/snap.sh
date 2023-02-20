#!/usr/bin/env zsh
. ./lib/echo.sh

# install
APP="slack"
if [ `which $APP` ] ; then
    echo_installed $APP
else
    echo_installing $APP
    sudo snap install slack --classic
fi
