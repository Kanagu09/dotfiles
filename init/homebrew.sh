#!/usr/bin/env zsh

echo_error () {
    echo "\e[31m$1\e[m"
}

# install homebrew
if [ `which brew` ]; then
    echo "brew is already installed"
else
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> "$HOME/.profile"
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    sudo apt-get install build-essential
fi


