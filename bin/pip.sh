#!/usr/bin/env zsh
. ./lib/echo.sh

# install
APP="numpy"
if `pip show $APP > /dev/null` ; then
    echo_installed $APP
else
    echo_installing $APP
    pip install numpy
fi
