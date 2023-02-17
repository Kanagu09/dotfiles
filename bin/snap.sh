#!/usr/bin/env zsh

echo_error () {
    echo "\e[31m$1\e[m"
}

echo_installed () {
    echo "already installed : $1"
}

echo_installing () {
    echo "installing $1"
}

cd $HOME/Downloads

# install
APP="slack"
if [ `which $APP` ] ; then
    echo_installed $APP
else
    echo_installing $APP
    sudo snap install slack --classic
fi
