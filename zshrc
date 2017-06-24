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

if [ -d ~/.oh-my-zsh ]; then
  source ~/.zshrc-from-oh-my-zsh
else
  echo "Can't find oh-my-zsh!  You should install it"
fi

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


PATH=$HOME/.rbenv/shims:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin # Add Heroku's postgres app


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


export NODE_ENV="development"

# ASDF version manager - see https://github.com/asdf-vm/asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
