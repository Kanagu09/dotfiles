#!/usr/bin/env zsh
. ./lib/echo.sh

# install zsh
if [ `which zsh` ]; then
    echo "zsh is already installed"
else
    echo "Installing zsh..."
    brew install zsh
    # set default zsh
    command -v zsh | sudo tee -a /etc/shells
    sudo chsh -s "$(command -v zsh)" "${USER}"
    # install oh-my-zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
