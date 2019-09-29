#!/bin/bash

echo "WARNING! Running this script will permanently erase your existing .zshrc!"
echo "Continue (y/n)?"

read RESPONSE

if [[ !($RESPONSE =~ ^[yY]{1}$) ]]; then
  exit 1
fi

echo "Removing existing .zshrc..."
rm -f "$HOME/.zshrc"
echo "done."
echo "Symlinking to zshrc.sh in this repo..."
ln -sf "$(pwd)/zshrc.sh" "$HOME/.zshrc"
echo "done."
