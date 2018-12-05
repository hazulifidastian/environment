#!/bin/bash

echo -e "${blue}Installing neovim configuration..."

# Create all necessary folder for neovim
if [ ! -d $HOME/.config/nvim ]
  then
    mkdir $HOME/.config/nvim

    # install neovim plugin manager
    curl -fLo ~/Projects/environment/dotfiles/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# install vim session folder
mkdir -p $HOME/.config/nvim/sessions

# install nvim config
ln -sf $DOTFILES/nvim/init.vim $HOME/.config/nvim/init.vim

# install vim config
ln -sf $DOTFILES/nvim/init.vim $HOME/.vimrc

# Install all mandatory folders if they don't exist already
mkdir -p $HOME/.config/nvim/plugged
mkdir -p $HOME/.config/nvim/autoload
mkdir -p $HOME/.config/nvim/backup
mkdir -p $HOME/.config/nvim/undo
mkdir -p $HOME/.config/nvim/swap
mkdir -p $HOME/.config/nvim/after/indent

# Install Godoctor for vim
if [ ! -d $HOME/.config/nvim/godoctor.vim ]
  then
    git clone https://github.com/godoctor/godoctor.vim $HOME/.config/nvim/godoctor.vim
fi

# If no projects configured create an empty file
if [ ! -f $HOME/.config/nvim/projects.nvimrc ]
  then
    touch $HOME/.config/nvim/projects.nvimrc
fi

# configuration of different plugins
ln -sf $DOTFILES/nvim/pluggedconf/ $HOME/.config/nvim/pluggedconf

# indentation
ln -sf $DOTFILES/nvim/after/indent/* $HOME/.config/nvim/after/indent/

# snippets
ln -sf $DOTFILES/nvim/UltiSnips/ $HOME/.config/nvim/UltiSnips

# see :help ftplugin
ln -sf $DOTFILES/nvim/ftplugin/ $HOME/.config/nvim/ftplugin

# see :help autoload
ln -sf $DOTFILES/nvim/autoload/* $HOME/.config/nvim/autoload/

echo -e "${green}...done\n"