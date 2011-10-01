export PATH="/usr/local/bin:/usr/local/sbin:$HOME/bin:$PATH"

source $HOME/.git-completion
source $HOME/.git-flow-completion
source $HOME/.bash_aliases

export GIT_PS1_SHOWDIRTYSTATE=true
export EDITOR='mate -w'

export CLICOLOR=1
# export LSCOLORS=ExGxcxdxCxegedabagacad
export LSCOLORS=gxfxcxdxbxegedabagacad

PS1='\[\033[0;32m\]\h\033[00m\]\[\033[0;31m\]$(__my_rvm_ruby_version) \[\033[0;36m\]\w\[\033[00m\]\e[0;33m\]$(__git_ps1 " (%s)")\033[00m\]: '

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

function __my_rvm_ruby_version {
  local rvm_prompt=$(~/.rvm/bin/rvm-prompt v p g)
  [ "$rvm_prompt" != "" ] && echo " $rvm_prompt"
}

# Get and set the current heroku account
function hset() {
  ln -nfs ~/.heroku/credentials.$1 ~/.heroku/credentials
}

function hget() {
  readlink ~/.heroku/credentials | awk -F . '{print $NF}'
}

# # For working with Intersect
# export CATALINA_HOME=/usr/local/apache-tomcat-6.0.29
# 
# # Apache Maven
# export M2_HOME=/usr/local/apache-maven-2.2.1
# export M2=$M2_HOME/bin
# export PATH=$M2:$PATH
