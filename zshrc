# Path includes ~/bin and macports dirs
export PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH

source ~/dotfiles/zsh-git-prompt/zshrc.sh

#export PROMPT='%~%# '
export PROMPT='%B%~%b$(git_super_status) %# '

export EDITOR='subl -w'

# aliases for coding
alias be='bundle exec'
alias ber='bundle exec rake'

alias mysql_start='sudo /opt/local/etc/LaunchDaemons/org.macports.mysql5/mysql5.wrapper start';
alias mysql_stop='sudo /opt/local/etc/LaunchDaemons/org.macports.mysql5/mysql5.wrapper stop';
alias mysql_restart='sudo /opt/local/etc/LaunchDaemons/org.macports.mysql5/mysql5.wrapper restart';

alias ys='yard server -g'

# Heroku functions
hprod () { heroku $* --remote production; }
hqa () { heroku $* --remote qa; }
hstaging () { heroku $* --remote staging; }
hintegration () { heroku $* --remote integration; }
htabs() { heroku $* --remote tabs; }
