#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh

alias ls="ls --color=auto"

if [[ "$TERM" = "screen" ]];then
    TERM="$TERM-256color"
fi

alias ..="cd .."
alias la="ls -la"
alias gita="git add -A"
alias gits="git status"
alias gitd="git diff --color"
alias gitl="git log --stat"
alias gitc="git commit -v"
alias fG="find .|egrep"
alias G="egrep"
alias sz="source ~/.bashrc"
psa() {
    ps aux |egrep $* 
}

export CATALINA_HOME=$HOME/build/apache-tomcat-7.0.64/

export PATH="$HOME/bin:$PATH"

# added by travis gem
[ -f /home/kb/.travis/travis.sh ] && source /home/kb/.travis/travis.sh

# fzf fuzzy
for localrc in $HOME/.fzf.bash ;do
    [[ -e "$localrc" ]] && . "$localrc"
done
