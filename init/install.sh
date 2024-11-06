#!/usr/bin/env zsh
sh bin/apt.sh
sh bin/snap.sh
brew bundle --file bin/Brewfile
sh bin/npm.sh
sh bin/pip.sh
sh bin/rustup.sh
