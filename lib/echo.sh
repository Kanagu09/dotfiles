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
