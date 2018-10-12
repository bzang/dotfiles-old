#!/bin/sh

# install global node packages
# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

if command -v "npm" > /dev/null; then
	nvm install lts/*
	if command -v "npm" > /dev/null; then
		npm update
		npm install -g npx
	else
		 echo "npm is required.";
	fi
fi
