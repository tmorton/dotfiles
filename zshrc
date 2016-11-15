# Path includes ~/bin and macports dirs
export PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH

# For homebrew, set /usr/local/bin before /usr/bin
export PATH="/usr/local/bin:$PATH"

source ~/dotfiles/zsh-git-prompt/zshrc.sh

#export PROMPT='%~%# '
export PROMPT='%B%~%b$(git_super_status) %# '

export EDITOR='subl -w'

# aliases for coding
alias be='bundle exec'
alias ber='bundle exec rake'

alias ys='yard server -g'

alias g='git'

alias plan='atom ~/Dropbox/planning'

# Heroku functions
hprod () { heroku $* --remote heroku-prod; }
hstag () { heroku $* --remote heroku-staging; }

[ -s "/Users/tim/.nvm/nvm.sh" ] && . "/Users/tim/.nvm/nvm.sh" # This loads nvm

# Exenv (elixir version manager)
eval "$(exenv init -)"

PATH=$HOME/.rbenv/shims:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin # Add Heroku's postgres app


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


export NODE_ENV="development"

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

eval "$(direnv hook zsh)"
