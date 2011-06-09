alias startmysql="/usr/local/Cellar/mysql/5.1.48/share/mysql/mysql.server start"
alias stopmysql="/usr/local/Cellar/mysql/5.1.48/share/mysql/mysql.server stop"

alias startpg="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stoppg="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# changing directory to code project
complete -C ~/.bash/completion_scripts/project_completion -o default c
function c { cd ~/code/$1/$2; }

# Projects
alias cdc='cd ~/code/churchtie/churchtie.com'
alias cdp='cd ~/code/prayerthread/prayerthread.org'
alias cer='cd ~/code/railsdog/cer_portal'
alias cdb='cd ~/code/bellstrike/bellstrike.com'
alias cdh='cd ~/code/bsi/myhourbank.com'

# Aliases
alias ls='ls -hF $LS_OPTIONS'
alias ll='ls -lah $LS_OPTIONS'
alias l='ls -lh $LS_OPTIONS'
alias df='df -h'
alias du='du -h -d 1'
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'

alias reload="source ~/.bash_profile"

# Rails
alias ss='script/server'
alias sc='script/console'
alias sg='script/generate'
alias sd='script/destroy'
alias a='autotest -rails'
alias tlog='tail -f log/development.log'
alias mig='rake db:migrate db:test:clone'
alias rst='touch tmp/restart.txt'

# Rails 3
alias r='rails'

# Bunder - http://ryan.mcgeary.org/2011/02/09/vendor-everything-still-applies/
alias b="bundle"
alias bi="b install --path vendor"
alias bu="b update"
alias be="b exec"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"

# Git
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gs='git status'
alias gd='git diff'
alias gp='git push'
alias gl='git pull --rebase'
alias ga='git add'
alias gsb='git show-branch'
alias gb='git branch'
alias gg='git log'
alias ggs='git log --stat'
alias ggt='git log --graph --oneline --all'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"

alias gpo='git push origin'
alias gph='git push heroku'
alias gpu='git push unfuddle'