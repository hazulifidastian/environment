#!/bin/bash

# export TERM=xterm-256color

export PROJECTS=$HOME/Projects
export DOTFILES=$PROJECTS/environment/dotfiles 

# aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

#virtualenvwrapper settings
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects/Python
. /usr/local/bin/virtualenvwrapper.sh
