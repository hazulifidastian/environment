#!/bin/bash
# Copy the default config file if not present already
############
# includes #
############

#if [ ! -f ./install_config ];
#then
#    cp ./install_config.diff ./install_config
#fi

. ./env
#. ./install_config
#. $DOTFILES/colors

################
# presentation #
################

#!/bin/bash
echo "This will install your configuration"

if [ $# -ne 1 ] || [ "$1" != "-y" ];
    then
        echo "${yellow}Press a key to continue...\n"
        read key;
fi

# $DOTFILES/install/install-php.sh
# $DOTFILES/install/install-composer.sh
# command -v "nvim" >/dev/null && . $DOTFILES/install/install-nvim.sh
# $DOTFILES/install/install-bashit.sh
$DOTFILES/install/install-my-bashrc.sh

# Source startup
#source $DOTFILES/startup
