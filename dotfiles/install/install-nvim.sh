#!/bin/bash

echo -e "${blue}Installing neovim configuration..."

# Create all necessary folder for neovim
if [ ! -d $HOME/nvim ]
  then
    mkdir $HOME/nvim

    # install neovim plugin manager
    curl -fLo ~/.dotfiles/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# install vim session folder
mkdir -p $HOME/nvim/sessions

# install nvim config
ln -sf $DOTFILES/nvim/init.vim $HOME/nvim/init.vim

# Install all mandatory folders if they don't exist already
mkdir -p $HOME/nvim/plugged
mkdir -p $HOME/nvim/UltiSnips
mkdir -p $HOME/nvim/autoload
mkdir -p $HOME/nvim/backup
mkdir -p $HOME/nvim/undo
mkdir -p $HOME/nvim/swap
mkdir -p $HOME/nvim/after/indent

# Install Godoctor for vim
if [ ! -d $HOME/nvim/godoctor.vim ]
  then
    git clone https://github.com/godoctor/godoctor.vim $HOME/nvim/godoctor.vim
fi

# If no projects configured create an empty file
if [ ! -f $HOME/nvim/projects.nvimrc ]
  then
    touch $HOME/nvim/projects.nvimrc
fi

# configuration of different plugins
ln -sf $DOTFILES/nvim/pluggedconf/ $HOME/nvim/pluggedconf

# indentation
ln -sf $DOTFILES/nvim/after/indent/* $HOME/nvim/after/indent/

# snippets
ln -sf $DOTFILES/nvim/UltiSnips/* $HOME/nvim/UltiSnips/

# see :help ftplugin
ln -sf $DOTFILES/nvim/ftplugin/ $HOME/nvim/ftplugin

# see :help autoload
ln -sf $DOTFILES/nvim/autoload/* $HOME/nvim/autoload/

echo -e "${green}...done\n"