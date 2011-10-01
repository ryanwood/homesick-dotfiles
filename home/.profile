alias startmysql="/usr/local/Cellar/mysql/5.1.48/share/mysql/mysql.server start"
alias stopmysql="/usr/local/Cellar/mysql/5.1.48/share/mysql/mysql.server stop"

alias startpg="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stoppg="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# Heroku Switching, http://gist.github.com/358585
function hset() {
  ln -nfs ~/.heroku/credentials.$1 ~/.heroku/credentials;
}
function hget() {
  readlink ~/.heroku/credentials | awk -F . '{print $NF}';
}

# MacPorts Installer addition on 2008-12-16_at_22:34:50: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/mongodb/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# MacPorts Installer addition on 2008-12-16_at_22:34:50: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.

# changing directory to code project
function c { cd ~/code/$1; }

# Shell Prompt
source ~/.git-completion
export PS1='\w$(__git_ps1 "[%s]")% '

# http://www.themomorohoax.com/2009/03/24/bash-aliases-for-rails-cucumber-developers
# Nav
alias l='ls -CF'

## Dev
# Projects
alias cdw='cd ~/code/weddzilla/weddzilla.com'

# Rails
alias ss='script/server --debugger'
alias sc='script/console --debugger'
alias sg='script/generate'
alias sd='script/destroy'

# Git
alias gc='git commit -m'
alias gca='git commit -a -m'
alias gco='git checkout'
alias gs='git status'
alias gpo='git push origin master'
alias gph='git push heroku master'
alias gpu='git push unfuddle master'
alias gp='git pull'
alias ga='git add'
alias gsb='git show-branch'
alias gb='git branch'
alias gl='git log'
alias gls='git log --stat'
alias gd='git diff'
alias gt='git log --graph --oneline --all'

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# http://afreshcup.com/home/2009/12/7/shut-up-postgres.html
export PGOPTIONS='-c client_min_messages=WARNING'