#!/bin/bash

# install fish
sudo apt-install fish
fish

# change shell
chsh -s /usr/bin/fish

# install oh-my-fish
curl -L https://get.oh-my.fish | fish

# install theme
omf install l

# link custom config
ln -sf $DOTFILES/fish/my.fish $HOME/.config/fish/conf.d/my.fish

# link custom themes
ln -sf $DOTFILES/fish/fish_prompt.fish  $HOME/.local/share/omf/themes/l/fish_prompt.fish

# install virtualenv for fish
sudo -H pip install virtualfish
