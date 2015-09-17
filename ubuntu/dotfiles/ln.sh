#!/bin/bash
dotfiles=$(echo ~/Projects/environment/ubuntu/dotfiles)

ln -s $dotfiles/.i3 ~/.i3
ln -s $dotfiles/.Xmodmap ~/.Xmodmap
ln -s $dotfiles/.vimrc ~/.vimrc
