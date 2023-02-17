#!/usr/bin/bash

echo_error () {
    echo "\e[31m$1\e[m"
}

echo_installed () {
    echo "already installed : $1"
}

echo_installing () {
    echo "installing $1"
}

# install
APPS="gcc unar neofetch sl"
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
