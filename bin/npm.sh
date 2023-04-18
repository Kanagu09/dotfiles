#!/usr/bin/env zsh
. ./lib/echo.sh

# install
APP="tsc"
if [ `which $APP` ] ; then
    echo_installed $APP
else
    echo_installing $APP
    npm install -g typescript
fi
