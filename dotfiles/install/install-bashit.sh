#!/bin/bash

git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh --silent

# link custom themes
ln -sf $DOTFILES/bashit/themes/duru.theme.bash $HOME/.bash_it/themes/duru/duru.theme.bash
