#!/usr/bin/env zsh
. ./lib/echo.sh

# install homebrew
if [ `which brew` ]; then
    echo "brew is already installed"
else
    echo "Installing homebrew..."
    mkdir $HOME/.linuxbrew
    curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C $HOME/.linuxbrew
    echo "$($HOME/.linuxbrew/bin/brew shellenv)" >> "$HOME/.profile"
    sudo apt-get install build-essential
    source $HOME/.profile
    brew update
fi
