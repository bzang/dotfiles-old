#!/bin/sh

# Install some basics
brew cask install iterm2 visual-studio-code google-chrome slack 1password istat-menus
ln -s "$(dirname "$0")/../vscode ~/Library/Application\ Support/Code/User"
