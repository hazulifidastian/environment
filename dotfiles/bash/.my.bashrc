#!/bin/bash
export PROJECTS=$HOME/Projects
export DOTFILES=$PROJECTS/environment/dotfiles 

# back directory
alias bd='. bd -si'

alias e='nvim'
alias dock='docker'
alias docke='dock exec'
alias dockr='dock run'
alias docki='dock images'
alias doco='docker-compose'
alias docoe='doco exec'

alias projects='cd $PROJECTS' 
alias dotfiles='cd $DOTFILES' 
alias einitnvim='e $DOTFILES/init.nvim'
alias emybashrc='e $DOTFILES/bash/.my.bashrc'
alias reload='source ~/.my.bashrc'

alias oldrek='cd $PROJECTS/KementerianPUPR/old.erekomtek.web.dev/src'

#virtualenvwrapper settings
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects/Python
. /usr/local/bin/virtualenvwrapper.sh
