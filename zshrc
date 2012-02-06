# Path includes ~/bin and macports dirs
export PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PROMPT='%~%# '

# aliases for coding
alias be='bundle exec'
alias ber='bundle exec rake'
