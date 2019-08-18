#!/bin/bash
. ./env

sudo apt -y install \
    curl \

    # Git
    git \
    tig \

    # Tools
    unzip \
    extract \
    ranger \
    apt-transport-https \

    # Entertainment
    cmus \

    # Snap
    snap \

    # Misc
    global

# --------------------------------------------- #
# Fish                                          #
# OhMyFish                                      #
# Spacefish                                     #
# --------------------------------------------- #

# Fish repo
sudo apt-add-repository -y ppa:fish-shell/release-3

sudo apt -y install fish

# change shell
chsh -s /usr/bin/fish

# install oh-my-fish
curl -L https://get.oh-my.fish | fish

# link custom config
ln -sf $DOTFILES/fish/my.fish $HOME/.config/fish/conf.d/my.fish

# install virtualenv for fish
sudo -H pip install virtualfish

# Install spacefish
# ...

# --------------------------------------------- #
# PHP                                           #
# Composer                                      #
# --------------------------------------------- #

sudo apt -y install \
    php-cli \
    php-mbstring \

curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer


# --------------------------------------------- #
# Tmux                                          #
# --------------------------------------------- #

sudo apt install -y tmux

ln -sf $DOTFILES/.tmux.conf ~/.tmux.conf

# --------------------------------------------- #
# Fonts                                         #
# --------------------------------------------- #

# ...

# --------------------------------------------- #
# Dart                                          #
# Fluttter                                      #
# --------------------------------------------- #

# Dart repo
sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'

sudo apt update

sudo apt -y install dart

# --------------------------------------------- #
# Rust tools                                    #
# --------------------------------------------- #

cargo install exa
cargo install tin-summer
cargo install tokei
cargo install ripgrep
cargo install fd-find
cargo install just

