# Lines configured by zsh-newuser-install

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/efha/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

alias doco="docker-compose"
alias docoe="doco exec"
#alias vim="nvim"
alias t="task"
alias ta="t add"
alias tpenow="t project:work.erekomtek.now"
alias tpenext="t project:work.erekomtek.next"
alias run="./run"
alias pu="run phpunit"
alias art="run artisan"

export ANDROID_HOME=~/Android/Sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

export GOPATH=$HOME/Projects/Golang
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

export EDITOR=nvim

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -Uz promptinit
promptinit
prompt pure 

#virtualenvwrapper settings
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects/Python
source /usr/local/bin/virtualenvwrapper.sh
