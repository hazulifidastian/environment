#!/bin/bash

# export TERM=xterm-256color

export PROJECTS=$HOME/Projects
export DOTFILES=$PROJECTS/environment/dotfiles 

#virtualenvwrapper settings
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects/Python
. /usr/local/bin/virtualenvwrapper.sh

shopt -s expand_aliases

alias bd='. bd -si'

# app shortcut
alias e='nvim'
alias dock='docker'
alias docke='dock exec'
alias dockr='dock run'
alias docki='dock images'
alias doco='docker-compose'
alias docoe='doco exec'

# change directory
alias projects='cd $PROJECTS' 
alias dotfiles='cd $DOTFILES' 
alias scripts='cd $PROJECTS/scripts' 

# edit
alias einitnvim='e $DOTFILES/nvim/init.vim'
alias emybashrc='e $DOTFILES/bash/.my.bashrc'
alias reload='source ~/.my.bashrc'

alias oldrek='cd $PROJECTS/KementerianPUPR/old.erekomtek.web.dev/src'

# php
alias phpunit='./vendor/bin/phpunit'
