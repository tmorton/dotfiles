# The following lines were added by compinstall
zstyle :compinstall filename '/Users/tim/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

source ~/.zshrc-from-oh-my-zsh

fpath=(/usr/local/share/zsh-completions $fpath)

# Path includes ~/bin and macports dirs
export PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH

# For homebrew, set /usr/local/bin before /usr/bin
export PATH="/usr/local/bin:$PATH"

export EDITOR='atom'

# RUBY
alias be='bundle exec'
alias ber='bundle exec rake'
alias ys='yard server -g'

alias g='git'

# Heroku functions
hprod () { heroku $* --remote heroku-prod; }
hstag () { heroku $* --remote heroku-staging; }

[ -s "/Users/tim/.nvm/nvm.sh" ] && . "/Users/tim/.nvm/nvm.sh" # This loads nvm

PATH=$HOME/.rbenv/shims:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin # Add Heroku's postgres app


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


export NODE_ENV="development"
