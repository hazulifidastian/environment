#!/bin/bash

dotfiles=$(echo ~/Projects/environment/debian/dotfiles)

ln -s $dotfiles/.i3 ~/.i3
#ln -s $dotfiles/.Xmodmap ~/.Xmodmap
ln -s $dotfiles/.vimrc ~/.vimrc
#ln -s $dotfiles/.bashrc ~/.bashrc
