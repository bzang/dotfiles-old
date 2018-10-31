#!/usr/bin/env bash
set -x
echo "Linking VSCode Settings"
cd $HOME/Library/Application\ Support/Code/
ln -sFh $HOME/.dotfiles/vscode/settings User

cat "$HOME/.dotfiles/vscode/extensions_list.txt" | xargs -I % code --install-extension %