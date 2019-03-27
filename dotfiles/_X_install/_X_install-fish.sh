#!/bin/bash

# install fish
sudo apt-add-repository -y ppa:fish-shell/release-3
sudo apt update
sudo apt-install fish
fish

# change shell
chsh -s /usr/bin/fish

# install oh-my-fish
curl -L https://get.oh-my.fish | fish

# link custom config
ln -sf $DOTFILES/fish/my.fish $HOME/.config/fish/conf.d/my.fish

# link custom themes
ln -sf $DOTFILES/fish/fish_prompt.fish  $HOME/.local/share/omf/themes/l/fish_prompt.fish

# install virtualenv for fish
sudo -H pip install virtualfish
