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
echo -e "${green}####################################"
echo -e "${green}# Welcome                          #"
echo -e "${green}####################################\n"

echo -e "${yellow}!!! ${red}WARNING${yellow} !!!"
echo -e "${light_red}This script will delete all your configuration!"
echo -e "${light_red}Use it for a fresh install or if you only use this set of dotfiles.\n"

if [ $# -ne 1 ] || [ "$1" != "-y" ];
    then
        echo -e "${yellow}Press a key to continue...\n"
        read key;
fi

command -v "nvim" >/dev/null && . $DOTFILES/install/install-nvim.sh

# Source startup
#source $DOTFILES/startup
