sudo apt-get install apt-transport-https

# Fish repo
sudo apt-add-repository -y ppa:fish-shell/release-3

# Dart repo
sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'

sudo apt update

sudo apt -y install \
    # Shell
    fish \
    curl \

    # PHP
    php-cli \
    php-mbstring \

    # Dart
    dart \

    # Git
    git \
    tig \

    # Tools
    unzip \
    extract \
    ranger \

    # Entertainment
    cmus \

    # Snap
    snap \

    # Misc
    rtorrent \
    global

# --------------------------------------------- #
# Fish                                          #
# --------------------------------------------- #

## change shell
chsh -s /usr/bin/fish

## install oh-my-fish
curl -L https://get.oh-my.fish | fish

## link custom config
ln -sf $DOTFILES/fish/my.fish $HOME/.config/fish/conf.d/my.fish

## install virtualenv for fish
sudo -H pip install virtualfish

# --------------------------------------------- #
# Composer                                      #
# --------------------------------------------- #

curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# --------------------------------------------- #
# Fonts                                         #
# --------------------------------------------- #

# ...

# --------------------------------------------- #
# .inputrc                                      #
# --------------------------------------------- #
ln -sf $DOTFILES/bash/.inputrc $HOME/.inputrc
