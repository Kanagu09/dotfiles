#!/usr/bin/env zsh
. ./lib/echo.sh

cd $HOME/Downloads

# install
APPS="thunderbird oneko"
for APP in $APPS
do
	if [ `which $APP` ] ; then
   		echo_installed $APP
	else
    	echo_installing $APP
    	sudo apt install $APP
	fi
done

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

APP="tex"
if [ `which $APP` ] ; then
    echo_installed $APP
else
    echo_installing $APP
    sudo apt install texlive-full
fi

APP="docker"
if [ `which $APP` ] ; then
    echo_installed $APP
else
    echo_installing $APP
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
    sudo apt update
    sudo apt install docker-ce
fi

APP="wg"
if [ `which $APP` ] ; then
    echo_installed $APP
else
    echo_installing $APP
    sudo apt install wireguard-tools
fi
