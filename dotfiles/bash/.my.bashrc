#!/bin/bash

# export TERM=xterm-256color

export PROJECTS=$HOME/Projects
export DOTFILES=$PROJECTS/environment/dotfiles 

#virtualenvwrapper settings
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects/Python
. /usr/local/bin/virtualenvwrapper.sh

# java
export JAVA_HOME=/snap/android-studio/69/android-studio/jre/bin
export ANDROID_SDK=$HOME/Android/Sdk
export ANDROID_SDK_TOOLS=$ANDROID_SDK/tools/bin
export ANDROID_SDK_PLATFORM_TOOLS=$ANDROID_SDK/platform-tools
export PATH=$JAVA_HOME:$ANDROID_SDK_PLATFORM_TOOLS:$ANDROID_SDK_TOOLS:$PATH

# flutter
export FLUTTER_HOME=$HOME/Applications/flutter/bin
export PATH=$FLUTTER_HOME:$PATH

shopt -s expand_aliases

alias bd='. bd -si'

# app shortcut
alias e='nvim'
alias dock='docker'
alias docke='dock exec'
alias dockr='dock run'
alias docki='dock images'
alias doco='docker-compose'
alias doce='doco exec'

# change directory
alias pro='cd $PROJECTS' 
alias dot='cd $DOTFILES' 
alias scr='cd $PROJECTS/scripts' 

# edit
alias einitnvim='e $DOTFILES/nvim/init.vim'
alias emybashrc='e $DOTFILES/bash/.my.bashrc'
alias reload='source ~/.my.bashrc'

alias rek='cd $PROJECTS/KementerianPUPR/old.erekomtek.web.dev/src'

# php
alias phpunit='./vendor/bin/phpunit'

# tmux functions
function xbase() {
    if [[ ! -v $TMUX ]]
    then
        tmux has-session -t base &> /dev/null
        if [ $? -gt 0 ]
        then
            tmux new-session -d -s base
        fi

        tmux attach-session -d -t base
    fi
}

function xrek() {
    cd $PROJECTS/KementerianPUPR/old.erekomtek.web.dev/src

    tmux has-session -t rek &> /dev/null
    if [ $? -gt 0 ] 
    then
        tmux new-session -d -s rek
        tmux split-window -h
        tmux select-pane -t 1
        tmux split-window -v
        tmux select-pane -t 0
        tmux attach-session -d
    else
        tmux attach-session -d -t rek
    fi
}
