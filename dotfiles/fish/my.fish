# ** Env Vars ** #

set PROJECTS $HOME/Projects
set DOTFILES $PROJECTS/environment/dotfiles 

# ** Virtualenvwrapper ** # 

set WORKON_HOME $HOME/.virtualenvs
set export PROJECT_HOME $HOME/Projects/Python
# . /usr/local/bin/virtualenvwrapper.sh

# java
set JAVA_HOME /snap/android-studio/69/android-studio/jre/bin
set ANDROID_SDK $HOME/Android/Sdk
set ANDROID_SDK_TOOLS $ANDROID_SDK/tools/bin
set ANDROID_SDK_PLATFORM_TOOLS $ANDROID_SDK/platform-tools
set PATH $JAVA_HOME $ANDROID_SDK_PLATFORM_TOOLS $ANDROID_SDK_TOOLS $PATH

# flutter
set FLUTTER_HOME $HOME/Applications/flutter/bin
set PATH $FLUTTER_HOME $PATH

# ** Virtualfish ** #
eval (python -m virtualfish)

# ** Aliases ** #

# alias bd='. bd -si'

# app shortcut
alias e='nvim'
alias dock='docker'
alias docke='dock exec'
alias dockr='dock run'
alias docki='dock images'
alias doco='docker-compose'
alias doce='doco exec'

# change directory
alias projects='cd $PROJECTS' 
alias dotfiles='cd $DOTFILES' 
alias scripts='cd $PROJECTS/scripts' 

# edit
alias einitnvim='e $DOTFILES/nvim/init.vim'
alias emyfish='e $DOTFILES/fish/my.fish'

# alias oldrek='cd $PROJECTS/KementerianPUPR/old.erekomtek.web.dev/src'

# php
alias phpunit='./vendor/bin/phpunit'

function base
    if not set -q TMUX
        set -g TMUX tmux new-session -d -s base
        
        tmux has-session -t base 2> /dev/null
        if test $status -gt 0
            eval $TMUX
        end

        tmux attach-session -d -t base
    end
end

function oldrek
    cd $PROJECTS/KementerianPUPR/old.erekomtek.web.dev/src

    tmux has-session -t oldrek 2> /dev/null
    if test $status -gt 0
        tmux new-session -d -s oldrek
        tmux split-window -h
        tmux select-pane -t 1
        tmux split-window -v
        tmux select-pane -t 0
        tmux attach-session -d
    else
        tmux attach-session -d -t oldrek
    end
end
