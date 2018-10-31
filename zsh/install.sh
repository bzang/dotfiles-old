#!/bin/zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  if [ "$(rcfile)" != 'zpreztorc' ]; then
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  fi
done

ln -s "${ZDOTDIR:-$HOME}/.dotfiles/zsh/prompt_bzang_setup" "${ZDOTDIR:-$HOME}/.zprezto/modules/prompt/functions/prompt_bzang_setup"

echo $SHELL

if [[ $SHELL != *"zsh"* ]]; then
  echo /usr/local/bin/zsh | sudo tee -a /private/etc/shells
  chsh -s /usr/local/bin/zsh
fi
