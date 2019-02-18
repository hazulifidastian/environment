#!/usr/bin/fish
# Env Vars

set PROJECTS $HOME/Projects
set DOTFILES $PROJECTS/environment/dotfiles 

# Virtualenvwrapper 

# set WORKON_HOME $HOME/.virtualenvs
# set export PROJECT_HOME $HOME/Projects/Python
# . /usr/local/bin/virtualenvwrapper.sh

# java
set JAVA_HOME /snap/android-studio/69/android-studio/jre/bin
set ANDROID_SDK $HOME/Android/Sdk
set ANDROID_SDK_TOOLS $ANDROID_SDK/tools/bin
set ANDROID_SDK_PLATFORM_TOOLS $ANDROID_SDK/platform-tools
set RUST $HOME/.cargo/bin
set PATH $JAVA_HOME $ANDROID_SDK_PLATFORM_TOOLS $ANDROID_SDK_TOOLS $RUST $PATH

# flutter
set FLUTTER_HOME $HOME/Applications/flutter/bin
set PATH $FLUTTER_HOME $PATH

# dart
set DART_HOME /usr/lib/dart
set DART_PUB_CACHE $HOME/.pub-cache/bin
set PATH $DART_HOME/bin $DART_PUB_CACHE $PATH

# pyenv
set PYENV_ROOT $HOME/.pyenv
set PATH $PYENV_ROOT/bin $PATH
pyenv init - | source

# Virtualfish
eval (python -m virtualfish)

# Aliases

# alias bd='. bd -si'

## app shortcut
alias e='nvim'
alias do='docker'
alias doe='dock exec'
alias dor='dock run'
alias doi='dock images'
alias doco='docker-compose'
alias doce='doco exec'
alias pe='pipenv'
alias per='pe run'
alias pes='pe shell'
alias pep='per python'
alias peda='per django-admin'
alias pem='pep manage.py'
alias xl='tmux ls'

## change directory
alias pro='cd $PROJECTS' 
alias dot='cd $DOTFILES' 
alias scr='cd $PROJECTS/scripts' 
alias tra='cd $PROJECTS/efha.training' 
alias rus='cd $PROJECTS/efha.training/rust' 
alias djv='tra; cd python/DjangoCore/djviews' 
alias sir='pro; cd KementerianPUPR/sirepersda' 

## edit
alias einitnvim='e $DOTFILES/nvim/init.vim'
alias emyfish='e $DOTFILES/fish/my.fish'
alias reload='omf reload'

alias rek='cd $PROJECTS/KementerianPUPR/old.erekomtek.web.dev/src'

## php
alias phpunit='./vendor/bin/phpunit'

## sqlite
alias sqlite="rlwrap -a -c -i sqlite3"

# Functions
function xbase
    if not set -q TMUX
        set -g TMUX tmux new-session -d -s base
        
        tmux has-session -t base 2> /dev/null
        if test $status -gt 0
            eval $TMUX
        end

        tmux attach-session -d -t base
    end
end
function xbasex
    tmux kill-session -t base 
end

function xrek
    cd $PROJECTS/KementerianPUPR/old.erekomtek.web.dev/src

    tmux has-session -t rek 2> /dev/null
    if test $status -gt 0
        tmux new-session -d -s rek
        tmux split-window -h
        tmux select-pane -t 1
        tmux split-window -v
        tmux select-pane -t 0
        tmux attach-session -d
    else
        tmux attach-session -d -t rek
    end
end
function xrex
    tmux kill-session -t rek 
end

function xdj
    set name dj
    tmux has-session -t $name 2> /dev/null
    if test $status -gt 0
        tmux new-session -d -s $name 
        tmux split-window -v
        tmux select-pane -t 0
        tmux new-window
        tmux previous-window
        tmux attach-session -d
    else
        tmux attach-session -d -t $name 
    end
end
function xdjx
    tmux kill-session -t dj
end

function xsi
    set name si
    tmux has-session -t $name 2> /dev/null
    if test $status -gt 0
        tmux new-session -d -s $name 
        tmux split-window -v
        tmux send-keys 'sir' Enter
        tmux send-keys 'cd src' Enter
        tmux select-pane -t 0
        tmux resize-pane -D 10
        tmux send-keys 'sir' Enter
        tmux send-keys 'pes' Enter
        tmux new-window
        tmux send-keys 'sir' Enter
        tmux previous-window
        tmux attach-session -d
    else
        tmux attach-session -d -t $name 
    end
end

function xsix
    tmux kill-session -t si
end
