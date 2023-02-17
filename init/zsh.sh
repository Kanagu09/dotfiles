#!/usr/bin/env zsh

echo_error () {
    echo "\e[31m$1\e[m"
}

# install zsh
if [ `which zsh` ]; then
    echo "zsh is already installed"
else
    echo "Installing zsh..."
    brew install zsh
    sudo chsh -s $(which zsh)
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi


