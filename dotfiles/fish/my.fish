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

# Disable double env on prompt when using spacefish
set VIRTUAL_ENV_DISABLE_PROMPT true

# pyenv
set PYENV_ROOT $HOME/.pyenv
set PATH $PYENV_ROOT/bin $PATH
pyenv init - | source


status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

# Virtualfish
# eval (python -m virtualfish)

# Aliases

# alias bd='. bd -si'
alias v nvim
alias n 'nnn -l'
alias r 'ranger'

# Abbr

## app shortcut
abbr -a -g do docker
abbr -a -g doe docker exec
abbr -a -g dor docker run
abbr -a -g doi docker images
abbr -a -g doco docker-compose
abbr -a -g doce docker-compose exec
abbr -a -g pe pipenv
abbr -a -g per pipenv run
abbr -a -g pes pipenv shell
abbr -a -g pep pipenv run python
abbr -a -g peda pipenv run django-admin
abbr -a -g pem pipenv run python manage.py
abbr -a -g pemr pipenv run python manage.py runserver
abbr -a -g pemm pipenv run python manage.py makemigrations
abbr -a -g pemM pipenv run python manage.py migrate
abbr -a -g pemt pipenv run python manage.py test

## change directory
abbr -a -g pro cd $PROJECTS
abbr -a -g dot cd $DOTFILES
abbr -a -g scr cd $PROJECTS/scripts
abbr -a -g tra cd $PROJECTS/efha.training
abbr -a -g rus cd $PROJECTS/efha.training/rust
abbr -a -g dar cd $PROJECTS/efha.training/dart
abbr -a -g djv cd $PROJECTS/efha.training/python/DjangoCore/djviews
abbr -a -g sir cd $PROJECTS/KementerianPUPR/sirepersda

## edit
abbr -a -g vmyfish v $DOTFILES/fish/my.fish
abbr -a -g reload omf reload

#
abbr -a -g rek cd $PROJECTS/KementerianPUPR/old.erekomtek.web.dev/src

## php
abbr -a -g phpunit ./vendor/bin/phpunit

## sqlite
abbr -a -g sqlite rlwrap -a -c -i sqlite3

## git
abbr -a -g g git
abbr -a -g gst git status
abbr -a -g gad git add
abbr -a -g gcm git commit -m
abbr -a -g gpo git push origin

# Spacefish
set SPACEFISH_GIT_STATUS_DELETED X

# Functions
function xbase
    set name base
    tmux has-session -t $name 2> /dev/null
    if test $status -gt 0
        tmux new-session -d -s $name 
        tmux attach-session -d
    else
        tmux attach-session -d -t $name 
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

        tmux rename-window 'vim'
        tmux send-keys 'sir; pes' Enter

        tmux new-window
        tmux rename-window 'services'
        tmux send-keys 'sir; cd src; pemr' Enter

        tmux previous-window

        tmux attach-session -d
    else
        tmux attach-session -d -t $name 
    end
end

function xsix
    tmux kill-session -t si
end

# function fish_prompt
#   set -l blue (set_color blue)
#   set -l green (set_color green)
#   set -l red (set_color red)
#   set -l normal (set_color normal)
#
#   set -l arrow $red"λ"
#   set -l cwd $blue(basename (prompt_pwd))
#   # set -l cwd $blue(pwd | sed "s:^$HOME:~:")
#
#   echo -e -n -s $green(hostname|cut -d . -f 1):$cwd $normal ' ' $arrow ' '
# end
