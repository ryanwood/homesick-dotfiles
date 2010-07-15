alias startmysql="/usr/local/Cellar/mysql/5.1.48/share/mysql/mysql.server start"
alias stopmysql="/usr/local/Cellar/mysql/5.1.48/share/mysql/mysql.server stop"

alias startpg="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stoppg="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# changing directory to code project
function c { cd ~/code/$1; }

# Projects
alias cdw='cd ~/code/weddzilla/weddzilla.com'

# Rails
alias ss='script/server'
alias sc='script/console'
alias sg='script/generate'
alias sd='script/destroy'
alias a='autotest -rails'
alias tlog='tail -n 100 log/development.log'
alias migrate='rake db:migrate db:test:clone'
alias rst='touch tmp/restart.txt'

# Git
alias gc='git commit -m'
alias gca='git commit -a -m'
alias gco='git checkout'
alias gs='git status'
alias gd='git diff'
alias gpo='git push origin master'
alias gph='git push heroku master'
alias gpu='git push unfuddle master'
alias gp='git pull'
alias ga='git add'
alias gsb='git show-branch'
alias gb='git branch'
alias gl='git log'
alias gls='git log --stat'
alias gt='git log --graph --oneline --all'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"