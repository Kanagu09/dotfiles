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
APP="google-chrome"
if [ `which $APP` ] ; then
    echo_installed $APP
else
    echo_installing $APP
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install ./google-chrome-stable_current_amd64.deb
    rm ./google-chrome-stable_current_amd64.deb
fi

APP="code"
if [ `which $APP` ] ; then
    echo_installed $APP
else
    echo_installing $APP
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
    sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
    sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
    sudo apt install apt-transport-https
    sudo apt update
    sudo apt install code
    rm ./microsoft.gpg
fi

APP="thunderbird"
if [ `which $APP` ] ; then
    echo_installed $APP
else
    echo_installing $APP
    sudo apt install thunderbird
fi

APP="zoom"
if [ `which $APP` ] ; then
    echo_installed $APP
else
    echo_installing $APP
    wget http://zoom.us/client/latest/zoom_amd64.deb
    sudo dpkg -i zoom_amd64.deb
    sudo apt install libgl1-mesa-glx libegl1-mesa libxcb-xtest0
    rm zoom_amd64.deb
fi

APP="oneko"
if [ `which $APP` ] ; then
    echo_installed $APP
else
    echo_installing $APP
    sudo apt install oneko
fi

APP="tex"
if [ `which $APP` ] ; then
    echo_installed $APP
else
    echo_installing $APP
    sudo apt install texlive-full
fi
