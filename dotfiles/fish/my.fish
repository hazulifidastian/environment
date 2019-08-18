#!/usr/bin/fish
# Env Vars

set EDITOR nvim

set PROJECTS $HOME/Projects
set DOTFILES $PROJECTS/environment/dotfiles 
set NODE_PATH /usr/local/lib 

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

# FZF
# set -g FZF_DEFAULT_COMMAND "fd --type f --hidden --follow --exclude .git"
# set -g FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND

status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

# Virtualfish
# eval (python -m virtualfish)

# Aliases

# alias bd='. bd -si'
alias vim nvim
alias rr 'ranger'

# Abbr

## app shortcut
abbr -a -g c clear
abbr -a -g l ll
abbr -a -g do docker
abbr -a -g doe docker exec
abbr -a -g dor docker run
abbr -a -g doi docker images
abbr -a -g doco docker-compose
abbr -a -g doce docker-compose exec
abbr -a -g dose docker service
abbr -a -g dosel docker service logs
abbr -a -g doses docker service scale
abbr -a -g dost docker stack
abbr -a -g dosts docker stack services
abbr -a -g dostp docker stack ps
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
abbr -a -g m. ./manage.py
abbr -a -g ms ./manage.py shell -i ipython
abbr -a -g msp ./manage.py shell_plus --ipython
abbr -a -g mr ./manage.py runserver
abbr -a -g mrp ./manage.py runserver_plus
abbr -a -g mm ./manage.py makemigrations
abbr -a -g mM ./manage.py migrate
abbr -a -g mt ./manage.py test
abbr -a -g msa ./manage.py startapp
abbr -a -g :qa exit

## change directory
abbr -a -g pro cd $PROJECTS
abbr -a -g dot cd $DOTFILES
abbr -a -g scr cd $PROJECTS/scripts
abbr -a -g tra cd $PROJECTS/efha.training
abbr -a -g rus cd $PROJECTS/efha.training/rust
abbr -a -g dar cd $PROJECTS/efha.training/dart
abbr -a -g djv cd $PROJECTS/efha.training/python/DjangoCore/djviews
abbr -a -g sir cd $PROJECTS/KementerianPUPR/sirepersda
abbr -a -g app cd $HOME/Applications

## edit
abbr -a -g vmyfish vim $DOTFILES/fish/my.fish
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

## exa
abbr -a -g ls exa
abbr -a -g ll exa -l
abbr -a -g la exa -la
abbr -a -g lT exa -lT

## internet
abbr -a -g ly lynx
abbr -a -g goo /usr/bin/env BROWSER=lynx googler -n 5

## system
abbr -a -g xo xdg-open

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

function xtra
    set name extra
    tmux has-session -t $name 2> /dev/null
    if test $status -gt 0
        tmux new-session -d -s $name 
        tmux attach-session -d
    else
        tmux attach-session -d -t $name 
    end
end
function xtrax
    tmux kill-session -t extra 
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
    cd $PROJECTS/KementerianPUPR/sirepersda
    tmux has-session -t $name 2> /dev/null
    if test $status -gt 0
        tmux new-session -d -s $name 

        tmux rename-window 'vim'
        tmux send-keys 'sir; pes' Enter

        tmux new-window
        tmux rename-window 'services'
        tmux send-keys 'sir; pes' Enter

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
