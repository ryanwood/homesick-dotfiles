alias reload="source ~/.zshrc"
alias startmysql="/usr/local/Cellar/mysql/5.1.48/share/mysql/mysql.server start"
alias stopmysql="/usr/local/Cellar/mysql/5.1.48/share/mysql/mysql.server stop"

alias startpg="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stoppg="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# Projects
alias cdc='cd ~/code/churchtie/churchtie.com'
alias cdp='cd ~/code/prayerthread/prayerthread.org'
alias cer='cd ~/code/railsdog/cer_portal'
alias cdb='cd ~/code/bellstrike/bellstrike.com'
alias cdh='cd ~/code/bsi/myhourbank.com'

# Heroku deployment
alias rsd='git push; rake staging deploy'

# Git Overrides
alias gs='git status'
alias gl='git pull --rebase'
alias ga='git add -u'
alias gsb='git show-branch'
alias gfa="git fetch --all"
alias gpo='git push origin'
alias gd='git diff'

alias mig='rake db:migrate db:test:clone'
alias rst='touch tmp/restart.txt'
