#!/usr/bin/env zsh
. ./lib/echo.sh

APP="rustup"
if [ $(which $APP) ]; then
    echo_installed $APP
else
    echo_installing $APP
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi
