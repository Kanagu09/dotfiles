#!/usr/bin/bash
. ./lib/echo.sh

# install
APPS="gcc unar neofetch sl act micro"
set -- $APPS

for APP in $APPS
do
    if [ `which $APP` ] ; then
        echo_installed $APP
    else
        echo_installing $APP
        brew install $APP
    fi
done

APP="net-tools"
if [ `which ifconfig` ] ; then
    echo_installed $APP
else
    echo_installing $APP
    brew install $APP
fi

APP="rust"
if [ `which rustc cargo` ] ; then
    echo_installed $APP
else
    echo_installing $APP
    brew install $APP
fi
