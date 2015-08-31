# Path includes ~/bin and macports dirs
export PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH

source ~/dotfiles/zsh-git-prompt/zshrc.sh

#export PROMPT='%~%# '
export PROMPT='%B%~%b$(git_super_status) %# '

export EDITOR='subl -w'

# aliases for coding
alias be='bundle exec'
alias ber='bundle exec rake'

alias ys='yard server -g'

alias g='git'


# Heroku functions
hprod () { heroku $* --remote production; }
hqa () { heroku $* --remote qa; }
htabsqa() { heroku $* --remote tabs-qa; }
hstaging () { heroku $* --remote staging-alpha; }
hintegration () { heroku $* --remote integration; }
htabs() { heroku $* --remote tabs; }

[ -s "/Users/tim/.nvm/nvm.sh" ] && . "/Users/tim/.nvm/nvm.sh" # This loads nvm

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
