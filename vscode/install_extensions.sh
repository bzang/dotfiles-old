#!/usr/bin/env bash
set -x
echo "Installing VSCode Extensions"
cat "$HOME/.dotfiles/vscode/extensions_list.txt" | xargs -I % code --install-extension %