#!/usr/bin/env bash
set -x
DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Linking VSCode Settings"
cd $HOME/Library/Application\ Support/Code/
ln -sFh $HOME/.dotfiles/vscode/settings User

$DIR/install_extensions.sh