#!/bin/sh
if [ -d ~/.zsh ]; then
    cp -r zsh/* ~/.zsh/
else
    cp -r zsh ~/.zsh
fi;
cp zshrc ~/.zshrc
