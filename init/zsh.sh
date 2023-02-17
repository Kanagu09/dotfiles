#!/usr/bin/env zsh

echo_error () {
    echo "\e[31m$1\e[m"
}

# install zsh
if [ `which zsh` ]; then
    echo "zsh is already installed"
else
    echo "Installing zshw..."
    sudo apt install zsh
    chsh -s $(which zsh)
fi


