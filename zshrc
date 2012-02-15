# Path includes ~/bin and macports dirs
export PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PROMPT='%~%# '

export EDITOR='subl -w'

# aliases for coding
alias be='bundle exec'
alias ber='bundle exec rake'

alias mysql_start='sudo /opt/local/etc/LaunchDaemons/org.macports.mysql5/mysql5.wrapper start';
alias mysql_stop='sudo /opt/local/etc/LaunchDaemons/org.macports.mysql5/mysql5.wrapper stop';
alias mysql_restart='sudo /opt/local/etc/LaunchDaemons/org.macports.mysql5/mysql5.wrapper restart';